class Document < ApplicationRecord
  belongs_to :user

  has_attached_file :document

  validates_attachment :document, presence: true,
    content_type: { content_type: /.*/} 
end
