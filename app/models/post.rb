class Post < ApplicationRecord
  # 本文なしで送信できないようにする。
  validates :content, {presence:true, length:{maximum:140}}
end
