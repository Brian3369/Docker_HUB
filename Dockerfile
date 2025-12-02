# Usamos nginx lightweight
FROM nginx:alpine

# Eliminar contenido por defecto (opcional)
RUN rm -rf /usr/share/nginx/html/*

# Copiar el archivo html al contenido servido por nginx
COPY index.html /usr/share/nginx/html/index.html

# Exponer el puerto 80
EXPOSE 80

# Comando por defecto (ya definido por la imagen base, pero lo dejamos explícito)
CMD ["nginx", "-g", "daemon off;"]
