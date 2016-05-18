<?php

class Application_Form_Addrss extends Zend_Form
{

    public function init()
    {
        /* Form Elements & Other Definitions Here ... */
        $path = new Zend_Form_Element_Text('path');
		$path->setRequired();
		$path->setLabel('path');	
		$path->setAttrib('class', 'form-control col-1g-5');		
		$submit = new Zend_Form_Element_Submit('submit');
		$submit->setAttrib('class', 'btn btn-primary col-sm-offset-3 col-sm-5');
		$this->addElements(array($path,$submit));
    }


}

