import axios from 'axios';
import React, { useState, useEffect } from 'react';



function PictureFrameItem (props){

let [picture, setPicture] =  useState(true)
let [love, setLove] = useState(props.likes)

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
        axios.put('/gallery/like/?id=' + props.id + "&likes="+love).then((response) =>{
            console.log('back from put. Likes are:', response)
            setLove(response.data)
        }).catch((err) =>{
            console.log(err)
        })
    }

    const deleteClick = () => {
        if (confirm('Are you sure you want to delete this photo from the database?')) {
            // Delete it!
            axios.delete('/gallery/' + props.id).then((response) =>{
                console.log('Photo was deleted from the database. Response: ',response);
            }).catch((err) =>{
                console.log(err)
            })
          } else {
            // Do nothing!
            console.log('Photo was not deleted.');
          }

    }


    return(
        <>
        <div className="frame" >
        <p>{pictureOrText()}</p>
        <div class="btn-group gap-1" role="group" aria-label="Basic example">
            <button className="btn btn-info btn-sm" onClick={loveClick}>Love!</button>
            <button className="btn btn-danger btn-sm" onClick={deleteClick}>Delete</button></div>
        <p>Love it!: {love}</p>
        </div>
        </>
    )
}
export default PictureFrameItem;