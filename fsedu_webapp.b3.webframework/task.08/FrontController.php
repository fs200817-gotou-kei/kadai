<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\View;
use Illuminate\Support\Facades\DB;
use Request;

class FrontController extends Controller
{
    public function index(){

        //ここで配列だして下の引数で渡す
        $ages = DB::select('select age from ages');
        $data = ['ages' => $ages];






        return view('front/index', $data);

    }

    public function confirm(Request $request){
        
        $status = $request::validate([
            'name' => 'required',
            'gender' => 'required',
            'age' => 'required',
            'emailaddress' => 'required',
            'sentemail' => '',
            'opinion' => ''
        ]);
        


        
        return view('front/confirm', compact('status'));
    }
}
?>