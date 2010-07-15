class NewsController < ApplicationController

  def index
    require 'open-uri'
    if params[:page].nil?
      offset = 0
    else
      offset = params[:page].to_i*20-20
    end
    doc = Nokogiri::XML(open("http://www.mynewsdesk.com/partner/api/1_0/a9e6a7533e996a5c2a3275d5b393a4b0/channel/290/material/list/?type_of_media=pressreleases&limit=20&offset=#{offset}"))
    @pressreleases = doc.xpath("//item")
  end
  
  def show
    @pressrelease = News.find(params[:id])
  end

end
