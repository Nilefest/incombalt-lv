<?php

class notes_langModel extends Model {
    public function getNotes($lang){
        $notes = $this->getItems(array('title', $lang));
        
        foreach($notes as $key => $note){
            $notes[$note['title']] = $note[$lang];
            unset($notes[$key]);
        }
        
        return $notes;
    }
}
?>
