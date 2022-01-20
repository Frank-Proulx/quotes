require 'rails_helper'

describe "get all quotes route", :type => :request do
  Quote.destroy_all
  let!(:quotes) { FactoryBot.create_list(:quote, 9)}

  it 'returns the first 5 quotes' do
    get '/quotes?page=1'
    expect(JSON.parse(response.body).size).to eq(5)
  end

  it 'returns the last 4 quotes' do
    get '/quotes?page=2'
    expect(JSON.parse(response.body).size).to eq(4)
  end
  
  it 'returns status code 200' do
    get '/quotes'
    expect(response).to have_http_status(:success)
  end
end