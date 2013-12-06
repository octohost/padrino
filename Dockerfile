FROM octohost/ruby-1.9.3p484

RUN mkdir /srv/www
ADD . /srv/www
RUN cd /srv/www; bundle install;

EXPOSE 3000

CMD cd /srv/www; padrino start --host 0.0.0.0