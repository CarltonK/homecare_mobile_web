FROM debian:stable-slim AS build

WORKDIR /app

RUN apt-get update -y && apt-get install -y \
    curl git unzip xz-utils zip bash libglu1-mesa \
    && rm -rf /var/lib/apt/lists/*

# Install Flutter
RUN git clone https://github.com/flutter/flutter.git /usr/local/flutter
ENV PATH="/usr/local/flutter/bin:/usr/local/flutter/bin/cache/dart-sdk/bin:${PATH}"

# Configure Flutter
RUN flutter channel stable && flutter upgrade
RUN flutter config --enable-web && flutter doctor -v

# Copy dependencies first
COPY pubspec.yaml pubspec.lock ./
RUN flutter pub get

# Copy rest of the app
COPY . .

# Build the Flutter web app
RUN flutter build web --release

# Stage 2: Serve with Nginx
FROM nginx:stable AS production

WORKDIR /usr/share/nginx/html

# Copy built Flutter web app from the previous stage
COPY --from=build /app/build/web ./

# Set permissions
RUN chmod -R 755 /usr/share/nginx/html

# Copy Nginx configurations
COPY nginx/nginx.conf /etc/nginx/conf.d/default.conf

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]