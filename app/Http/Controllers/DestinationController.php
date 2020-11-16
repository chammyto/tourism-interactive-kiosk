<?php

namespace App\Http\Controllers;

use App\Destination;
use App\Category;
use App\DestinationMedia;
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
        $towns = ['Alburquerque', 'Alicia', 'Anda', 'Antequera', 'Baclayon', 'Balilihan', 'Batuan', 'Bilar', 'Buenavista', 'Calape', 'Candijay', 'Carmen', 'Catigbian', 'Clarin', 'Corella', 'Cortes', 'Dagohoy', 'Danao', 'Dauis', 'Dimiao', 'Duero', 'Garcia Hernandez', 'Guindulman', 'Inabanga', 'Jagna', 'Getafe', 'Lila', 'Loay', 'Loboc', 'Loon', 'Mabini', 'Maribojoc', 'Panglao', 'Pilar', 'Pres. Carlos P. Garcia (Pitogo)', 'Sagbayan (Borja)', 'San Isidro', 'San Miguel', 'Sevilla', 'Sierra Bullones', 'Sikatuna', 'Tagbilaran City', 'Talibon', 'Trinidad', 'Tubigon', 'Ubay', 'Valencia', 'Bien Unido',];
        return view('admin.destination.create', compact('categories', 'towns'));
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
            'town' => 'required',
            'street' => 'required',
            'category' => 'required',
            // 'rate' => 'required|regex:/^\d+(\.\d{1,2})?$/',
        ]);

        $destination = new Destination();
        $destination->image = request('image')->store('public/destination');
        $destination->name = request('name');
        $destination->description = request('description');
        $destination->category = request('category');
        $destination->town = request('town');
        $destination->street = request('street');
        $destination->lat = request('lat');
        $destination->lng = request('lng');
        $destination->save();


        foreach ($request->file('media') as $media) {
            $m = new DestinationMedia();
            $m->source = $media->store('public/destination');
            $m->destination_id = $destination->id;
            $m->save();
        }


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
        $destination = Destination::with('media')->with('category')->find($id);
        $categories = Category::get();
        $towns = ['Alburquerque', 'Alicia', 'Anda', 'Antequera', 'Baclayon', 'Balilihan', 'Batuan', 'Bilar', 'Buenavista', 'Calape', 'Candijay', 'Carmen', 'Catigbian', 'Clarin', 'Corella', 'Cortes', 'Dagohoy', 'Danao', 'Dauis', 'Dimiao', 'Duero', 'Garcia Hernandez', 'Guindulman', 'Inabanga', 'Jagna', 'Getafe', 'Lila', 'Loay', 'Loboc', 'Loon', 'Mabini', 'Maribojoc', 'Panglao', 'Pilar', 'Pres. Carlos P. Garcia (Pitogo)', 'Sagbayan (Borja)', 'San Isidro', 'San Miguel', 'Sevilla', 'Sierra Bullones', 'Sikatuna', 'Tagbilaran City', 'Talibon', 'Trinidad', 'Tubigon', 'Ubay', 'Valencia', 'Bien Unido',];


        return view('admin.destination.edit', compact('destination', 'categories', 'towns'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Destination  $destination
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
        $validation = request()->validate([
            'name' => 'required',
            'category' => 'required',
            'town' => 'required',
            'street' => 'required',
            // 'rate' => 'required|regex:/^\d+(\.\d{1,2})?$/',
        ]);

        $destination = Destination::find($id);
        if (request('image')) {
            $destination->image = request('image')->store('public/destination');
        }
        $destination->name = request('name');
        $destination->description = request('description');
        $destination->category = request('category');

        $destination->town = request('town');
        $destination->street = request('street');
        $destination->lat = request('lat');
        $destination->lng = request('lng');
        $destination->save();

        foreach ($request->media_id as $key => $media_id) {
            if ($media_id != 0) {
                if (empty($request->file('media')[$key])) {
                    if (!empty($request->media_deleted[$key])) {
                        $m = DestinationMedia::find($media_id);
                        $m->delete();
                    }
                } else {
                    $m = DestinationMedia::find($media_id);
                    $m->source = $request->file('media')[$key]->store('public/destination');
                    $m->destination_id = $destination->id;
                    $m->save();
                }
            } else {
                if (!empty($request->file('media')[$key])) {
                    $m = new DestinationMedia();
                    $m->source =  $request->file('media')[$key]->store('public/destination');
                    $m->destination_id = $destination->id;
                    $m->save();
                }
            }
        }

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

    public function places($id)
    {
        $destinations = Destination::all();

        return view('pages.whereto', compact('destinations'));
    }

    public function sendLocation($id)
    {
        $destination = Destination::find($id);

        $message = 'http://www.google.com/maps/place/' . $destination->lat . ',' . $destination->lng;






        return redirect()->back()->withSuccess('success');
    }
}
