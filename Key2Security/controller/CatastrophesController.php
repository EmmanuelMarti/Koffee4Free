<?php
class CatastrophesController extends Controller{


	function index(){

		$perPage = 1;
		$this->loadModel('Catastrophe');
		$conditions = array('type' => 'catastrophe', 'online' => 1);
		$d['catastrophes'] = $this->Catastrophe->find(array(
				'conditions' => $conditions,
				'limit' => ($perPage*($this->request->page-1)).', '.$perPage
			));
		$d['total'] = $this->Catastrophe->findCount($conditions);
		$d['page'] = ceil($d['total'] / $perPage);
		$this->set($d);
	}

	function view($id, $slug){

		$this->loadModel('Catastrophe');
		$d['catastrophe'] = $this->Catastrophe->findFirst(array(
			'fields' 		=> 'id,slug,content,name',
			'conditions' 	=> array('type' => 'catastrophe', 'online' => 1, 'id' => $id)
			));
		if(empty($d['catastrophe'])){
			$this->e404('Page introuvable');
		}
		if($slug != $d['catastrophe']->slug){
			$this->redirect("catastrophes/view/id:$id/slug:".$d['catastrophe']->slug,301);
		}
		$this->set($d);
	}

	/**
	* ADMIN
	**/
	function admin_index(){

		$perPage = 10; 
		$this->loadModel('Catastrophe');
		$conditions = array('type' => 'catastrophe');
		$d['catastrophes'] = $this->Catastrophe->find(array(
				'fields' 		=> 'id,name,online', 
				'conditions' 	=> $conditions,
				'limit' 		=> ($perPage*($this->request->page-1)).', '.$perPage
			));
		$d['total'] = $this->Catastrophe->findCount($conditions);
		$d['page'] = ceil($d['total'] / $perPage);
		$this->set($d);

	}


	/**
	* Permet d'éditer un article
	**/
	function admin_edit($id = null){

		$this->loadModel('Catastrophe');
		if($id === null) {
			$catastrophe = $this->Catastrophe->findFirst(array(
				'conditions' => array('online' => -1)
			));
			if(!empty($catastrophe)) {
				$id = $catastrophe->id;
			} else {
				$this->Catastrophe->save(array(
					'online' => -1
				));
				$id = $this->Catastrophe->id;
			}
		}
		$d['id'] = $id;
		if($this->request->data){
			if($this->Catastrophe->validates($this->request->data)){
				$this->request->data->type = 'catastrophe';
				$this->request->data->created = date('Y-m-d h:i:s');
				$this->Catastrophe->save($this->request->data);
				$this->Session->setFlash('Le contenu a bien été modifié.');
				$this->redirect('admin/catastrophes/index');
			} else {
				$this->Session->setFlash('Merci de corriger vos informations.', 'danger');
			}
		} else {
			$this->request->data = $this->Catastrophe->findFirst(array(
				'conditions' => array('id' => $id)
			));
		}
		$this->set($d);

	}

	/**
	* Permet de supprimer un article
	**/
	function admin_delete($id){

		$this->loadModel('Catastrophe');
		$this->Catastrophe->delete($id);
		$this->Session->setFlash('Le contenu a bien été supprimé.');
		$this->redirect('admin/catastrophes/index');

	}

} 