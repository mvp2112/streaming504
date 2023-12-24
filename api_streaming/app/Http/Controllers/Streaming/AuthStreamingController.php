<?php

namespace App\Http\Controllers\Streaming;

use App\Http\Controllers\Controller;
use App\Models\Subcription\Subcription;
use App\Models\User;
use Illuminate\Http\Request;

class AuthStreamingController extends Controller
{
    //
    function valid_register(Request $request)
    {

        $user = User::where("email", $request->email)->first();

        if ($user) {
            return response()->json([
                "message" => 403,
                "message_text" => "El usuario ya existe",
            ]);
        }

        return response()->json([
            "message" => 200,
            "message_text" => "El usuario está disponible",
        ]);
    }

    function register(Request $request)
    {

        if ($request->new_password) {
            $request->request->add(["password" => bcrypt($request->new_password)]);
        }

        $user = User::create($request->all());

        date_default_timezone_set("America/Tegucigalpa");
        $today = today();
        $end_date = now()->addMonth();
        Subcription::create([
            "user_id" => $user->id,
            "plan_paypal_id" => $request->plan_paypal_id,
            "paypal_plan_id" => $request->paypal_plan_id,
            "type_plan" => $request->type_plan,
            "start_date" => $today,
            "end_date" =>  $end_date,
            "price" => $request->price,
        ]);

        return response()->json([
            "message" => 200,
        ]);
    }
}
