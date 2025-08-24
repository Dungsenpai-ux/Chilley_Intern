# Sử dụng image Go 1.25-alpine
FROM golang:1.25-alpine

# Thiết lập thư mục làm việc
WORKDIR /app

# Copy toàn bộ code vào container
COPY . .

# Tải các dependencies
RUN go mod tidy

# Biên dịch ứng dụng
RUN go build -o main .



# Chạy ứng dụng
CMD ["./main"]