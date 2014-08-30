module Memory
  module Models
    class Event < Ohm::Model
      attribute :id
      attribute :author
      attribute :link
      attribute :title
      attribute :published
      attribute :updated

      unique :id
    end
  end
end
