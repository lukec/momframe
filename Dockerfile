FROM ubuntu:14.04

RUN apt-get update
RUN apt-get -y install libxml2-dev libexpat1-dev curl build-essential perl libssl-dev
RUN apt-get clean && apt-get autoclean
RUN curl -L http://cpanmin.us | perl - App::cpanminus
RUN cpanm -v --notest Flickr::API2 YAML Email::Stuff XML::Atom::Client DateTime::Format::Atom
ADD bin /app/bin

ENTRYPOINT /app/bin/momframe-send
