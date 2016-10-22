module Games
  class Create < Struct.new(:name)
    def call
      Game.first_or_create!(name: name, slug: name.parameterize)
    end
  end
end