<?php

class indexController extends Controller {
    
	public function index() {
        
        $this->load->model('notes_lang');
        $notes = $this->notes_langModel->getNotes($this->config->lang);
        
        $this->load->model('articles');
        $this->data['main_info'] = $this->articlesModel->getItems(array('article'), array('title' => 'production', 'lang' => $this->config->lang))[0]['article'];
        
        $this->load->model('productions');
        $this->data['productions'] = $this->productionsModel->getItems(array(), array('lang' => $this->config->lang));
        
        $this->data['notes'] = $notes;
        $this->config->title = 'ADM';
        $this->config->description = $notes['production'];
        $this->config->css = array('admin');
		$this->getChild(array('common/header', 'common/footer'));
		return $this->load->view('admin/production/index', $this->data);
	}
}
?>
