<?php

class indexController extends Controller {
	public function index() {
        
        $this->load->model('notes_lang');
        $notes = $this->notes_langModel->getNotes($this->config->lang);
        
        $this->load->model('articles');
        $this->data['article'] = $this->articlesModel->getItems(array('article'), array('title' => 'about', 'lang' => $this->config->lang))[0]['article'];
        
        $this->data['notes'] = $notes;
        $this->config->description = $notes['official'];
		$this->getChild(array('common/header', 'common/footer'));
		return $this->load->view('main/index', $this->data);
	}
}
?>
