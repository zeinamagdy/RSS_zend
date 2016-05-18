<?php

class Application_Model_DbTable_New extends Zend_Db_Table_Abstract
{

    protected $_name = 'RSS';
    function listNews(){
		return $this->fetchAll()->toArray();
	}
	
	function getNewsById($id){
		return $this->find($id)->toArray();
	}
	
	function deleteNews($id){
		return $this->delete('id='.$id);
	}
	function addNews($Rss){	
		$row = $this->createRow();
		$row->path = $Rss['path'];
		return $row->save();
	}
       



}

