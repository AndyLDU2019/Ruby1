require 'sinatra'

# Lista de mensajes
mensajes = [
  "Hoy es un gran día para aprender algo nuevo.",
  "La práctica hace al maestro.",
  "Cada línea de código te acerca a tu objetivo.",
  "Nunca dejes de mejorar.",
  "Recuerda siempre depurar y probar tu código."
]

get '/' do
  # Selecciona un mensaje aleatorio
  mensaje = mensajes.sample
  mensaje
end

# Inicia el servidor
run! if app_file == $0
