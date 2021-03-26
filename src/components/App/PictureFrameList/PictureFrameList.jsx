import PictureFrameItem from "../PictureFrameItem/PictureFrameItem"

function PictureFrameList (props){
    return(
        <>
            {props.galleryList.map((gallery)=> <PictureFrameItem description={gallery.description} path={gallery.path} key={gallery.id} likes={gallery.likes}/>)}    
        </>
    )
}

export default PictureFrameList;