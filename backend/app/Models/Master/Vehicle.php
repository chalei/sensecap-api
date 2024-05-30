<?php

namespace App\Models\Master;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Concerns\HasUuids;

class Vehicle extends Model
{
    use HasFactory, HasUuids;

    protected $table        = 'tbl_vehicle';
    protected $primaryKey   = 'vehicle_uuid';

    protected $fillable = [
        'vehicle_uuid',
        'node_eui',
        'license_plate',
        'owner_name',
        'stnk_date'
    ];

    /** Fungsi untuk membuat otomatis pengisian atau perubahan data
     * dari apa yg telah didefinisikan seperti created_by dan updated_by
     */
    protected static function booted()
    {
        static::creating(function ($model) {
            $model->created_by      = auth()->user()->name  ?? 'Admin';
            $model->updated_by      = auth()->user()->name  ?? 'Admin';
        });
    }
}
