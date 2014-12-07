application = "gif-movies"
listen "/tmp/unicorn_#{application}.sock"
pid "/tmp/unicorn_#{application}.pid"


stderr_path File.expand_path('log/unicorn.log', ENV['RAILS_ROOT'])
stdout_path File.expand_path('log/unicorn.log', ENV['RAILS_ROOT'])
