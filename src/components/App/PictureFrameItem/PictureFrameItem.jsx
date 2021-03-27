import axios from 'axios';
import React, { useState, useEffect } from 'react';



function PictureFrameItem (props){

let [picture, setPicture] =  useState(true)


    const togglePicture = () =>{
        picture = setPicture(!picture)
        {props.getGallery}
    }

    const pictureOrText = () =>{
        if(picture){
            return (<img src={props.path} alt={props.description} onClick={togglePicture} />)
        }else{
            return (<p onClick={togglePicture}>{props.description}</p>)
        }
    }

    const loveClick = () => {
        axios.put('/gallery/like/' + props.id).then((response) =>{
            console.log('back from put', response)
            setLove(love + 1)
        }).catch((err) =>{
            console.log(err)
        })
    }

    const [love, setLove] = useState(props.likes)

    return(
        <>
        <div className="frame" key={props.id}>
        {pictureOrText()}
        <p><button className="loveButton" onClick={loveClick}>Love!</button></p>
        <p>Love it!: {love}</p>
        </div>
        </>
    )
}
export default PictureFrameItem;