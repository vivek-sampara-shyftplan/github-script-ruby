FROM ghcr.io/vivek-sampara-shyftplan/github-script-ruby-base:latest

COPY docker/Gemfile /github-script-ruby/Gemfile
COPY lib/ /github-script-ruby/lib/
COPY scripts/entrypoint.rb /github-script-ruby/scripts/entrypoint.rb
COPY scripts/entrypoint.sh /github-script-ruby/scripts/entrypoint.sh

ENTRYPOINT ["/github-script-ruby/scripts/entrypoint.sh"]
