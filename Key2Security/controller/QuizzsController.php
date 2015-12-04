<?php 

class QuizzsController extends Controller{
	function index(){

		$perPage = 3; 
		$this->loadModel('Quizz');
		$conditions = array('type' => 'Quizz');
		$d['quizzs'] = $this->Quizz->find(array(
				'conditions' => $conditions,
				'limit' => ($perPage*($this->request->page-1)).', '.$perPage
			));
		$d['total'] = $this->Quizz->findCount($conditions);
		$d['page'] = ceil($d['total'] / $perPage);
		$this->set($d);
	}

	function answer(){

		$perPage = 3; 
		$this->loadModel('Quizz');
		$conditions = array('type' => 'Quizz');
		$d['quizzs'] = $this->Quizz->find(array(
				'conditions' => $conditions,
				'limit' => ($perPage*($this->request->page-1)).', '.$perPage
			));
		$d['total'] = $this->Quizz->findCount($conditions);
		$d['page'] = ceil($d['total'] / $perPage);
		$this->set($d);
		
	}

	/**
	 * Get X number of quizzs
	 *
	 * @param int $n The number of quizzs to get
	 * @return string
	 * @since Version 0.0.1
	 * @version 0.0.1
	 */
	public function getRand($n = 6){
		$this->loadModel('Quizz');
		$d['quizzs'] = $this->Quizz->findAll('RAND()', '0,' . $n);
		return json_encode($d, true);
	}

	/**
	* ADMIN
	**/
	function admin_index(){

		$perPage = 10; 
		$this->loadModel('Quizz');
		$conditions = array('type' => 'Quizz');
		$d['quizzs'] = $this->Quizz->find(array(
				'fields' 		=> 'id,question,answers,correct', 
				'conditions' 	=> $conditions,
				'limit' 		=> ($perPage*($this->request->page-1)).', '.$perPage
			));
		$d['total'] = $this->Quizz->findCount($conditions);
		$d['page'] = ceil($d['total'] / $perPage);
		$this->set($d);

	}

	/**
	* Permet d'éditer un article
	**/
	function admin_edit($id = null){

		$this->loadModel('Quizz');
		if($id === null) {
			if(!empty($quizz)) {
				$id = $quizz->id;
			} else {
				
				$id = $this->Quizz->id;
			}
		}
		$d['id'] = $id;
		if($this->request->data){
			if($this->Quizz->validates($this->request->data)){
				$this->request->data->type = 'Quizz';
				$this->Quizz->save($this->request->data);
				$this->Session->setFlash('Le contenu a bien été modifié.');
				$this->redirect('admin/quizzs/index');
			} else {
				$this->Session->setFlash('Merci de corriger vos informations.', 'danger');
			}
		} else {
			$this->request->data = $this->Quizz->findFirst(array(
				'conditions' => array('id' => $id)
			));
		}
		$this->set($d);

	}

	/**
	* Permet de supprimer un article
	**/
	function admin_delete($id){

		$this->loadModel('Quizz');
		$this->Quizz->delete($id);
		$this->Session->setFlash('Le contenu a bien été supprimé.');
		$this->redirect('admin/quizzs/index');

	}
}
