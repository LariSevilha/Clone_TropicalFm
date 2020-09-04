class NewsController < ApplicationController
  before_action :set_news, only: :show

  def index
    @news = ContentBuilder.list_all.page(params[:page]).per(10)

    @page_title = "Notícias - #{site_name}"
    @description = "Acesse pare ver as últimas nóticias"
    logo
  end

  def show
    @news_categories = ContentBuilderCategory.includes(:content_builders).order(name: 'asc')
    @last_news = ContentBuilder.list_all.page(params[:page]).per(5)

    @page_title = "#{@news.title} - #{site_name}"
    @page_description = @news.summary
    @page_type = "article"
    @page_article_author = @news.written_by
    @page_article_section = @news.content_builder_category.name
    @page_article_published_time = @news.date_publish.iso8601
    logo(@news.cover_list)
  end

  def list_by_category
    @news = ContentBuilder.list_by_category(params[:category]).page(params[:page]).per(10)
    @category_news = ContentBuilderCategory.show(params[:category])

    @page_title = "#{@category_news} - #{site_name}"
    logo

    render 'index'
  end

  def search
    q = params[:q]

    order = {}
    order[:date_publish] = 'desc'

    @news = ContentBuilder.search(q, order: order)
    
    @page_title = "Busca de Notícias - #{site_name}"
    @description = "Acesse pare ver as últimas nóticias"
    logo

    render 'index'
  end

  private

  def set_news
    @news = ContentBuilder.find_by_slug(params[:slug])
    @news.content_builder_count_reads.create(ip: request.remote_ip)
  end
end
