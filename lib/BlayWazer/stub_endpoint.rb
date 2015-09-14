require 'sinatra'
require 'json'

PATH_TO_REPONSES = './stub_responses/'
# todo grab owner and repo in a generic endpoint?
# todo maybe check for authenticated of not in a helper method
# todo flatten these commits
get '/repos/:owner/:repo/commits'  do
  owner = params['owner']
  repo = params['repo']
  content_type :json
  params.to_json

end

def read_from_persistent_storage(fname)
  file_exists = File.exists? fname
  file_empty = File.zero?(fname) if file_exists
  existing = []
  if file_exists && !file_empty
    existing = JSON.parse(IO.read(fname))
  end
  existing
end