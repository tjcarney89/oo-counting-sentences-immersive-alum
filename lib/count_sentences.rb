require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      true
    else
      false
    end
  end

  def question?
    if self.end_with?("?")
      true
    else
      false
    end
  end

  def exclamation?
    if self.end_with?("!")
      true
    else
      false
    end
  end

  def count_sentences
    split_up = self.split(/[.!?]/)
    sentences = []
    split_up.each do |string|
      if string != ""
        sentences << string
      end
    end
    sentences.count
  end
end
