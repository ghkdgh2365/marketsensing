require 'open-uri'
require 'nokogiri'
class HomeController < ApplicationController
  def index
  
  end
  def list
    @lists = News.all
    @cate_no  = params[:cate_no]
    @list = @lists.where(cate_no: @cate_no)
  end
end

        # doc.css(".desc_thumb > span").each do |x|
        #     @describe << x.inner_text
        # end