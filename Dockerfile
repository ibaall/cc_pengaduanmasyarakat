# Menggunakan image Nginx resmi sebagai dasar
FROM nginx:latest

# Hapus default config Nginx
RUN rm /etc/nginx/conf.d/default.conf

# Salin konfigurasi Nginx custom
COPY nginx.conf /etc/nginx/conf.d

# Salin folder pengaduan ke dalam folder HTML Nginx
COPY pengaduan /usr/share/nginx/html/pengaduan
