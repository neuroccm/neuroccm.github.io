FROM jekyll/jekyll:latest

WORKDIR /srv/jekyll

# Copy Gemfile and (optionally) Gemfile.lock
COPY Gemfile Gemfile.lock ./

# Make sure all gems are installed here:
RUN bundle install

# (Optional) Copy your site code AFTER bundling:
COPY . /srv/jekyll

# Default command for serving Jekyll:
CMD ["jekyll", "serve", "--host", "0.0.0.0", "--drafts", "--trace"]