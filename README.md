# kturtle
Quick container to run kturtle. Not much luck with opensuse as a base image, as menus would not appear, but seems to work fine with ubuntu so.

# run it
Don't forget to allow the app to access your X display.

```
xhost +local:
```

It is exposing a volume under `data`. You can map your local directory to save your scripts.

```
docker run --rm --name kturtle			\
	-e DISPLAY=$DISPLAY			\
	-v /tmp/.X11-unix:/tmp/.X11-unix	\
	-v ~/kturtle_data:/data			\
	--device=/dev/dri:/dev/dri		\
	madchap/kturtle:latest
```
