# Sử dụng image Node.js làm base
FROM node:latest

# Tạo thư mục làm việc trong container
WORKDIR /app

# Copy mã nguồn từ thư mục project vào thư mục làm việc
COPY server ./server

# Di chuyển vào thư mục server
WORKDIR /app/server

# Cài đặt các dependencies
RUN npm install

# Expose cổng mà ứng dụng của bạn chạy trên
EXPOSE 3000

# Chạy ứng dụng khi container được khởi chạy
CMD ["npm", "start"]
