<?php

namespace App\Models\Patients;

use Illuminate\Database\Eloquent\Model;

class tcarte extends Model
{
    //
    protected $fillable = [
        'id','refUser','dateExpiration','numeroCarte','codeSecret','noms_profil','adresse_profil','telephone_profil','datenaissance_profil','groupesanguin','photo_profi'
    ];
}
