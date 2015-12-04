<?php
class SrvelosController extends Controller{


	function index(){

		$perPage = 1;
		$this->loadModel('Srvelo');
		$conditions = array('type' => 'srvelo', 'online' => 1);
		$d['srvelos'] = $this->Srvelo->find(array(
				'conditions' => $conditions,
				'limit' => ($perPage*($this->request->page-1)).', '.$perPage
			));
		$d['total'] = $this->Srvelo->findCount($conditions);
		$d['page'] = ceil($d['total'] / $perPage);
		$this->set($d);
	}

	function view($id, $slug){

		$this->loadModel('Srvelo');
		$d['srvelo'] = $this->Srvelo->findFirst(array(
			'fields' 		=> 'id,slug,content,name',
			'conditions' 	=> array('type' => 'srvelo', 'online' => 1, 'id' => $id)
			));
		if(empty($d['srvelo'])){
			$this->e404('Page introuvable');
		}
		if($slug != $d['srvelo']->slug){
			$this->redirect("srvelos/view/id:$id/slug:".$d['srvelo']->slug,301);
		}
		$this->set($d);
	}

	/**
	* ADMIN
	**/
	function admin_index(){

		$perPage = 10; 
		$this->loadModel('Srvelo');
		$conditions = array('type' => 'srvelo');
		$d['srvelos'] = $this->Srvelo->find(array(
				'fields' 		=> 'id,name,online', 
				'conditions' 	=> $conditions,
				'limit' 		=> ($perPage*($this->request->page-1)).', '.$perPage
			));
		$d['total'] = $this->Srvelo->findCount($conditions);
		$d['page'] = ceil($d['total'] / $perPage);
		$this->set($d);

	}


	/**
	* Permet d'éditer un article
	**/
	function admin_edit($id = null){

		$this->loadModel('Srvelo');
		if($id === null) {
			$srvelo = $this->Srvelo->findFirst(array(
				'conditions' => array('online' => -1)
			));
			if(!empty($srvelo)) {
				$id = $srvelo->id;
			} else {
				$this->Srvelo->save(array(
					'online' => -1
				));
				$id = $this->Srvelo->id;
			}
		}
		$d['id'] = $id;
		if($this->request->data){
			if($this->Srvelo->validates($this->request->data)){
				$this->request->data->type = 'srvelo';
				$this->request->data->created = date('Y-m-d h:i:s');
				$this->Srvelo->save($this->request->data);
				$this->Session->setFlash('Le contenu a bien été modifié.');
				$this->redirect('admin/srvelos/index');
			} else {
				$this->Session->setFlash('Merci de corriger vos informations.', 'danger');
			}
		} else {
			$this->request->data = $this->Srvelo->findFirst(array(
				'conditions' => array('id' => $id)
			));
		}
		$this->set($d);

	}

	/**
	* Permet de supprimer un article
	**/
	function admin_delete($id){

		$this->loadModel('Srvelo');
		$this->Srvelo->delete($id);
		$this->Session->setFlash('Le contenu a bien été supprimé.');
		$this->redirect('admin/srvelos/index');

	}

} 