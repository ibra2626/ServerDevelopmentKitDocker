# 🐳 En son Go sürümüyle Alpine kullan
FROM golang:1.23-alpine

# Çalışma dizinini ayarla
WORKDIR /work

# Gerekli bağımlılıkları yükle
RUN apk add --no-cache git curl build-base

RUN go install github.com/air-verse/air@latest

# Air'i yükle (Hot Reload için)
RUN #go install github.com/cosmtrek/air@latest

# PATH ayarlarını yap
ENV PATH="/go/bin:${PATH}"


# Proje dosyalarını konteynere kopyala
COPY . .

# Varsayılan komut: Air çalıştır
CMD ["air"]
