import React, { useState, useEffect } from 'react';

function PictureFrameItem (props){

let [picture, setPicture] =  useState(true)


    const togglePicture = () =>{
        picture = setPicture(!picture)
        pictureOrText()
    }

    const pictureOrText = () =>{
        if(picture){
            return (<img src={props.path} alt={props.description} onClick={togglePicture} />)
        }else{
            return (<p onClick={togglePicture}>{props.description}</p>)
        }
    }

    const loveClick = () => {

    }
    
    return(
        <>
        <div className="frame">
        {pictureOrText()}
        <p><button className="loveButton" onClick={loveClick}>Love!</button></p>
        <p>Love it!: {props.likes}</p>
        </div>
        </>
    )
}
export default PictureFrameItem;