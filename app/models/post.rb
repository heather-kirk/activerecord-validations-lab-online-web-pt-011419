class Post < ActiveRecord::Base
  validates :title, presence: true 
  validates :content, length:{minimum: 250}
  validates :summary, length:{maximum: 250}
  validates :category, inclusion:{in:%w(Fiction Non-Fiction)}
  validate :clickbait?
  
  CLICKBAIT = ["Won't Believe", "Secret", "Top[number", "Guess"]
  
  def clickbait?
    if CLICKBAIT.none? {|word| word == title}
      
      binding.pry 
    else 
      error.add(:title, "fjdsklf")
    end 
  end 
end
