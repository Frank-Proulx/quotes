require 'rails_helper'

describe "update a quote route", :type => :request do
  let!(:quotes) { FactoryBot.create_list(:quote, 20)}
  before do
    put "/quotes/#{Quote.first.id}", params: { :author => 'test_author_updated', :content => 'test_content_updated' }
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(200)
  end

  it 'returns an updated status message' do
    expect(JSON.parse(response.body)['message']).to eq("This quote has been updated successfully.")
  end

  it 'should have new author and content' do
    expect(Quote.first.author).to eq("test_author_updated")
    expect(Quote.first.content).to eq("test_content_updated")
  end
end
