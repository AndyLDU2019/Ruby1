# Usa una imagen base de Ruby
FROM ruby:2.7

# Establece el directorio de trabajo
WORKDIR /app

# Copia el archivo Gemfile y Gemfile.lock (si existe)
COPY Gemfile Gemfile.lock /app/

# Instala las dependencias
RUN bundle install

# Copia el código fuente al contenedor
COPY . /app/

# Expone el puerto donde Sinatra escucha
EXPOSE 4567

# Comando para iniciar la aplicación
CMD ["ruby", "app.rb"]

