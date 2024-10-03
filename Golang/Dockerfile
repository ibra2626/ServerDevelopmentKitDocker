FROM golang:1.18-alpine

# Gerekli paketleri yükle
RUN apk add --no-cache git curl

# Go modüllerini etkinleştir ve proxy ayarla
ENV GO111MODULE=on
ENV GOPROXY=https://proxy.golang.org,direct

# Air'i yükle
RUN go install github.com/cosmtrek/air@v1.40.4

# $GOPATH/bin'i $PATH'e ekle
ENV PATH="/go/bin:${PATH}"

WORKDIR /work

CMD ["air"]