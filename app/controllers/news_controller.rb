class NewsController < ApplicationController
  before_action :set_news, only: :show

  def index
    @news = ContentBuilder.list_all.page(params[:page]).per(10)
    @page_title = "Notícias"
    @description = "Acesse pare ver as últimas nóticias"
    logo
  end

  def show
    @page_title = @news.title
    @page_description = @news.summary
    @news_categories = ContentBuilderCategory.includes(:content_builders).order(name: 'asc')
    @last_news = ContentBuilder.list_all.page(params[:page]).per(5)
    logo(@news.cover_list)
  end

  def list_by_category
    @news = ContentBuilder.list_by_category(params[:category]).page(params[:page]).per(10)
    @category_news = @page_title = ContentBuilderCategory.show(params[:category])
    logo
    render 'index'
  end

  def search
    logo
    q = params[:q]
    order = {}
    order[:date_publish] = 'desc'
    @news = ContentBuilder.search(q, order: order)

    render 'index'
  end

  private

  def set_news
    @news = ContentBuilder.find_by_slug(params[:slug])
    @news.content_builder_count_reads.create(ip: request.remote_ip)
  end

end
