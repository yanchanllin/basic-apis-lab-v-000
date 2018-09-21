class RepositoriesController < ApplicationController

def github_search
     @resp = Faraday.get 'https://api.github.com/search/repositories' do |req|
         req.params['client_id'] = 668602bb2d2ccefb1c21
         req.params['client_secret'] = d308ca14bcf4803745717127c033250500d87a2a
         req.params['q'] = params[:query]

end
body = JSON.parse(@resp.body)
   @results = body["items"]

   render 'search'
  end
end 
