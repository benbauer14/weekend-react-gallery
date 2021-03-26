import axios from 'axios';
import React, { useState, useEffect } from 'react';
import './App.css';
import PictureFrameList from './PictureFrameList/PictureFrameList'



function App() {

let [ gallery, setGallery] = useState([]);

const getGallery = () => {
  axios.get('/gallery').then((response) => {
    setGallery(response.data)
    console.log("in images")
    console.log(response.data)
  }).catch((err) => {
    console.log(err)
  })
}

    return (

      <div className="App">
        <header className="App-header">
          <h1 className="App-title">Gallery of My Life</h1>
        </header>
        <p>Gallery goes here</p>
        <img src="images/goat_small.jpg"/>
        {useEffect(() => {getGallery() }, [])} {/*auto GETs on log */}
        {<PictureFrameList galleryList={gallery}/>}
      </div>

    );
}

export default App;
