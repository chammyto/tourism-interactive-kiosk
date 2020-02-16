<?php

namespace App\Http\Controllers;

use App\Destination;
use App\Category;

use Illuminate\Http\Request;

class DestinationController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $destinations = Destination::with('category')->get();
        
        return view('admin.destination.index', compact('destinations'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        $categories = Category::all();

        return view('admin.destination.create', compact('categories'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validation = request()->validate([
            'image' => 'required',
            'name' => 'required',
            'category' => 'required',
            // 'rate' => 'required|regex:/^\d+(\.\d{1,2})?$/',
        ]);

        $destination = new Destination();
        $destination->image= request('image')->store('public/destination');
        $destination->name = request('name');
        $destination->description = request('description');
        $destination->category = request('category');
        $destination->save();

        return redirect('destination')->withSuccess('success');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Destination  $destination
     * @return \Illuminate\Http\Response
     */
    public function show(Destination $destination)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Destination  $destination
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
        $destination = Destination::with('category')->find($id);
        $categories = Category::all();

       
        return view('admin.destination.edit', compact('destination', 'categories'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Destination  $destination
     * @return \Illuminate\Http\Response
     */
    public function update($id)
    {
        //
        $validation = request()->validate([
            'name' => 'required',
            'category' => 'required',
            // 'rate' => 'required|regex:/^\d+(\.\d{1,2})?$/',
        ]);

        $destination = Destination::find($id);
        if(request('image')){
            $destination->image= request('image')->store('public/destination');
        }
        $destination->name = request('name');
        $destination->description = request('description');
        $destination->category = request('category');
        $destination->save();

        return redirect('destination')->withSuccess('success');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Destination  $destination
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $service = Destination::find($id);
        $service->delete();

        return redirect('destination')->withDelete('success');
    }

    public function places($id){
        $destinations = Destination::all();

        return view('pages.whereto', compact('destinations'));
    }
}
