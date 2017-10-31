class PagesController < ApplicationController
  def about
  end

  def team
  end

  def contact
  end

  def message
  end

  def encrypt_letter(letter, permutation_level)
      return letter if letter.match(/\W/) || letter.match(/\d/) # <-- guard clause to handle an exception
      letters = ("A".."Z").to_a
      letter_index = letters.index(letter.upcase)
      return letters[letter_index - permutation_level]
    end

    def encrypt(sentence, permutation_level = 3)
      letters = sentence.split("")
      encrypted = letters.map { |letter| encrypt_letter(letter, permutation_level) }
      return encrypted.join
    end

    def decrypt
      @message = params[:message]
      @key = params[:key].to_i
      @possibilities = encrypt(@message, @key)
    end
  end
