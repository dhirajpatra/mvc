<?php
class IndexController extends Controller
{
	public function index()
	{
		$this->_view->set('title', 'Simple site Index');
		return $this->_view->output();
	}
	
}