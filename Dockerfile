FROM ruby:3.2-slim

# Install build dependencies for native gem extensions
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
      build-essential \
      zlib1g-dev && \
    rm -rf /var/lib/apt/lists/*

# Install Jekyll and Bundler
RUN gem install jekyll bundler

WORKDIR /srv/jekyll

# Copy Gemfile and install dependencies
COPY Gemfile Gemfile.lock ./
RUN bundle install

# Copy site source
COPY . /srv/jekyll

EXPOSE 4000 35729

CMD ["bundle", "exec", "jekyll", "serve", \
     "--watch", "--host=0.0.0.0", "--livereload", "--drafts", "--trace"]
