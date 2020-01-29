class SearchController < ApplicationController
  def index
    @page_title = "Busca"
    logo
    @msg = ''

    q = params[:q]

    where = {}

    order = {}
    order[:date_publish] = 'desc'

    order_album = {}
    order_album[:publish_date] = 'desc'

    content_builder = ContentBuilder.search(q, order: order)
    albums = Album.search(q, order: order_album)

    array_search = []

    albums.each do |n|
      array_search << {
        title: n.title,
        slug: n.slug,
        date_publish: n.publish_date.strftime("%d/%m/%Y"),
        type: 2
      }
    end

    content_builder.each do |n|
      array_search << {
        title: n.title,
        category: n.category.slug,
        slug: n.slug,
        date_publish: n.date_publish.strftime("%d/%m/%Y"),
        type: 1
      }
    end

    @result_search_size = array_search.size

    @result_search = Kaminari.paginate_array(
      array_search, total_count: @result_search_size
    ).page(params[:page])

  end
end
