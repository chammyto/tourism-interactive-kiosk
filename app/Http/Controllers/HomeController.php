<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Category;
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
        $infos = Info::get();
        return view('pages.about', compact('infos'));
    }

    public function place($id){
        $place = Destination::find($id);

        return view('pages.place', compact('place'));
    }

    public function categories(Request $request){


            $categories = Category::all();
        

        return view('categories', compact('categories'));
    }

    public function destinations(Request $request){
        if($request->category){
            $destinations = Destination::where('category', $request->category)->get();
        }else{
            $destinations = Destination::all();
        }

        return view('pages.whereto', compact('destinations'));
    }
    
}   
