<?php

class indexController extends Controller {
    
	public function index() {
        
        $this->load->model('notes_lang');
        $notes = $this->notes_langModel->getNotes($this->config->lang);
        
        $this->load->model('articles');
        $this->data['main_info'] = $this->articlesModel->getItems(array('article'), array('title' => 'production', 'lang' => $this->config->lang))[0]['article'];
        
        $this->load->model('providers');
        $providers = $this->providersModel->getItems();
        
        $this->load->model('prod_types');
        $prod_types = $this->prod_typesModel->getItems();
        foreach($prod_types as $key => $prod_type){
            $prod_types[$prod_type['title']] = $prod_type[$this->config->lang];
        }
        $this->load->model('productions');
        foreach($providers as $key => $provider){
            $types = $this->productionsModel->getCategoriesByProvider($provider['title']);
            $providers[$key]['prod_types'] = array();
            foreach($types as $type){
                $providers[$key]['prod_types'][$type['type']] = $prod_types[$type['type']];
            }
        }
        
        
        $this->data['providers'] = $providers;
        $this->data['notes'] = $notes;
        $this->config->description = $notes['production'];
        $this->config->css = array('production');
		$this->getChild(array('common/header', 'common/footer'));
		return $this->load->view('production/index', $this->data);
	}
    
	public function categories($provider = false, $categorie = false) {
        $this->load->model('notes_lang');
        $notes = $this->notes_langModel->getNotes($this->config->lang);

        $this->load->model('prod_types');
        $this->data['categorie'] = $this->prod_typesModel->getItems(array(), array('title' => $categorie))[0][$this->config->lang];
        
        $this->load->model('productions');
        $productions = $this->productionsModel->getItems(array(), array('type' => $categorie, 'provider' => $provider, 'lang' => $this->config->lang));
        
        $this->data['provider'] = $provider;
        $this->data['productions'] = $productions;
        $this->data['notes'] = $notes;
        $this->config->description = $notes['production'];
        $this->config->css = array('production');
		$this->getChild(array('common/header', 'common/footer'));
		return $this->load->view('production/categories', $this->data);
	}
    
    public function view($id = false) {
        
        $this->load->model('notes_lang');
        $notes = $this->notes_langModel->getNotes($this->config->lang);
        
        $this->load->model('productions');
        $production = $this->productionsModel->getItems(array(), array('id' => $id))[0];
        
        if($this->config->new_lang){
            $this->response->redirect("/production/categories/".$production['provider']."/".$production['type']);
        }
        
        $this->load->model('prod_types');
        $this->data['categorie'] = $this->prod_typesModel->getItems(array(), array('title' => $production['type']))[0][$this->config->lang];
        
        $this->load->model('prod_notes');
        $this->data['prod_notes'] = $this->prod_notesModel->getItems(array(), array('prod_id' => $id));
        $this->data['production'] = $production;
        $this->data['notes'] = $notes;
        $this->config->description = $notes['production'];
        $this->config->css = array('production');
		$this->getChild(array('common/header', 'common/footer'));

		return $this->load->view('production/view', $this->data);
	}
}
