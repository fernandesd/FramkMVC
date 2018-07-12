<?php

namespace App\Controllers;

use Core\BaseController;
use Core\Container;

class PostsController extends BaseController
{
	private $post;

	public function __construct()
	{
		parent::__construct();
		$this->post = Container::getModel('Post');
	}

	public function index()
	{
		$this->setPageTitle('Posts');
		$this->view->posts = $this->post->All();
		$this->renderView('posts/index', 'layout');
	}

	public function show($id)
	{
		$this->view->post = $this->post->find($id);
		$this->setPageTitle("{$this->view->post->title}");
		$this->renderView('posts/show', 'layout');
	}

	public function create()
	{
		$this->setPageTitle('Novo Post');
		$this->renderView('posts/create', 'layout');
	}

	public function store($request)
	{
		$data = [
			'title' => $request->post->title,
			'content' => $request->post->content
		];

		$this->post->create($data);
	}
}

 ?>
