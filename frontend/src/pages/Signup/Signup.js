import React from 'react'
import Sideposter from '../Components/layout/Sideposter'
import Footer from '../Components/layout/Footer'
import { Link } from 'react-router-dom'
import { GoogleLogin } from 'react-google-login';
import { useGoogleLogout } from 'react-google-login'
import { gapi } from 'gapi-script';
import { useState, useEffect } from 'react';
import { useQuery } from 'react-query'
import { AddPlayer } from './FetchApi'
import Backendurl from '../Helper/Backendurl'
import { useNavigate } from "react-router-dom";
import { FetchsettingApi } from '../Components/FetchApi'
import MarkdownPreview from '@uiw/react-markdown-preview';

const Signup = () => {
    const [ isLogged, setisLogged ] = useState(false);
    const [ isSignedIn, setisSignedIn ] = useState(false);
    const [myData, setmyData] = useState();
    const [logCheck, setlogCheck] = useState(false);
    let navigate = useNavigate();


    const [instruction, setinstruction] = useState("");

    const SettingData = useQuery('SettingData', FetchsettingApi); 
    useEffect(()=>{
        const { data, error, isError, isLoading } = SettingData;    
        if(!isLoading){
            setinstruction(data.data[0].Firstpageinstructions);        }        
        },[SettingData]);

useEffect(()=>{
    async function refetchMydata(){
    
        if(myData){
                const Addedcoins =  localStorage.getItem("coins"); 
                const url = await Backendurl();  
                const  data  = await fetch(`${url}/api/player/save`,
                {
                    method: 'POST',                    
                    mode: 'cors',
                    body: JSON.stringify({
                    "name":myData.name,
                    "email":myData.email,
                    "profile_pic":myData.profilepic,
                    "coins":Addedcoins,                    
                    })
                } );
                const content = await data.json();                
                localStorage.setItem("profileData",  JSON.stringify(content.data));
                const playerinfo = await JSON.parse(localStorage.getItem("profileData"));
                const player_id = await playerinfo.id; 
                const LoggedPlayedQuiz = await fetch(`${url}/api/playedQuiz/${player_id}`);
                const res = await LoggedPlayedQuiz.json();                
                localStorage.setItem('playedquiz', JSON.stringify(res.toString()));
                return data
            }
        }
      refetchMydata();
},[myData])

    const clientId = '824447639674-csj63i8iq4s81c7080pt44aksjsnursi.apps.googleusercontent.com';

    useEffect(() => {
    const initClient = () => {
            gapi.client.init({
            clientId: clientId,
            scope: ''
        });
        };
        gapi.load('client:auth2', initClient);
    });

      
    const onSuccess = async (res) => {
        const isLoggedIn = localStorage.getItem('isLoggedIn');

        // console.log(res.profileObj);
        localStorage.setItem('isLoggedIn', true);   
        setlogCheck(isLoggedIn);           
        const PorjectData = await res.profileObj;       
        const name = await PorjectData.name;
        const email =  await PorjectData.email;
        const profilepic = await PorjectData.imageUrl;       
        setisLogged(true);
        setmyData({name,email,profilepic})
        
        //  navigate('/home');                 
    }
    return (
    <>      
    <div className="md:flex">     
    <div className='left-cotaniner 
    bg-[#111827] overflow-x-hidden h-screen overflow-y-auto 
    md:max-w-[500px] md:w-[500px] min-w-[360px] w-full xs:w-full'>   
        
            <div className="singleheader w-full flex flex-start gap-2 mb-5"> 
                <div className="backbtn">
                    <Link to="/Home" className='backbutton'>
                        <svg xmlns="http://www.w3.org/2000/svg" 
                        fill="white" viewBox="0 0 24 24" strokeWidth="{1.5}" stroke="currentColor" 
                        className="w-6 h-6">
                            <path strokeLinecap="round" strokeLinejoin="round" d="M15.75 19.5L8.25 12l7.5-7.5" />
                        </svg>
                    </Link>                    
                </div>

                
                <div className='logo'>
                    <img src="/quizlogo.png" className='w-[100px] h-[30px]' alt="logo"/>
                </div>
            </div>
   
       

        <div className="loginsection mt-[100px]">
            
            <div className="text-center font-bold text-white text-[18px]">
                Join QuizTwiz now!👋
            </div>         
            <div className="mt-2 text-[12px] text-[#8789c3] text-center">
                Play Quizzes and Win Coins
            </div> 
            
            <div className="mt-8 w-[60%] m-auto rounded-full border-2 
            border-solid border-white ">
                <input className="w-full bg-[#1f2937] text-white rounded-full bg-primary py-3 text-center px-4" 
                placeholder="Enter phone number" type="tel" autoComplete="tel" />
            </div> 

            <div className="m-auto mt-8 w-[60%] ">
                <div className="text-sm font-black 
                text-white rounded-full px-24 py-3 border-white 
                border-solid border-2 mt-4 text-center bg-[#1a2f77]">
                GET CODE
                </div>
            </div> 

            <div className='googlelogin mt-10 
            border-b border-[#1a2f77] flex
            border-solid pb-10 w-[100%] justify-center'>                
                <br />
                <br />
                {(!logCheck) ?
                <GoogleLogin
                clientId={clientId}
                buttonText="Sign in with Google"
                onSuccess={onSuccess}
                // onFailure={onFailure}
                cookiePolicy={'single_host_origin'}
                isSignedIn={true}
                />
               :""
               }            
            </div>
        </div>

       
        <div className="rules mt-[80px] w-full pl-5">            
            {(instruction) ? 
                <>
                    <div className="instruction">
                    <MarkdownPreview source={instruction} />
                    </div>
                </>
                :""}
        </div>
    <Footer />
    </div>
    <Sideposter />
    </div>
    </>
  )
}

export default Signup