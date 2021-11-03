<?php

class indexController extends Controller {
    
	public function index() {
        
        $this->config->title = 'ADM';
        $this->config->description = 'Users';
        $this->config->css = array('admin');
		$this->getChild(array('common/header', 'common/footer'));
		return $this->load->view('admin/users/index', $this->data);
	}
}
?>
