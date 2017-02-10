FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.1.4

RUN gem install fake_sensu --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["generate_responses"]
CMD ["--help"]
