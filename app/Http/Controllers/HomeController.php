<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Category;
use App\Info;
use App\Destination;
use App\DestinationRating;

use App\Visitor;

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

    public function admin()
    {

        $total_visitors = Visitor::count();
        $monthly_visitors = Visitor::whereMonth('created_at', date('m'))->count();

        return view('admin.home', compact('total_visitors', 'monthly_visitors'));
    }

    public function menu()
    {
        return view('pages.menu');
    }

    public function about()
    {
        $infos = Info::get();
        return view('pages.about', compact('infos'));
    }

    public function information($id)
    {
        $info = Info::find($id);
        return view('pages.info', compact('info'));
    }

    public function place($id)
    {
        $place = Destination::with('media')->find($id);

        $reviews = DestinationRating::where('destination_id', $id)->inRandomOrder()->limit(6)->get();

        $place->reviews = $reviews;

        return view('pages.place', compact('place'));
    }

    public function categories(Request $request)
    {


        $categories = Category::all();


        return view('categories', compact('categories'));
    }

    public function destinations(Request $request)
    {

        $keyword = '';
        if($request->has('category')){
         /*   if ($request->keyword) {
            $keyword = $request->keyword;

                $destinations = Destination::with('category')->where('category', $request->category)->where('name','like', '%'.$request->keyword.'%')->get();
            } else {
                $destinations = Destination::with('category')->get();
            } */
        if ($request->category) {
                $destinations = Destination::where('category', $request->category)->get();
            } else {
                $destinations = Destination::all();
            }
        }else{
            if ($request->keyword) {
                $keyword = $request->keyword;
                $destinations = Destination::where('name','like', '%'.$request->keyword.'%')->get();
            } else {
                $destinations = Destination::inRandomOrder()->get();
            }
        }



       

        return view('pages.whereto', compact('destinations', 'keyword'));
    }
}
