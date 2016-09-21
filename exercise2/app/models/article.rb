class Article < ActiveRecord::Base
  belongs_to :author, class: Owner, foreign_key: 'author_id'

  def to_builder
    Jbuilder.new do |a|
      a.title title
      a.content content
      a.updated_at updated_at
      a.created_at created_at
      a.author_id author_id
    end
  end
end
