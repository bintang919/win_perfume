<?php
namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    use HasFactory;

    protected $primaryKey = 'categories_id';
    protected $table = 'categories';

    protected $fillable = [
        'categories_name',
        'categories_description',
        'is_active',
        'is_deleted',
    ];
}
