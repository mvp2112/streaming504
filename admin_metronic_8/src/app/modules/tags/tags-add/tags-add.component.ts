import { Component, EventEmitter, OnInit, Output } from '@angular/core';
import { NgbActiveModal } from '@ng-bootstrap/ng-bootstrap';
import { Toaster } from 'ngx-toast-notifications';
import { TagsService } from '../service/tags.service';

@Component({
  selector: 'app-tags-add',
  templateUrl: './tags-add.component.html',
  styleUrls: ['./tags-add.component.scss']
})
export class TagsAddComponent implements OnInit {

  @Output() TagsC: EventEmitter<any> = new EventEmitter();

  title: string = ''
  type: string = '1'

  constructor(
    public modal: NgbActiveModal,
    public toaster: Toaster,
    public tagsService: TagsService,
  ) { }

  ngOnInit(): void {
  }

  close(){
    this.modal.close();
  }

  save(){

    if(!this.title){
      this.toaster.open({text: "Necesitas ingresar todos los campos", caption: 'Validación', type: 'danger'});
      return;
    }
    let data = {
      title: this.title,
      type: this.type,
      state: 1
    }
    this.tagsService.registerTag(data).subscribe((resp:any) => {
      console.log(resp);
      if(resp.message == 403){
        this.toaster.open({text: resp.message_text, caption: 'Validación', type: 'danger'});
      }else{
        this.TagsC.emit(resp.tag);
        this.toaster.open({text: "El tag se registró correctamente", caption: 'Validación', type: 'primary'});
        this.modal.close();
      }
    })
  }

}
