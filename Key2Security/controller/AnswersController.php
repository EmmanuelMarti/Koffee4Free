<?php 

/**
* 
*/
class AnswersController extends Controller
{
	
	function index(){

		$perPage = 3;
		$this->loadModel('Answer');
		$conditions = array('type' => 'Answer');
		$d['answers'] = $this->Answer->find(array(
				'conditions' => $conditions,
				'limit' => ($perPage*($this->request->page-1)).', '.$perPage
			));
		$d['total'] = $this->Answer->findCount($conditions);
		$d['page'] = ceil($d['total'] / $perPage);
		$this->set($d);
	}
}
?>