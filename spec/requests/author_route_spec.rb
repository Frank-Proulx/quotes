require 'rails_helper'

describe "search for an author route", :type => :request do
  let!(:quotes) { FactoryBot.create_list(:quote, 20)}

  before { get "/quotes?author=#{Quote.first.author}"}

  it 'returns one quote' do
    expect(JSON.parse(response.body).size).to eq(1)
  end
  
  it 'returns the quote with author: Morgan' do
    expect(JSON.parse(response.body).first['author']).to eq(Quote.first.author)
  end

  # it 'returns status code 200' do
  #   expect(response).to have_http_status(:success)
  # end
end