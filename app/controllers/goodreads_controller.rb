class GoodreadsController < ApplicationController
  def index
    @goodreads = HTTP.headers("Authorization" => "Bearer #{ENV['goodreads_api_key']}").get("https://www.goodreads.com/search.xml?q=#{params[:search]}").parse["results"]
    render 'index.json.jb'
  end
end
