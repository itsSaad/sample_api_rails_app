class Owner < ActiveRecord::Base
  attr_accessor :name
  has_many :articles, foreign_key: :author_id

  def name
    "#{first_name} #{last_name}"
  end

  def name=(n)
    self.first_name, self.last_name = n.split(' ')
  end

  def to_builder
    Jbuilder.new do |o|
      o.first_name first_name
      o.last_name last_name
      o.article_ids articles.collect(&:id)
    end
  end

  def self.find_by_name(name)
    first_name, last_name = name.split('-')
    self.where('lower(first_name) = ? AND lower(last_name) = ?', first_name.downcase, last_name.downcase).first
  end

  def self.find_by_name!(name)
    output = find_by_name name
    if !output
      raise ActiveRecord::RecordNotFound
    end
    output
  end
end
