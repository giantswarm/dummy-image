FROM alpine
ADD ./sleep_and_trap /
#ADD ./one /
ADD ./two /
ENTRYPOINT [ "/sleep_and_trap" ]
