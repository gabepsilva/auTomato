class Log < ApplicationRecord

  belongs_to :step, :counter_cache => true
end
