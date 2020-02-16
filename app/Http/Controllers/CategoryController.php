<?php

namespace App\Http\Controllers;

use App\Category;
use Illuminate\Http\Request;

class CategoryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $categories = Category::all();
        
        return view('admin.category.index', compact('categories'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.category.create');
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
            'description' => 'required',
            // 'rate' => 'required|regex:/^\d+(\.\d{1,2})?$/',
        ]);

        $category = new Category();
        $category->image= request('image')->store('public/category');
        $category->name = request('name');
        $category->description = request('description');
        $category->save();

        return redirect('category')->withSuccess('success');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Category  $category
     * @return \Illuminate\Http\Response
     */
    public function show(Category $category)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Category  $category
     * @return \Illuminate\Http\Response
     */
    public function edit(Category $category)
    {
        return view('admin.category.edit', ['category'=>$category]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Category  $category
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Category $category)
    {
        $validation = request()->validate([
            // 'image' => 'required',
            'name' => 'required',
            'description' => 'required',
            // 'rate' => 'required|regex:/^\d+(\.\d{1,2})?$/',
        ]);
        if(request('image')){
            $category->image= request('image')->store('public/category');
        }
        $category->name = request('name');
        $category->description = request('description');
        $category->save();

        return redirect('category')->withSuccess('success');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Category  $category
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $service = Category::find($id);
        $service->delete();

        return redirect('category')->withDelete('success');
    }


    public function categories(){

        if(request('by') == 'location'){
            $categories = [];

        }else{
            $categories = Category::all();

        }
        
        return view('categories', compact('categories'));
    }
}
