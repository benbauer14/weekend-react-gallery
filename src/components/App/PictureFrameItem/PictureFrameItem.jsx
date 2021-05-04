import axios from 'axios';
import React, { useState, useEffect } from 'react';



function PictureFrameItem (props){

//set states
let [picture, setPicture] =  useState(true)
let [love, setLove] = useState(props.likes)

//toggle picture to allow for flipping between text and pictures
    const togglePicture = () =>{
        picture = setPicture(!picture)
        {props.getGallery}
    }
//function that flips between text and picture based on value of picture
    const pictureOrText = () =>{
        if(picture){
            return (<img src={props.path} alt={props.description} onClick={togglePicture} />)
        }else{
            return (<p onClick={togglePicture}>{props.description}</p>)
        }
    }
//function for when love is clicked
    const loveClick = () => {
        //send PUT route to update likes based on ID
        axios.put('/gallery/like/?id=' + props.id + "&likes="+love).then((response) =>{
            console.log('back from put. Likes are:', response)
            //set the love value based on the response from the database after updating like count
            setLove(response.data)
        }).catch((err) =>{
            console.log(err)
        })
    }
//delete function
    const deleteClick = () => {
        //user confirm deletion
        if (confirm('Are you sure you want to delete this photo from the database?')) {
            // Delete it!
            axios.delete('/gallery/' + props.id).then((response) =>{
                console.log('Photo was deleted from the database. Response: ',response);
                location.reload()
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