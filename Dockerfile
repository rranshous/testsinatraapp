FROM ruby:2.2.0
MAINTAINER Robby Ranshous <rranshous@gmail.com>

ADD . /opt/app
WORKDIR /opt/app
RUN bundle install
EXPOSE 5000
ENV PORT 5000

ENTRYPOINT ["bundle","exec"]
CMD ["ruby","app.rb","-s","Puma","-e","0.0.0.0"]
