require 'sinatra'

# GET ''/repos/:owner/:repo/commits'
# todo grab owner and repo in a generic endpoint?
# todo flatten these commits
get '/repos/:owner/:repo/commits'  do
  owner = params['owner']
  repo = params['repo']
  puts owner , repo

end