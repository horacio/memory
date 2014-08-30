module Memory
  module Models
    class Event < Ohm::Model
      attribute :guid
      attribute :author
      attribute :link
      attribute :title
      attribute :published
      attribute :updated

      unique :guid
    end
  end
end
