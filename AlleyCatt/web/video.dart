import "dart:html";

class VideoThrower {
//http://techslides.com/demos/sample-videos/small.webm
  VideoThrower() {
    var playVideoButton = querySelector("#play_video_button");
    playVideoButton.addEventListener('click', (event) => playVideoWithUserInput(), false);

    print("this is called");
  }

  void playVideoWithUserInput() {
    var userUrlInput = querySelector("#video_url_input");
    var videoWrapper = querySelector("#video_wrapper");
    videoWrapper.children.clear();
    var videoElement = new VideoElement();
    videoElement.poster = "images/media-player/media-player-poster.jpg";
    videoElement.src = userUrlInput.value;
    videoElement.setAttribute("height", "100%");
    videoElement.setAttribute("width", "100%");
    videoElement.setAttribute("type", "video/mp4");
    videoElement.setAttribute("controls", "controls");
    videoElement.setAttribute("class", ".mejs-container .mejs-controls");
    videoWrapper.append(videoElement);
  }
}