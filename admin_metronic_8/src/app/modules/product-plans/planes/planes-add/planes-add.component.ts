import { Component, EventEmitter, Input, OnInit, Output } from '@angular/core';
import { PlanesPaypalService } from '../../service/planes-paypal.service';
import { NgbActiveModal } from '@ng-bootstrap/ng-bootstrap';
import { Toaster } from 'ngx-toast-notifications';

@Component({
  selector: 'app-planes-add',
  templateUrl: './planes-add.component.html',
  styleUrls: ['./planes-add.component.scss']
})
export class PlanesAddComponent implements OnInit {

  @Input() PRODUCTS:any = [];
  @Output() PlanC: EventEmitter<any> = new EventEmitter();

  name: string = '';
  description: string = '';
  precio_mensual: number = 0;
  precio_anual: number = 0;
  month_free: number = 0;
  product_paypal_id:any = 0;
  constructor(
    public modal: NgbActiveModal,
    public toaster: Toaster,
    public planePaypalService: PlanesPaypalService,
  ) { }

  ngOnInit(): void {
  }

  close() {
    this.modal.close();
  }

  save(){
    if(!this.name || !this.description || !this.product_paypal_id || !this.precio_mensual || !this.precio_anual) {
      this.toaster.open({text: "Necesitas completar todos los campos", caption: "Validación",type: 'danger'});
      return;
    }

    let id_product_paypal = this.PRODUCTS.find((item:any) => item.id == this.product_paypal_id).id_product_paypal
    let data = {
      name: this.name,
      description: this.description,
      precio_mensual: this.precio_mensual,
      precio_anual: this.precio_anual,
      month_free: this.month_free,
      product_paypal_id: this.product_paypal_id,
      id_product_paypal: id_product_paypal,
    }

    this.planePaypalService.registerPlane(data).subscribe((resp:any) => {
      console.log(resp);
      this.PlanC.emit(resp.plan);
      this.toaster.open({text: "El plan se creó exitosamente", caption: "SUCCESS",type:'primary'});
      this.modal.close();
    })
  }

}
