<?php

namespace App\Controllers;

use App\Models\Post;
use Core\BaseController;
use Core\DataBase;

class PostsController extends BaseController
{
	public function index()
	{
		$model = new Post(DataBase::getDatabase());
		$posts = $model->All();
		//dd($posts);
	}

	public function show($id, $request)
	{
		echo $id . '<br>';
		echo $request->get->nome . '<br>';
		echo $request->get->idade . '<br>';

	}
}

 ?>
