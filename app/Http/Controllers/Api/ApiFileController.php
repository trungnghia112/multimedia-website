<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\BaseController;
use Illuminate\Http\Request;

use App\Models;

class ApiFileController extends BaseController
{
    public function __construct()
    {
        parent::__construct();
    }

    public function checkSupportedImages($extension)
    {
        $supportedImage = [
            'gif',
            'jpg',
            'jpeg',
            'tiff',
            'png'
        ];
        if(in_array($extension, $supportedImage))
        {
            return true;
        }
        return false;
    }

    public function checkSupportedFiles($extension)
    {
        $supportedExtension = ['gif', 'jpg', 'jpeg', 'tiff', 'png', 'docx', 'doc', 'xlsx', 'xls', 'pptx', 'ppt', 'pdf', 'html', 'htm', 'rar', 'zip', 'gz'];
        if(in_array($extension, $supportedExtension))
        {
            return true;
        }
        return false;
    }

    public function anyIndex(Request $request)
    {
        $path = './uploads';
        $dir = $path;
        if ($request->get('sub', '')) {
            $dir .= '/'.urldecode($request->get('sub'));
        }
        $type = $request->get('type', 'image');
        $files = scandir($dir);
        $result = [];
        foreach ($files as $file)
        {
            if ($file != '.' and $file != '..')
            {
                $is_dir = is_dir($dir.'/'.$file);
                $name = $file;
                $path = str_replace($path.'/', '', $dir.'/'.$file);
                $extension = pathinfo($dir.'/'.$file, PATHINFO_EXTENSION);

                /*If type is image*/
                if($type == 'image' && !$is_dir)
                {
                    if($this->checkSupportedImages($extension))
                    {
                        $result[] = [
                            'is_dir'    => $is_dir,
                            'name'      => $name,
                            'path'      => $path,
                            'extension' => $extension
                        ];
                    }
                }
                /*Type if file*/
                else
                {
                    if(!$is_dir)
                    {
                        if($this->checkSupportedFiles($extension))
                        {
                            $result[] = [
                                'is_dir'    => $is_dir,
                                'name'      => $name,
                                'path'      => $path,
                                'extension' => $extension
                            ];
                        }
                    }
                    else
                    {
                        $result[] = [
                            'is_dir'    => true,
                            'name'      => $name,
                            'path'      => $path,
                            'extension' => ''
                        ];
                    }
                }
            }
        }
        return response()->json($result);
    }
}