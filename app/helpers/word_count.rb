module Filters
  BAD_WORDS = /\byet\b|\band\b|\bfor\b|\bnor\b|\bbut\b|\bor\b|\bso\b|\bat\b|\bby\b|\bfor\b|\bfrom\b|\bin\b|\binto\b|\bof\b|\boff\b|\bon\b|\bonto\b|\bout\b|\bup\b|\bwith\b|\bthe\b|\ba\b|\ban\b|\bto\b|\bI\b|\bmy\b|\bthat\b|\bit\b|\bthis\b|\bwho\b|\bthey\b|\bas\b/
    # Fewer than 5 letters, verbs removed
  FEMALE = /\bshe\b|\bher\b|\bherself\b/
  MALE = /\bhe\b|\bhis\b|\bhimself\b/
end

class WordCount
  include Filters

  def initialize(story)
    @story = story
    split_words
    filter_words
    return_word_count
  end

  def split_words
    @split_story = @story.split(/\b/)
  end

  def filter_words
    @filtered_words = @split_story.delete_if { |word| word =~ /\W|\d/ || word =~ BAD_WORDS || word.downcase =~ BAD_WORDS }
  end

  def return_word_count
    collect_count = Hash.new(0)
    @filtered_words.each { |word| collect_count[word] += 1 }
    @sorted_count = collect_count.sort_by { |word, count| count }.reverse
  end

  def display_word_count
    results = @sorted_count.map { |word, count| "#{word}: #{count} occurrences"}
    results.join("<br><br>")
  end

  def find_gender
    female = @filtered_words.select { |word| word =~ FEMALE }
    male = @filtered_words.select { |word| word =~ MALE }
  end

  def find_names
    names = @sorted_count.select { |word, count| word =~ /[A-Z]/ }
    names.join("<br><br>")
  end
end