<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Categories;
use App\Info;
use App\Destination;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        // $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        return view('welcome');
    }

    public function menu(){
        return view('pages.menu');
    }

    public function about(){
        $info = Info::find(1);
        return view('pages.about', compact('info'));
    }

    public function place($id){
        $place = Destination::find($id);

        return view('pages.place', compact('place'));
    }
    
}
