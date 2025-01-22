FROM ruby:3.1.0
ENV TZ="Asia/Kolkata"
ENV RAILS_ENV=production
ENV NODE_ENV=production

# Install system dependencies
RUN apt-get update -qq && \
    apt-get install -qq --no-install-recommends \
    build-essential \
    git \
    libpq-dev \
    postgresql-client \
    curl \
    && rm -rf /var/lib/apt/lists/*

# Install Ruby dependencies
COPY Gemfile Gemfile.lock ./
RUN bundle config set --local without 'development test' && \
    bundle install --jobs 4 --retry 3

COPY . /app