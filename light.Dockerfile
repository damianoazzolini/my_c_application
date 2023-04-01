FROM gcc:latest AS compile_stage
WORKDIR /my_c_application
COPY . .
RUN gcc main.c -o compiled

FROM ubuntu:latest
WORKDIR /my_c_application
COPY --from=compile_stage /my_c_application/compiled .
ENTRYPOINT ["./compiled"]
