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

###### versions
There are two files to support different versions of the image, so we can test
that updates work by comparing image hashes.
- docker tag `0.0.1` has file `one` added, resulting in image hash `c63fef070f16`
- docker tag `0.0.2` has file `two` added, resulting in image hash `5cb7db17eece`
