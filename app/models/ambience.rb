class Ambience < ApplicationRecord
  belongs_to :media
  default_scope { order(id: :desc) }

  def file_path
    media.folder.concat(media.filename)
  end
end
