FROM ubuntu

RUN mkdir k8s

COPY bin k8s/

WORKDIR k8s/

CMD ["./k8s-pods-simulator"]