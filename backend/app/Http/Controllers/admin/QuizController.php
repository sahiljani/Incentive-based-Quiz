<?php

namespace App\Http\Controllers\admin;

use App\admin\Quiz;
use App\admin\Category;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class QuizController extends Controller
{
    //
    function index() {
        $category = Category::all();
        $quiz = Quiz::all();
        return view('admin.quiz', ['category' => $category, 'quiz' => $quiz]);
    }

    function store(Request $request) {

        $validated = $request->validate([
            'name' => 'required',
            'image' => 'required|image|mimes:jpeg,png,jpg',
            'coins' => 'required',
            'category' => 'required'
        ]);

        $imageName = time() . '.' . $request->image->extension();
        $request->image->move(public_path('images'), $imageName);


        Quiz::create([
            'name' => str_replace("-"," ", $request->name),
            'image' => $imageName,
            'instruction' => $request->instructions,
            'coins' => $request->coins,
            'category' => $request->category,
            'charges' => $request->charges,
        ]);

        return back()
            ->with('message', 'You have successfully Added Quiz.');

    }


    function edit($id){

        $quiz = Quiz::find($id);

        $category = Category::all();

        return view('admin.editQuiz', [ 'quiz' => $quiz,'category' => $category ]);
    }

    function editStore(Request $request, $id){

        $quiz = Quiz::find($id);
        if ($request->image) {
                $request->validate([
                    'name' => 'required',
                    'image' => 'required|image|mimes:jpeg,png,jpg',
                    'coins' => 'required',
                    'category' => 'required'
                ]);


            $imageName = time() . '.' . $request->image->extension();
            $request->image->move(public_path('images'), $imageName);
            $quiz->update([
                'name' => str_replace("-"," ", $request->name),
                'image' => $imageName,
                'instruction' => $request->instructions,
                'coins' => $request->coins,
                'category' => $request->category,
                'charges' => $request->charges,

            ]);
        }
        else {
                $request->validate([
                    'name' => 'required',

                    'coins' => 'required',
                    'category' => 'required'
                ]);
                    $quiz->update([

                        'name' => str_replace("-"," ", $request->name),

                        'instruction' => $request->instructions,
                        'coins' => $request->coins,
                        'category' => $request->category,
                        'charges' => $request->charges,

                    ]);
                }
                $returndata['success'] = "Done";
                return back()
                ->with('message', 'You have successfully Edited Quiz.');
    }

    function delete($id){
        Quiz::where('id', $id)->delete();
        $returndata['success'] = "Done";
        return back();

    }
}
