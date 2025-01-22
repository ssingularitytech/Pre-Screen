FROM ruby:3.2.0

ENV RAILS_ENV=production
ENV TZ="Asia/Kolkata"

# Install system dependencies
RUN apt-get update -qq && \
    apt-get install -y \
    build-essential \
    git \
    libpq-dev \
    postgresql-client \
    curl

WORKDIR /app

# Install Ruby dependencies
COPY Gemfile Gemfile.lock ./
RUN bundle config set --local without 'development test' && \
    bundle install --jobs 4 --retry 3

# Copy application code
COPY . .

# Start Sidekiq
CMD ["bundle", "exec", "sidekiq", "-e", "production", "-C", "config/sidekiq.yml"]