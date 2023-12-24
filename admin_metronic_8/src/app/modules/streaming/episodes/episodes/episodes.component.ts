import { Component, OnInit } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { NgbModal } from '@ng-bootstrap/ng-bootstrap';
import { Toaster } from 'ngx-toast-notifications';
import { StreamingEpisodesService } from '../../service/streaming-episodes.service';
import { EpisodesDeleteComponent } from '../episodes-delete/episodes-delete.component';
import { EpisodesEditComponent } from '../episodes-edit/episodes-edit.component';

@Component({
  selector: 'app-episodes',
  templateUrl: './episodes.component.html',
  styleUrls: ['./episodes.component.scss']
})
export class EpisodesComponent implements OnInit {

  EPISODES:any = [];
  title:any = null;
  description:any = null;

  IMAGEN_FILE: any;
  IMAGEN_PREVISUALIZA: any;

  isLoading:any;

  streaming_season_id:any;
  constructor(
    public streamingEpisodes: StreamingEpisodesService,
    public activatedRouter: ActivatedRoute,
    public toaster: Toaster,
    public modalService: NgbModal,
    public router: Router,
  ) { }

  ngOnInit(): void {
    this.isLoading = this.streamingEpisodes.isLoading$;
    this.activatedRouter.params.subscribe((resp:any) => {
      this.streaming_season_id = resp.id;
    })
    this.listEpisodes();
  }

  listEpisodes(){
    this.streamingEpisodes.listEpisodes(this.streaming_season_id).subscribe((resp:any) => {
      console.log(resp);
      this.EPISODES = resp.episodes;
    })
  }

  save(){
    if(!this.IMAGEN_FILE || !this.title || !this.description){
      this.toaster.open({text: 'Necesitas ingresar todos los campos'});
      return;
    }
    let formData = new FormData();
    formData.append("img",this.IMAGEN_FILE);
    formData.append("title",this.title);
    formData.append("description",this.description);
    formData.append("streaming_season_id",this.streaming_season_id);
    this.streamingEpisodes.registerEpisode(formData).subscribe((resp:any) => {
      console.log(resp);
      if(resp.message == 403){
        this.toaster.open({text: resp.message_text,caption: "MENSAJE DE VALIDACIÓN", type: 'danger'});
      }else{
        this.toaster.open({text: "El episodio se registró correctamente", type: 'primary'});
        this.EPISODES.push(resp.episode);
        this.IMAGEN_FILE = null;
        this.title = null;
        this.description = null;
        this.IMAGEN_PREVISUALIZA = null;
      }


    });
  }

  processFile($event: any) {
    if($event.target.files[0].type.indexOf("image") < 0 ){
      this.toaster.open({text: "El archivo no es una imagen", caption: "Mensage de validación", type: 'danger'});
      return;
    }
    //
    this.IMAGEN_FILE = $event.target.files[0];
    let reader = new FileReader();
    reader.readAsDataURL(this.IMAGEN_FILE);
    reader.onloadend = () => this.IMAGEN_PREVISUALIZA = reader.result;
    this.streamingEpisodes.isLoadingSubject.next(true);
    setTimeout(() => {
      this.streamingEpisodes.isLoadingSubject.next(false);
    },50);
  }

  editEpisode(EPISODE:any){
    const modalref = this.modalService.open(EpisodesEditComponent,{centered:true, size: 'md'});
    modalref.componentInstance.EPISODE = EPISODE;

    //
    modalref.componentInstance.EpisodeE.subscribe((editEpisode:any) => {
      let INDEX = this.EPISODES.findIndex((item:any) => item.id == editEpisode.id);
      if(INDEX != -1){
        this.EPISODES[INDEX] = editEpisode;
      }
    })
  }
  deleteEpisode(EPISODE:any){
    const modalref = this.modalService.open(EpisodesDeleteComponent,{centered:true, size: 'md'});
    modalref.componentInstance.EPISODE = EPISODE;

    //
    modalref.componentInstance.EpisodeD.subscribe((editEpisode:any) => {
      let INDEX = this.EPISODES.findIndex((item:any) => item.id == EPISODE.id);
      if(INDEX != -1){
        this.EPISODES.splice(INDEX,1);
      }
    })
  }

}
