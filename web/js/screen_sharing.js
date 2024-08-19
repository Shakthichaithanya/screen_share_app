async function startScreenSharing() {
    try {
        const stream = await navigator.mediaDevices.getDisplayMedia({
            video: true,
            audio: false
        });

        const videoElement = document.createElement('video');
        videoElement.srcObject = stream;
        videoElement.play();

        // Append video to the body or any specific element
        document.body.appendChild(videoElement);

        // Optional: handle the end of screen sharing
        stream.getVideoTracks()[0].addEventListener('ended', () => {
            document.body.removeChild(videoElement);
            console.log("Screen sharing ended.");
        });
    } catch (err) {
        console.error("Error: " + err);
    }
}
