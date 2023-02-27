FROM ubuntu:18.04

WORKDIR /app

RUN apt-get update

RUN apt-get install nasm

RUN apt-get install binutils -y

COPY ./asm/. .

RUN nasm -f elf64 main.asm

RUN ld main.o -o main

CMD [ "./main" ]