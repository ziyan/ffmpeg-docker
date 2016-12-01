STATIC_FFMPEG_URL := "https://johnvansickle.com/ffmpeg/releases/ffmpeg-release-64bit-static.tar.xz"

.PHONY: all
all: docker

.PHONY: all
docker: ffmpeg
	docker build -t ziyan/ffmpeg .

ffmpeg: ffmpeg-release-64bit-static.tar.xz
	tar xvpf ffmpeg-release-64bit-static.tar.xz ffmpeg-3.2.1-64bit-static/ffmpeg --strip 1

ffmpeg-release-64bit-static.tar.xz:
	wget "${STATIC_FFMPEG_URL}" -O $@

