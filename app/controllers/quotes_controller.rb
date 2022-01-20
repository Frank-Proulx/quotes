class QuotesController < ApplicationController
  def random
    @quotes = Quote.all.shuffle.sample
    json_response(@quotes)
  end
  
  def index
    author = params[:author]
    if author
      @quotes = Quote.search_author(author).paginate(page: params[:page], per_page: 5)
    elsif !params[:page]
      @quotes = Quote.all
    else
      @quotes = Quote.paginate(page: params[:page], per_page: 5)
    end
    json_response(@quotes)
  end

  def show
    @quote = Quote.find(params[:id])
    json_response(@quote)
  end

  def create
    @quote = Quote.create!(quote_params)
    json_response(@quote, :created)
  end

  def update
    @quote = Quote.find(params[:id])
    if @quote.update!(quote_params)
      render status: 200, json: {
      message: "This quote has been updated successfully."
      }
    end
  end

  def destroy
    @quote = Quote.find(params[:id])
    if @quote.destroy
      render status: 200, json: {
      message: "This quote has been deleted successfully."
      }
    end
  end

  private
  
  def quote_params
    params.permit(:author, :content)
  end
end