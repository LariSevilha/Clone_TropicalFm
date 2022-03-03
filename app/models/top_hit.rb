class TopHit < ApplicationRecord
 scope :active_and_ordered, -> { where(active: true).order(:colocation) }
  validades_uniqueness_of :colocation, mensage:
  'Já possui uma música nessa colocação, por favor escolha outra posição.'

  validades :link, :format => { 
    :width => /^(?:https?:\/\/)?(?:www\.)?youtu(?:\.be|be\.com)\/(?:watch\?v=)?([\w-]{10,})/,
    :multiline => true, 
    :message => "Adicione somente urls do youtube"
   }

   enum colocation:
   { 
     
    "1ª Mais Tocada": 0,
    "2ª Mais Tocada": 1,
    "3ª Mais Tocada": 2,
    "4ª Mais Tocada": 3,
    "5ª Mais Tocada": 4,
    "6ª Mais Tocada": 5,
    "7ª Mais Tocada": 6,
    "8ª Mais Tocada": 7,
    "9ª Mais Tocada": 8,
    "10ª Mais Tocada": 9,
    "11ª Mais Tocada": 10,
    "12ª Mais Tocada": 11
   }

   def code
    self.link.match(/^(?:https?:\/\/)?(?:www\.)?youtu(?:\.be|be\.com)\/(?:watch\?v=)?([\w-]{10,})/)[1]
  end
end

