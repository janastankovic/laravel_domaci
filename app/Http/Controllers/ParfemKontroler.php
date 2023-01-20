<?php

namespace App\Http\Controllers;

use App\Models\Parfem;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class ParfemKontroler extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return response()->json(['Parfemi' => Parfem::all()]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Parfem  $parfem
     * @return \Illuminate\Http\Response
     */
    public function show(Parfem $parfem)
    {
        return response()->json(['Parfem' => Parfem::findOrFail($parfem->id)]);
    } //pretrazujem u bazi i vracam id parfema koji trazim

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Parfem  $parfem
     * @return \Illuminate\Http\Response
     */
    public function edit(Parfem $parfem)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Parfem  $parfem
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Parfem $parfem)
    {
        $validator = Validator::make($request->all(), [
            'naziv' => 'required|string',
            'cena' => 'required|numeric|between:0,99.99',
            'boca' => 'required|numeric|between:0,99.99',
        ]);

        if($validator->fails()){
            return response()->json(['Poruka' => $validator->errors()]); 
        }

        $parfem->naziv = $request->naziv;
        $parfem->cena = $request->cena;
        $parfem->boca = $request->boca;
        $parfem->save();

        return response()->json(['Poruka' => 'Parfem je izmenjen']);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Parfem  $parfem
     * @return \Illuminate\Http\Response
     */
    public function destroy(Parfem $parfem)
    {
        Parfem::findOrFail($parfem->id)->delete();
        return response()->json(['Poruka' => 'Parfem je obrisan']);
    }
}
