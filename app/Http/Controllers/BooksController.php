<?php

namespace App\Http\Controllers;

use Illuminate\Database\Eloquent\Model;
use App\BookModel;
use Illuminate\Http\Request;

class BooksController extends Controller
{

    public function __construct()
    {
        //
    }

    public function index()
    {
        $data = BookModel::all();
        return response($data);
    }

    public function show($id)
    {
        $data = BookModel::where('id', $id)->get();
        return response($data);
    }

    public function store(Request $request)
    {
        $data = new BookModel();
        $data->titlebook = $request->input('titlebook');
        $data->isbnbook = $request->input('isbnbook');
        $data->rated = $request->input('rated');
        $data->author = $request->input('author');
        $data->publisher = $request->input('publisher');
        $data->id_categories = $request->input('id_categories');
        $data->save();
        return response($data);
    }

    public function update(Request $request, $id)
    {
        $data = BookModel::findOrFail($id);
        $data->update($request->all());
        return response($data);
    }

    public function destroy($id)
    {
        $data = BookModel::findOrFail($id);
        $data->delete();
        return response($data);
    }

}
