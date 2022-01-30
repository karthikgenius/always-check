FROM ubuntu:latest AS builder

RUN apt update && apt install python3 python3-pip -y

RUN python3 -m pip install pyinstaller

RUN mkdir /root/myapp/

WORKDIR /root/myapp/

COPY main.py .

RUN pyinstaller --onefile main.py

FROM ubuntu:latest

RUN mkdir /root/myapp/

WORKDIR /root/myapp/

COPY --from=builder /root/myapp/dist/main ./myapp

CMD ["./myapp"]