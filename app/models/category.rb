class Category < ActiveRecord::Base
    has_many :article_categories
    has_many :articles, through: :article_categories, dependent: :destroy

    validates :name, presence: true, uniqueness: true, length: { minimum: 5, maximum: 25}


end
