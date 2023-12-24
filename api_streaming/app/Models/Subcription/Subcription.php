<?php

namespace App\Models\Subcription;

use App\Models\Plan\PlanPaypal;
use App\Models\User;
use Carbon\Carbon;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Subcription extends Model
{
    use HasFactory;
    use SoftDeletes;
    protected $fillable = [
        "user_id",
        "plan_paypal_id",
        "paypal_plan_id",
        "type_plan",
        "start_date",
        "end_date",
        "price",
        "renewal_cancelled",
        "renewal_cancelled_at"
    ];

    function setCreatedAtAttibute($value) {
        date_default_timezone_set("America/Tegucigalpa");
        $this->attributes["created_at"]= Carbon::now();
    }

    function setUpdatedAtAttibute($value) {
        date_default_timezone_set("America/Tegucigalpa");
        $this->attributes["updated_at"]= Carbon::now();
    }

    function plan_paypal(){
        return $this->belongsTo(PlanPaypal::class, "paypal_plan_id");
    }

    function user(){
        return $this->belongsTo(User::class, "user_id");
    }
}
