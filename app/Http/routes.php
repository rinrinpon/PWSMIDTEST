<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It is a breeze. Simply tell Lumen the URIs it should respond to
| and give it the Closure to call when that URI is requested.
|
*/

$app->get('/', function () use ($app) {
    return $app->version();
});

  $app->get('/categories', 'CategoriesController@index');
	$app->get('/categories/{id}', 'CategoriesController@show');
	$app->post('/categories', 'CategoriesController@store');
	$app->put('/categories/{id}', 'CategoriesController@update');
	$app->delete('/categories/{id}', 'CategoriesController@destroy');

	$app->get('/books', 'BooksController@index');
	$app->get('/books/{id}', 'BooksController@show');
	$app->post('/books', 'BooksController@store');
	$app->put('/books/{id}', 'BooksController@update');
	$app->delete('/books/{id}', 'BooksController@destroy');
