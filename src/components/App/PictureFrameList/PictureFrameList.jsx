import PictureFrameItem from "../PictureFrameItem/PictureFrameItem"

function PictureFrameList (props){
    return(
        <div>
            {props.galleryList.map((gallery)=> <PictureFrameItem description={gallery.description} path={gallery.path} key={gallery.id} likes={gallery.likes}/>)}    

        </div>
    )
}

export default PictureFrameList;