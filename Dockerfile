FROM gcc:latest
WORKDIR /my_c_application
COPY . .
RUN gcc main.c 

ENTRYPOINT ["./a.out"]