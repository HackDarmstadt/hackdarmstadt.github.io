FROM ubuntu:xenial

MAINTAINER Me

#See: https://github.com/bundler/bundler/issues/4602
RUN apt-get update >/dev/null && \
    apt-get install -y nodejs ruby ruby-dev build-essential zlib1g-dev liblzma-dev && \
    gem update --system 2.6.1 && \
    gem install bundler --no-document && \
    rm -rf /var/lib/apt/lists/*

VOLUME ["/hackdarmstadt"]
COPY . /hackdarmstadt

WORKDIR /hackdarmstadt

RUN bundle install --retry=3 --jobs=8

ENTRYPOINT ["bundle", "exec"]
CMD ["jekyll", "serve --incremental"]
