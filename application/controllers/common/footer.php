<?php

class footerController extends Controller {
	public function index() {
        
        $this->load->model('notes_lang');
        $this->data['notes'] = $this->notes_langModel->getNotes($this->config->lang);
        
        $this->load->model('contact');
        $this->data['addr'] = $this->contactModel->getItems(array('contact'), array('title' => 'address'))[0]['contact'];
           
        $this->data['js'] = $this->config->js;
        
		return $this->load->view('common/footer', $this->data);
	}
}
?>
