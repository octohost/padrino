FROM octohost/ruby-1.9.3p484

RUN mkdir /srv/www
ADD . /srv/www
RUN cd /srv/www; bundle install;

EXPOSE 3000

CMD cd /srv/www; PADRINO_ENV=production bundle exec padrino start