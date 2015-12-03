<?php
class SecourismesController extends Controller{


	function index(){

		$perPage = 1;
		$this->loadModel('Secourisme');
		$conditions = array('type' => 'secourisme', 'online' => 1);
		$d['secourismes'] = $this->Secourisme->find(array(
				'conditions' => $conditions,
				'limit' => ($perPage*($this->request->page-1)).', '.$perPage
			));
		$d['total'] = $this->Secourisme->findCount($conditions);
		$d['page'] = ceil($d['total'] / $perPage);
		$this->set($d);
	}

	function view($id, $slug){

		$this->loadModel('Secourisme');
		$d['secourisme'] = $this->Secourisme->findFirst(array(
			'fields' 		=> 'id,slug,content,name',
			'conditions' 	=> array('type' => 'secourisme', 'online' => 1, 'id' => $id)
			));
		if(empty($d['secourisme'])){
			$this->e404('Page introuvable');
		}
		if($slug != $d['secourisme']->slug){
			$this->redirect("secourismes/view/id:$id/slug:".$d['secourisme']->slug,301);
		}
		$this->set($d);
	}

	/**
	* ADMIN
	**/
	function admin_index(){

		$perPage = 10; 
		$this->loadModel('Secourisme');
		$conditions = array('type' => 'secourisme');
		$d['secourismes'] = $this->Secourisme->find(array(
				'fields' 		=> 'id,name,online', 
				'conditions' 	=> $conditions,
				'limit' 		=> ($perPage*($this->request->page-1)).', '.$perPage
			));
		$d['total'] = $this->Secourisme->findCount($conditions);
		$d['page'] = ceil($d['total'] / $perPage);
		$this->set($d);

	}


	/**
	* Permet d'éditer un article
	**/
	function admin_edit($id = null){

		$this->loadModel('Secourisme');
		if($id === null) {
			$secourisme = $this->Secourisme->findFirst(array(
				'conditions' => array('online' => -1)
			));
			if(!empty($secourisme)) {
				$id = $secourisme->id;
			} else {
				$this->Secourisme->save(array(
					'online' => -1
				));
				$id = $this->Secourisme->id;
			}
		}
		$d['id'] = $id;
		if($this->request->data){
			if($this->Secourisme->validates($this->request->data)){
				$this->request->data->type = 'secourisme';
				$this->request->data->created = date('Y-m-d h:i:s');
				$this->Secourisme->save($this->request->data);
				$this->Session->setFlash('Le contenu a bien été modifié.');
				$this->redirect('admin/secourismes/index');
			} else {
				$this->Session->setFlash('Merci de corriger vos informations.', 'danger');
			}
		} else {
			$this->request->data = $this->Secourisme->findFirst(array(
				'conditions' => array('id' => $id)
			));
		}
		$this->set($d);

	}

	/**
	* Permet de supprimer un article
	**/
	function admin_delete($id){

		$this->loadModel('Secourisme');
		$this->Secourisme->delete($id);
		$this->Session->setFlash('Le contenu a bien été supprimé.');
		$this->redirect('admin/secourismes/index');

	}

} 