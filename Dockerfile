FROM busybox

ADD ffmpeg /bin/ffmpeg

ENTRYPOINT ["/bin/ffmpeg"]
