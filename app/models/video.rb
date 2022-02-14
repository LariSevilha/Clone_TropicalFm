class Video < ApplicationRecord
  validates :title, :link, :publish_date, presence: true

  validates :link, :format => {
    :with => /^(?:https?:\/\/)?(?:www\.)?youtu(?:\.be|be\.com)\/(?:watch\?v=)?([\w-]{10,})/,
    :multiline => true,
    :message => "Adicione somente urls do youtube"
  }

  searchkick batch_size: 50, index_prefix: "tropical_fm"

  extend FriendlyId
    friendly_id :title, use: :slugged

  def image
    "https://img.youtube.com/vi/#{self.code}/maxresdefault.jpg"
  end

  def search_data
    {
      title: title,
      description: description,
      slug: slug
    }
  end

  def code
    self.link.match(/^(?:https?:\/\/)?(?:www\.)?youtu(?:\.be|be\.com)\/(?:watch\?v=)?([\w-]{10,})/)[1]
  end
end
