class NewsController < ApplicationController

  def index
    require 'open-uri'
    doc = Nokogiri::XML(open("http://www.mynewsdesk.com/partner/api/1_0/a9e6a7533e996a5c2a3275d5b393a4b0/channel/290/material/list/?type_of_media=pressreleases&limit=20"))
    @pressreleases = doc.xpath("//item")
  end
  
  def show
    require 'open-uri'
    doc = Nokogiri::XML(open("http://www.mynewsdesk.com/partner/api/1_0/a9e6a7533e996a5c2a3275d5b393a4b0/channel/290/material/view/?item_id=#{params[:id]}&type_of_media=pressrelease"))
    @pressrelease = doc
  end

end