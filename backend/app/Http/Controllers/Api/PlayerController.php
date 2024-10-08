<?php

namespace App\Http\Controllers\Api;
header('Access-Control-Allow-Origin: *');

header('Access-Control-Allow-Methods: *');
header('Access-Control-Allow-Headers: *');

use App\admin\Player;
use App\admin\Playedquiz;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Arr;

class PlayerController extends Controller
{
    function playerSave(Request $request){
        $alldata = $request->json()->all();

        $name =  ($alldata['name']  ?? null ? $alldata['name'] : null);
        $email =  ($alldata['email']  ?? null ? $alldata['email'] : null);
        $profile_pic =  ($alldata['profile_pic']  ?? null ? $alldata['profile_pic'] : null);
        $coins =  ($alldata['coins']   ?? null  ? $alldata['coins'] : 0);
        $phone_number =  ($alldata['phone_number']  ?? null ? $alldata['phone_number'] : null);



        try {
           $user = Player::create([
                'name' => $name,
                'email' =>$email,
                'profile_pic' =>$profile_pic,
                'coins' =>$coins,
                'phone_number' =>$phone_number,
            ]);

         return response()->json([
            'data'    =>  $user,
        ], 200);

         } catch (\Exception $e) {

            if ($e->getCode() == 23000) {
            $playerData = Player::where('email', $email)->first();

                return response()->json([
                    'data'    => $playerData,
                ], 200);


            }
         }
    }


    function Playedquiz(Request $request){
        $alldata = $request->json()->all();
        $player_id =  ($alldata['player_id']  ?? null ? $alldata['player_id'] : null);
        $quiz_id =  ($alldata['quiz_id']  ?? null ? $alldata['quiz_id'] : null);
        
        $data = array();
        $checkedquiz = Playedquiz::query()->where('player_id','=',$player_id)->where('quiz_id',$quiz_id)->get();
        if(count($checkedquiz) > 0){
            $data['status'] = "EXIT";
            return response()->json([
                'data'    => $data,
            ], 200);
        }
        try {
         Playedquiz::create([
                'player_id' => $player_id,
                'quiz_id' => $quiz_id,
            ]);
           
            $data['status'] = "DONE";
        return response()->json([
            'data'    => $data,
        ], 200);

        } 
        catch (\Exception $e) {

        if ($e->getCode() == 23000) {
        $data['status'] = $e;

        return response()->json([
            'data'    => $data,
        ], 401);
        }

    }
        $data['status'] = "ERROR";

        return response()->json([
            'data'    => $data,
        ], 400);

    }

    function checkedplayedquiz(Request $request){
        $alldata = $request->json()->all();
        $player_id =  ($alldata['player_id']  ?? null ? $alldata['player_id'] : null);
        $quiz_id =  ($alldata['quiz_id']  ?? null ? $alldata['quiz_id'] : null);
        $checkedquiz = Playedquiz::query()->where('player_id','=',$player_id)->where('quiz_id',$quiz_id)->get();
        
        return response()->json([
            'data'    => count($checkedquiz),
        ], 200);
    }
}
