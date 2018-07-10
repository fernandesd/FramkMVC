<?php

namespace App\Controllers;

use Core\BaseController;
use Core\Container;

class PostsController extends BaseController
{
	public function index()
	{
		$this->setPageTitle('Posts');
		$model = Container::getModel('Post');
		//$model = new Post(DataBase::getDatabase());
		//$posts = $model->All();
		$this->view->posts = $model->All();
		$this->renderView('posts/index', 'layout');
		//print_r($posts);
		//dd($posts);
	}

	public function show($id)
	{
		$model = Container::getModel("Post");
		$this->view->post = $model->find($id);
		$this->setPageTitle("{$this->view->post->title}");
		$this->renderView('posts/show', 'layout');
	}
}

 ?>
