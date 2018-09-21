class RepositoriesController < ApplicationController

def github_search
     @resp = Faraday.get 'https://api.github.com/search/repositories' do |req|
         req.params['q'] = params[:query]

end
body = JSON.parse(@resp.body)
   @results = body["items"]

   render 'search'
  end
end
