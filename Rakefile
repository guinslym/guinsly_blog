namespace :assets do
  task :precompile do
      sh "middleman build"
  end
end

task :deploy do
  sh "git push heroku master"
end


