<?php

class productionsModel extends Model {
    
    public function getCategoriesByProvider($provider){
        return $this->query("SELECT DISTINCT `type` FROM `".$this->table."` WHERE `provider` = '$provider'");
    }
}
?>
