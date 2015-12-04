<?php
class SrvoituresController extends Controller{


	function index(){

		$perPage = 1;
		$this->loadModel('Srvoiture');
		$conditions = array('type' => 'srvoiture', 'online' => 1);
		$d['srvoitures'] = $this->Srvoiture->find(array(
				'conditions' => $conditions,
				'limit' => ($perPage*($this->request->page-1)).', '.$perPage
			));
		$d['total'] = $this->Srvoiture->findCount($conditions);
		$d['page'] = ceil($d['total'] / $perPage);
		$this->set($d);
	}

	function view($id, $slug){

		$this->loadModel('Srvoiture');
		$d['srvoiture'] = $this->Srvoiture->findFirst(array(
			'fields' 		=> 'id,slug,content,name',
			'conditions' 	=> array('type' => 'srvoiture', 'online' => 1, 'id' => $id)
			));
		if(empty($d['srvoiture'])){
			$this->e404('Page introuvable');
		}
		if($slug != $d['srvoiture']->slug){
			$this->redirect("srvoitures/view/id:$id/slug:".$d['srvoiture']->slug,301);
		}
		$this->set($d);
	}

	/**
	* ADMIN
	**/
	function admin_index(){

		$perPage = 10; 
		$this->loadModel('Srvoiture');
		$conditions = array('type' => 'srvoiture');
		$d['srvoitures'] = $this->Srvoiture->find(array(
				'fields' 		=> 'id,name,online', 
				'conditions' 	=> $conditions,
				'limit' 		=> ($perPage*($this->request->page-1)).', '.$perPage
			));
		$d['total'] = $this->Srvoiture->findCount($conditions);
		$d['page'] = ceil($d['total'] / $perPage);
		$this->set($d);

	}


	/**
	* Permet d'éditer un article
	**/
	function admin_edit($id = null){

		$this->loadModel('Srvoiture');
		if($id === null) {
			$srvoiture = $this->Srvoiture->findFirst(array(
				'conditions' => array('online' => -1)
			));
			if(!empty($srvoiture)) {
				$id = $srvoiture->id;
			} else {
				$this->Srvoiture->save(array(
					'online' => -1
				));
				$id = $this->Srvoiture->id;
			}
		}
		$d['id'] = $id;
		if($this->request->data){
			if($this->Srvoiture->validates($this->request->data)){
				$this->request->data->type = 'srvoiture';
				$this->request->data->created = date('Y-m-d h:i:s');
				$this->Srvoiture->save($this->request->data);
				$this->Session->setFlash('Le contenu a bien été modifié.');
				$this->redirect('admin/srvoitures/index');
			} else {
				$this->Session->setFlash('Merci de corriger vos informations.', 'danger');
			}
		} else {
			$this->request->data = $this->Srvoiture->findFirst(array(
				'conditions' => array('id' => $id)
			));
		}
		$this->set($d);

	}

	/**
	* Permet de supprimer un article
	**/
	function admin_delete($id){

		$this->loadModel('Srvoiture');
		$this->Srvoiture->delete($id);
		$this->Session->setFlash('Le contenu a bien été supprimé.');
		$this->redirect('admin/srvoitures/index');

	}

} 