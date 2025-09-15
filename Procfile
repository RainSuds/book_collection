web: bundle exec puma -C config/puma.rb
release: /bin/sh -lc "if [ -n \"$DATABASE_URL\" ]; then bundle exec rails db:migrate; else echo 'Skipping db:migrate (no DATABASE_URL)'; fi"
