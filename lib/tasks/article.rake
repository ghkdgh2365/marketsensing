namespace :data do
  desc "news crawling"
  task :news => :environment do
    require 'open-uri'
    require 'nokogiri'
    for @date in 20180601..20180718
      for @i in 1..10
        doc = Nokogiri::HTML(open("http://media.daum.net/breakingnews/society?page=#{@i}&regDate=#{@date}"))
        doc.css(".list_news2 > li> .cont_thumb > .tit_thumb > a").each do |x|
          if x.inner_text.include?("교육") or x.inner_text.include?("에듀테크") or x.inner_text.include?("영어 교육") or x.inner_text.include?("영어교육") or x.inner_text.include?("학원") or x.inner_text.include?("edutech") or x.inner_text.include?("EDUTECH") or x.inner_text.include?("교육 트렌드") or x.inner_text.include?("A.I") or x.inner_text.include?("AI") or x.inner_text.include?("ai") or x.inner_text.include?("인공지능") or x.inner_text.include?("adaptive learning") or x.inner_text.include?("AR 교육") or x.inner_text.include?("VR 교육") or x.inner_text.include?("증강현실 교육") or x.inner_text.include?("가상현실 교육") or x.inner_text.include?("ar 교육") or x.inner_text.include?("vr 교육") 
            @news = News.new
            @news.title = x.inner_text 
            @news.url = x['href'] 
            @news.cate_no = 0
            @news.category = "사회"
            @news.save
          end
        end
        
        doc = Nokogiri::HTML(open("http://media.daum.net/breakingnews/economic?page=#{@i}&regDate=#{@date}"))
        doc.css(".list_news2 > li> .cont_thumb > .tit_thumb > a").each do |x|
          if x.inner_text.include?("교육") or x.inner_text.include?("에듀테크") or x.inner_text.include?("영어 교육") or x.inner_text.include?("영어교육") or x.inner_text.include?("학원") or x.inner_text.include?("edutech") or x.inner_text.include?("EDUTECH") or x.inner_text.include?("교육 트렌드") or x.inner_text.include?("A.I") or x.inner_text.include?("AI") or x.inner_text.include?("ai") or x.inner_text.include?("인공지능") or x.inner_text.include?("adaptive learning") or x.inner_text.include?("AR 교육") or x.inner_text.include?("VR 교육") or x.inner_text.include?("증강현실 교육") or x.inner_text.include?("가상현실 교육") or x.inner_text.include?("ar 교육") or x.inner_text.include?("vr 교육")
            @news = News.new
            @news.title = x.inner_text 
            @news.url = x['href']
            @news.cate_no = 1
            @news.category = "경제"
            @news.save
          end
        end
        
        doc = Nokogiri::HTML(open("http://media.daum.net/breakingnews/foreign?page=#{@i}&regDate=#{@date}"))
        doc.css(".list_news2 > li> .cont_thumb > .tit_thumb > a").each do |x|
          if x.inner_text.include?("교육") or x.inner_text.include?("에듀테크") or x.inner_text.include?("영어 교육") or x.inner_text.include?("영어교육") or x.inner_text.include?("학원") or x.inner_text.include?("edutech") or x.inner_text.include?("EDUTECH") or x.inner_text.include?("교육 트렌드") or x.inner_text.include?("A.I") or x.inner_text.include?("AI") or x.inner_text.include?("ai") or x.inner_text.include?("인공지능") or x.inner_text.include?("adaptive learning") or x.inner_text.include?("AR 교육") or x.inner_text.include?("VR 교육") or x.inner_text.include?("증강현실 교육") or x.inner_text.include?("가상현실 교육") or x.inner_text.include?("ar 교육") or x.inner_text.include?("vr 교육")
            @news = News.new
            @news.title = x.inner_text 
            @news.url = x['href']
            @news.cate_no = 2
            @news.category = "국제"
            @news.save
          end
        end
        
        doc = Nokogiri::HTML(open("http://media.daum.net/breakingnews/culture?page=#{@i}&regDate=#{@date}"))
        doc.css(".list_news2 > li> .cont_thumb > .tit_thumb > a").each do |x|
          if x.inner_text.include?("교육") or x.inner_text.include?("에듀테크") or x.inner_text.include?("영어 교육") or x.inner_text.include?("영어교육") or x.inner_text.include?("학원") or x.inner_text.include?("edutech") or x.inner_text.include?("EDUTECH") or x.inner_text.include?("교육 트렌드") or x.inner_text.include?("A.I") or x.inner_text.include?("AI") or x.inner_text.include?("ai") or x.inner_text.include?("인공지능") or x.inner_text.include?("adaptive learning") or x.inner_text.include?("AR 교육") or x.inner_text.include?("VR 교육") or x.inner_text.include?("증강현실 교육") or x.inner_text.include?("가상현실 교육") or x.inner_text.include?("ar 교육") or x.inner_text.include?("vr 교육")
            @news = News.new
            @news.title = x.inner_text 
            @news.url = x['href']
            @news.cate_no = 3
            @news.category = "문화"
            @news.save
          end
        end
        
        doc = Nokogiri::HTML(open("http://media.daum.net/breakingnews/digital?page=#{@i}&regDate=#{@date}"))
        doc.css(".list_news2 > li> .cont_thumb > .tit_thumb > a").each do |x|
          if x.inner_text.include?("교육") or x.inner_text.include?("에듀테크") or x.inner_text.include?("영어 교육") or x.inner_text.include?("영어교육") or x.inner_text.include?("학원") or x.inner_text.include?("edutech") or x.inner_text.include?("EDUTECH") or x.inner_text.include?("교육 트렌드") or x.inner_text.include?("A.I") or x.inner_text.include?("AI") or x.inner_text.include?("ai") or x.inner_text.include?("인공지능") or x.inner_text.include?("adaptive learning") or x.inner_text.include?("AR 교육") or x.inner_text.include?("VR 교육") or x.inner_text.include?("증강현실 교육") or x.inner_text.include?("가상현실 교육") or x.inner_text.include?("ar 교육") or x.inner_text.include?("vr 교육")
            @news.title = x.inner_text 
            @news.url = x['href']
            @news.cate_no = 4
            @news.category = "IT"
            @news.save
          end
        end
        
        doc = Nokogiri::HTML(open("http://media.daum.net/breakingnews/editorial?page=#{@i}&regDate=#{@date}"))
        doc.css(".list_news2 > li> .cont_thumb > .tit_thumb > a").each do |x|
          if x.inner_text.include?("교육") or x.inner_text.include?("에듀테크") or x.inner_text.include?("영어 교육") or x.inner_text.include?("영어교육") or x.inner_text.include?("학원") or x.inner_text.include?("edutech") or x.inner_text.include?("EDUTECH") or x.inner_text.include?("교육 트렌드") or x.inner_text.include?("A.I") or x.inner_text.include?("AI") or x.inner_text.include?("ai") or x.inner_text.include?("인공지능") or x.inner_text.include?("adaptive learning") or x.inner_text.include?("AR 교육") or x.inner_text.include?("VR 교육") or x.inner_text.include?("증강현실 교육") or x.inner_text.include?("가상현실 교육") or x.inner_text.include?("ar 교육") or x.inner_text.include?("vr 교육")
            @news = News.new
            @news.title = x.inner_text 
            @news.url = x['href']
            @news.cate_no = 5
            @news.category = "칼럼"
            @news.save
          end
        end
        
        doc = Nokogiri::HTML(open("http://media.daum.net/breakingnews/press?page=#{@i}&regDate=#{@date}"))
        doc.css(".list_news2 > li> .cont_thumb > .tit_thumb > a").each do |x|
          if x.inner_text.include?("교육") or x.inner_text.include?("에듀테크") or x.inner_text.include?("영어 교육") or x.inner_text.include?("영어교육") or x.inner_text.include?("학원") or x.inner_text.include?("edutech") or x.inner_text.include?("EDUTECH") or x.inner_text.include?("교육 트렌드") or x.inner_text.include?("A.I") or x.inner_text.include?("AI") or x.inner_text.include?("ai") or x.inner_text.include?("인공지능") or x.inner_text.include?("adaptive learning") or x.inner_text.include?("AR 교육") or x.inner_text.include?("VR 교육") or x.inner_text.include?("증강현실 교육") or x.inner_text.include?("가상현실 교육") or x.inner_text.include?("ar 교육") or x.inner_text.include?("vr 교육")
            @news = News.new
            @news.title = x.inner_text
            @news.url = x['href']
            @news.cate_no = 6
            @news.category = "보도자료"
            @news.save
          end
        end
        
      end
    end

  end
end