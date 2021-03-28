import axios from 'axios';
import React, { useState, useEffect } from 'react';
import './App.css';
import PictureFrameList from './PictureFrameList/PictureFrameList'

function App() {

let [ gallery, setGallery] = useState([]);
let [ url, setUrl] = useState('');
let [ description, setDescription] = useState([]);

const getGallery = () => {
  axios.get('/gallery').then((response) => {
    setGallery(response.data)
    console.log("in images")
    console.log(response.data)
  }).catch((err) => {
    console.log(err)
  })
}

const addMemory = () => {
  let addMemoryObject = {
    description: description,
    path: url,
    likes: 0
  }
  axios.post('/gallery', addMemoryObject ).then((response) => {
      console.log("in post", response)
      getGallery();
  }).catch((err) => {
      console.log(err)
  })
}

    return (

      <div className="App">
        <header className="App-header">
          <h1 className="App-title">Gallery of My Life</h1>
          <div className="addMemoryFrame">

              <div className="addMemoryFrameInput">
              <input type="text" placeholder="url" className="urlInput" onChange={ (event) => setUrl(event.target.value)}/><br></br>
              <input type="text" placeholder="Description" className="descriptionInput" onChange={(event) => setDescription(event.target.value)}/><br></br>
              </div>
              <button onClick={addMemory} className="addMemoryButton btn btn-warning">Add Memory</button>
          </div>
        </header>
        <div className="gallery">
            {useEffect(() => {getGallery() }, [])} {/*auto GETs on log */}
            {<PictureFrameList galleryList={gallery} getGallery={getGallery}/>}
        </div>
      </div>

    );
}

export default App;
