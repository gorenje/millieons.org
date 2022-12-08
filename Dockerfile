FROM jekyll/jekyll:3.8

COPY Gemfile .
COPY Gemfile.lock .

RUN gem install bundler
RUN bundle
