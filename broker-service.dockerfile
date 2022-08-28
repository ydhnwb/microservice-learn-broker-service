# base of go image

FROM golang:1.18-alpine as builder


#create an app folder inside the docker
RUN mkdir /app

#copy this dev to app folder on docker
COPY . /app

WORKDIR /app

RUN CG0_ENABLED=0 go build -o brokerApp ./cmd/api

# just to make sure that built binary is executable
RUN chmod +x /app/brokerApp

CMD [ "/app/brokerApp" ]

# build a tiny docker image. I DONT THINK ITS NECESSARY
# FROM alpine:latest

# RUN mkdir /app

# COPY --from=builder /app/brokerApp/app /app

# CMD ["app/brokerApp"]
