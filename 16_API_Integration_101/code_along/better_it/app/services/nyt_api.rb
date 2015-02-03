module NYTApi
  def self.connect
  #   word = word.s.gsub(/\s+/,'%20')
    HTTParty.get("http://api.nytimes.com/svc/search/v2/articlesearch.json?fq=super%20bowl&facet_field=day_of_week&begin_date=20150101&end_date=20150206&api-key=b73d46837d9090b4208c93b46b0e0a41:18:71145553")
  end
end