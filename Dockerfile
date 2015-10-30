FROM alpine
ADD ./sleep_and_trap /
ENTRYPOINT [ "/sleep_and_trap" ]
