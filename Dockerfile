FROM unit:1.31.0-ruby3.2

ENV BUNDLE_WITHOUT "test development"
ENV RAILS_ENV "production"

WORKDIR /app

COPY Gemfile* ./
RUN bundle install

COPY . ./
RUN ./bin/rails db:create db:migrate
RUN ./bin/rails assets:precompile

COPY unit/config/config.json /docker-entrypoint.d/
