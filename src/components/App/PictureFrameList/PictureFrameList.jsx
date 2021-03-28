import PictureFrameItem from "../PictureFrameItem/PictureFrameItem"

function PictureFrameList (props){
    //use props to get list of gallery and map over to PictureFrameItem to build frames
    return(
        <>
            {props.galleryList.map((gallery)=> <PictureFrameItem description={gallery.description} path={gallery.path} key={gallery.id} id={gallery.id} likes={gallery.likes} getGallery={props.getGallery}/>)}    
        </>
    )
}

export default PictureFrameList;