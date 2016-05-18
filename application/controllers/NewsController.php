<?php

class NewsController extends Zend_Controller_Action
{

    public function init()
    {
        /* Initialize action controller here */
         $this->model = new  Application_Model_DbTable_New();
    }

    public function indexAction()
    {
        // action body
        $feeds=$this->model->listNews();
        $form = new Application_Form_Addrss();
    	if($this->getRequest()->isPost()){
			if($form->isValid($this->getRequest()->getParams())){
				$Rss = $form->getValues();
				if ($this->model->addNews($Rss))
				{
					$this->redirect('news/');
                }
			}

		}
		$this->view->form = $form;
		 $this->view->Rss=$feeds;
    
    }
   

    
    public function addAction (){
    	$form = new Application_Form_Addrss();
    	if($this->getRequest()->isPost()){
			if($form->isValid($this->getRequest()->getParams())){
				$Rss = $form->getValues();
				if ($this->model->addNews($Rss)){
					$this->redirect('news/');
                }
			}

		}
		$this->view->form = $form;
    
    }
  


}

