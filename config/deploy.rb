set  :project, "agov_immutable"
role :app,     "54.66.165.220", "54.66.146.93"
set  :user,    "root"
set  :runner,  "root"
set  :port,    22

set  :container, "previousnext/agov-immutable"
set  :tag,       "latest"

before "docker:deploy", "docker:pull", "docker:stop"

namespace :docker do

  task :pull do
    run "docker pull #{container}:#{tag} > /dev/null"
  end  

  task :stop, :on_error => :continue do
    run "docker stop #{project}"
    run "docker rm #{project}"
  end

  task :deploy do
    run "docker run -d -p 0.0.0.0:80:80 --env-file=/root/environment #{container}:#{tag}"
    # run "docker exec #{project} 'cd /var/www/app && ../hooks/deploy.sh'"
  end

  task :ps do
    run "docker ps"
  end

end
