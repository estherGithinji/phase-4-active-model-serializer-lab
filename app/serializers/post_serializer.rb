class PostSerializer < ActiveModel::Serializer
  attributes :title, :content, :short_content

  has_many :tags
  belongs_to :author

  def short_content
    "#{self.object.title}-#{self.object.content[0..40]}"
  end
end
