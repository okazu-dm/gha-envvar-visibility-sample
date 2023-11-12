FROM busybox:latest AS build-stage

RUN yes "run job outside of artifact" | head -n10000 > build_result.txt 
RUN sleep 5
RUN echo "build job done"

FROM busybox:latest

RUN echo "Hello World" > /hello.txt
COPY --from=build-stage /build_result.txt /build_result.txt

RUN sleep 5

ENTRYPOINT [ "ls", "-la", "/" ]
