<?php

class indexController extends Controller {    
	public function index() {
        
        $this->load->model('notes_lang');
        $this->data['notes'] = $this->notes_langModel->getNotes($this->config->lang);
        
        $this->load->model('contact');
        $contacts = $this->contactModel->getItems();
        
        $this->load->model('articles');
        $this->data['main_info'] = $this->articlesModel->getItems(array('article'), array('title' => 'contact', 'lang' => $this->config->lang))[0]['article'];
        
        $mails = array();
        $phones = array();
        $address;
        
        foreach($contacts as $contact){
            if($contact['title'] == 'mail'){
                $mails[$contact['id']] = $contact['contact'];
            }elseif($contact['title'] == 'phone'){
                $phones[$contact['id']] = $contact['contact'];
            }elseif($contact['title'] == 'address'){
                $address = $contact['contact'];
            }
        }
            
        $this->data['contacts'] = array('mails' => $mails, 'phones' => $phones, 'addr' => $address);
        
        //echo "<pre>"; print_r($this->data['notes']); echo "</pre>";
        
        $this->config->description = $this->data['notes']['contact'];
		$this->getChild(array('common/header', 'common/footer'));
		return $this->load->view('contact/index', $this->data);
	}
}
?>
