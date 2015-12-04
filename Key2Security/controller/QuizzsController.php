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
}