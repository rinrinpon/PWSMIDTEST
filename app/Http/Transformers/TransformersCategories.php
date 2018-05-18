<?php

namespace App\Http\Transformers;
use Vendor\League\Fractal\src\TransformerAbstract;
use App\CategoryModel;

class TransformerCategories extends TransformerAbstract
{
    public function transform(CategoryModel $field)
    {
      return[
        'ID Kategori' => $field->id,
        'Nama Kategori' => $field->name,
      ];
    }
}
