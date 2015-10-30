# dummy-image
This small docker image is used for integration tests. It does only sleep
infinitive and exists cleanly with 0 on `docker stop`.

Note, the "trick" of signal handling was inspired by
https://medium.com/@gchudnov/trapping-signals-in-docker-containers-7a57fdda7d86#.g2axh2sjg.

###### build
```
docker build -t dummy-image .
```

###### run
```
// run
docker run dummy-image

// stop container
docker stop <id>

// check exit code
echo $?
0
```
