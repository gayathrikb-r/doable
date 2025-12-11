class Comment < ApplicationRecord
  belongs_to :project
  after_create :log_msg
  def log_msg
        Rails.logger.info("New comment created!")
  end  
end
