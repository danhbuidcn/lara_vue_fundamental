FROM php:8.3.1-cli

# Install required dependencies
RUN apt-get update \
    && apt-get install -y \
        build-essential \
        git \
        curl \
        npm \
    && rm -rf /var/lib/apt/lists/*

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Install NodeJS and npm
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash \
    && . ~/.nvm/nvm.sh \
    && nvm install v20.10.0 \
    && nvm alias default v20.10.0 \
    && npm install -g npm

# Set working directory
WORKDIR /app

# Copy existing application directory contents
COPY . /app

# Copy existing application directory permissions
COPY --chown=www:www . /app

EXPOSE 8000
CMD ["php", "artisan", "serve", "--host=0.0.0.0"]
