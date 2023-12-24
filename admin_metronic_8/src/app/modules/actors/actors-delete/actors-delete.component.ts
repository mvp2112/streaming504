import { Component, EventEmitter, Input, OnInit, Output } from '@angular/core';
import { NgbActiveModal } from '@ng-bootstrap/ng-bootstrap';
import { Toaster } from 'ngx-toast-notifications';
import { ActorsService } from '../service/actors.service';

@Component({
  selector: 'app-actors-delete',
  templateUrl: './actors-delete.component.html',
  styleUrls: ['./actors-delete.component.scss']
})
export class ActorsDeleteComponent implements OnInit {

  @Input() ACTOR:any;
  @Output() ActorD: EventEmitter<any> = new EventEmitter();

  constructor(
    public modal: NgbActiveModal,
    public toaster: Toaster,
    public actorsService: ActorsService,
  ) { }

  ngOnInit(): void {
  }

  delete(){
    this.actorsService.deleteActor(this.ACTOR.id).subscribe((resp:any) => {
      this.ActorD.emit("");
      this.toaster.open({text: "El actor se eliminó correctamente", type: 'warning'});
      this.close();
    })
  }

  close(){
    this.modal.close();
  }

}
