class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, length: {minimum: 250}
  validates :summary, length: {maximum: 250}
  validates :category, inclusion: {in: %w(Fiction Non-Fiction)}
  validate :click_bait

  private

  def click_bait
<<<<<<< HEAD
    if self.title != nil
      unless
        (self.title.include?("Won't Believe")) || (self.title.include?("Secret")) || (self.title.include?("Top")) || (self.title.include?("Guess"))
=======
    if self.valid?
      if
        !(self.title.include?("Won't Believe")) || !(self.title.include?("Secret")) || !(self.title.include?("Top")) || !(self.title.include?("Guess"))
      #["Won't Believe", "Secret", "Top", "Guess"].any? {|b| (record.title).include? b}
>>>>>>> 22610f3e4cfc817cd75c2341b99968f8049b85b2
        self.errors[:title] << "Edit the title to make it click-baity!"
      end
    end
  end

end
