<?php
class SrmotosController extends Controller{


	function index(){

		$perPage = 1;
		$this->loadModel('Srmoto');
		$conditions = array('type' => 'srmoto', 'online' => 1);
		$d['srmotos'] = $this->Srmoto->find(array(
				'conditions' => $conditions,
				'limit' => ($perPage*($this->request->page-1)).', '.$perPage
			));
		$d['total'] = $this->Srmoto->findCount($conditions);
		$d['page'] = ceil($d['total'] / $perPage);
		$this->set($d);
	}

	function view($id, $slug){

		$this->loadModel('Srmoto');
		$d['srmoto'] = $this->Srmoto->findFirst(array(
			'fields' 		=> 'id,slug,content,name',
			'conditions' 	=> array('type' => 'srmoto', 'online' => 1, 'id' => $id)
			));
		if(empty($d['srmoto'])){
			$this->e404('Page introuvable');
		}
		if($slug != $d['srmoto']->slug){
			$this->redirect("srmotos/view/id:$id/slug:".$d['srmoto']->slug,301);
		}
		$this->set($d);
	}

	/**
	* ADMIN
	**/
	function admin_index(){

		$perPage = 10; 
		$this->loadModel('Srmoto');
		$conditions = array('type' => 'srmoto');
		$d['srmotos'] = $this->Srmoto->find(array(
				'fields' 		=> 'id,name,online', 
				'conditions' 	=> $conditions,
				'limit' 		=> ($perPage*($this->request->page-1)).', '.$perPage
			));
		$d['total'] = $this->Srmoto->findCount($conditions);
		$d['page'] = ceil($d['total'] / $perPage);
		$this->set($d);

	}


	/**
	* Permet d'éditer un article
	**/
	function admin_edit($id = null){

		$this->loadModel('Srmoto');
		if($id === null) {
			$srmoto = $this->Srmoto->findFirst(array(
				'conditions' => array('online' => -1)
			));
			if(!empty($srmoto)) {
				$id = $srmoto->id;
			} else {
				$this->Srmoto->save(array(
					'online' => -1
				));
				$id = $this->Srmoto->id;
			}
		}
		$d['id'] = $id;
		if($this->request->data){
			if($this->Srmoto->validates($this->request->data)){
				$this->request->data->type = 'srmoto';
				$this->request->data->created = date('Y-m-d h:i:s');
				$this->Srmoto->save($this->request->data);
				$this->Session->setFlash('Le contenu a bien été modifié.');
				$this->redirect('admin/srmotos/index');
			} else {
				$this->Session->setFlash('Merci de corriger vos informations.', 'danger');
			}
		} else {
			$this->request->data = $this->Srmoto->findFirst(array(
				'conditions' => array('id' => $id)
			));
		}
		$this->set($d);

	}

	/**
	* Permet de supprimer un article
	**/
	function admin_delete($id){

		$this->loadModel('Srmoto');
		$this->Srmoto->delete($id);
		$this->Session->setFlash('Le contenu a bien été supprimé.');
		$this->redirect('admin/srmotos/index');

	}

} 