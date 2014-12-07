kill -9 `cat /tmp/unicorn_gif-movies.pid`
unicorn_rails -c config/unicorn.rb -D
