class News < ActiveRecord::Base
  require 'open-uri'
  def self.columns() @columns ||= []; end

  def self.column(name, sql_type = nil, default = nil, null = true)
    columns << ActiveRecord::ConnectionAdapters::Column.new(name.to_s, default, sql_type.to_s, null)
  end

  column :news_id, :integer
  column :title, :string
  column :published_at, :string
  column :image, :string
  column :body, :string

  def self.find(*args)  
    if args.first.to_s == 'all'
      # not implemented
    else
      doc = Nokogiri::XML(open("http://www.mynewsdesk.com/partner/api/1_0/a9e6a7533e996a5c2a3275d5b393a4b0/channel/290/material/view/?item_id=#{args}&type_of_media=pressrelease"))      
      image = nil
      image = doc.at_css("image").text unless doc.at_css("image").nil?
      self.new(
        :news_id => doc.at_css("id").text,
        :title => doc.at_css("header").text,
        :published_at => doc.at_css("published_at").text,
        :image => image,
        :body => doc.at_css("body").content
      )
    end
  end
end