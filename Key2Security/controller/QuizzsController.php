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
	
}


?>