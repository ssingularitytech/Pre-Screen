  FROM ruby:3.2.0
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

  # Install Node.js and Yarn
  RUN curl -fsSL https://deb.nodesource.com/setup_19.x | bash - && \
      apt-get update && apt-get install -y nodejs && \
      npm install -g yarn@2 && \
      npm install -g esbuild

  WORKDIR /app

  # Install Ruby dependencies
  COPY Gemfile Gemfile.lock ./
  RUN bundle config set --local without 'development test' && \
      bundle install --jobs 4 --retry 3

  # Install JS dependencies
  COPY package.json yarn.lock ./
  RUN yarn install

  # Copy application code
  COPY . .

  # Precompile assets
  RUN SECRET_KEY_BASE=1 bundle exec rake assets:precompile

  EXPOSE 8181

  CMD ["bundle", "exec", "puma", "-C", "config/puma.rb"]