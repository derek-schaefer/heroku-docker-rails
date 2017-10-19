FROM ruby:2.4.2

RUN apt-get update && \
    apt-get install -y apt-transport-https && \
    curl -sS "https://deb.nodesource.com/gpgkey/nodesource.gpg.key" | apt-key add - && \
    echo "deb https://deb.nodesource.com/node_8.x jessie main" >> /etc/apt/sources.list.d/node.list && \
    curl -sS "https://dl.yarnpkg.com/debian/pubkey.gpg" | apt-key add - && \
    echo "deb https://dl.yarnpkg.com/debian stable main" >> /etc/apt/sources.list.d/yarn.list && \
    apt-get update && \
    apt-get install -y nodejs yarn

RUN mkdir /opt/rails
WORKDIR /opt/rails

RUN useradd -m rails && chown rails:rails .
USER rails

COPY --chown=rails:rails Gemfile Gemfile.lock ./
RUN bundle install

COPY --chown=rails:rails . .
RUN bundle exec rake assets:precompile

CMD ["./docker-entrypoint.sh"]
