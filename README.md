# kturtle
Quick container to run kturtle. Not much luck with opensuse as a base image, as menus would not appear, but seems to work fine with ubuntu so.

# run it
Don't forget to allow the app to access your X display.

```
xhost +local:
```

```
docker run --rm --name kturtle \                                                                                                          
	-e DISPLAY=$DISPLAY \
	-v /tmp/.X11-unix:/tmp/.X11-unix \
	--device=/dev/dri:/dev/dri 
	madchap/kturtle:latest
```
