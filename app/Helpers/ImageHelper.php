<?php

namespace App\Helpers;

use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;

class ImageHelper
{
    public static function handleUploadedImage($file, $path, $delete = null)
    {
        if ($file) {

            if ($delete) {
                Storage::disk('public')->delete($path . '/' . $delete);
            }

            $name =$file->getClientOriginalName();
            Storage::disk('public')->putFileAs($path, $file, $name);
            return $name;
        }
    }


    public static function uploadSummernoteImage($file, $path)
    {
        if ($file) {
            $name = $file->getClientOriginalName().  '.' . $file->getClientOriginalExtension();
            Storage::disk('public')->putFileAs($path, $file, $name);
            return $name;
        }
    }



    public static function ItemhandleUploadedImage($file, $path, $delete = null)
    {
      
        if ($file) {

            if ($delete) {
                Storage::disk('public')->delete($path . '/' . $delete);
            }

            $photoName = $file->getClientOriginalName();
            $thumbnailName = $file->getClientOriginalName();

            Storage::disk('public')->putFileAs($path, $file, $photoName);


             $image = \Image::make($file);


            $thumbnailPath = $path . '/' . $thumbnailName;
            Storage::disk('public')->put($thumbnailPath, (string) $image->encode());


            return [$photoName, $thumbnailName];
        }
    }

    public static function handleUpdatedUploadedImage($file, $path, $data, $delete_path, $field)
    {

        $name = $file->getClientOriginalName()  .  '.' . $file->getClientOriginalExtension();
        
        
        Storage::disk('public')->putFileAs($path, $file, $name);


        if ($data[$field] != null) {
            Storage::disk('public')->delete($delete_path . '/' . $data[$field]);
        }

        return $name;
    }


    public static function ItemhandleUpdatedUploadedImage($file, $path, $data, $delete_path, $field)
    {
        
        $photoName = $file->getClientOriginalName()     ;
        $thumbnailName = $file->getClientOriginalName() ;


        $image = \Image::make($file);


        $thumbnailPath = $path . '/' . $thumbnailName;
        Storage::disk('public')->put($thumbnailPath, (string) $image->encode());


        $photoPath = $path . '/' . $photoName;
        Storage::disk('public')->putFileAs($path, $file, $photoName);

        if (!empty($data['thumbnail'])) {
            Storage::disk('public')->delete($delete_path . '/' . $data['thumbnail']);
        }

        if (!empty($data[$field])) {
            Storage::disk('public')->delete($delete_path . '/' . $data[$field]);
        }

        return [$photoName, $thumbnailName];
    }


    public static function handleDeletedImage($data, $field, $delete_path)
    {
        if (!empty($data[$field])) {
            Storage::disk('public')->delete($delete_path . '/' . $data[$field]);
        }
    }
}
