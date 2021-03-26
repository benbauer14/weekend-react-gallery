function PictureFrameItem (props){

let picture = true;
let display = ''

    const togglePicture = () =>{
        picture = !picture
    }

    const pictureOrText = () =>{

    }

    return(
        <>
        <div className="frame">
        <img height='300px' src={props.path}  />
        </div>
        </>
    )
}
export default PictureFrameItem;