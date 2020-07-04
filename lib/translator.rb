require 'pry'

require "yaml"

def load_library(file)
  emoticons = YAML.load_file(file)
  new_hash = {}
  emoticons.each do |name, arrays|
    if !new_hash[name]
      new_hash[name] = {}
    end
      new_hash[name][:english] = arrays[0]
      new_hash[name][:japanese] = arrays[1]
  end
  new_hash
end


def get_japanese_emoticon(file, emoticon)
  emotion = load_library(file)
  emotion.each do |emotion_list|
    emotion_list.each do |emotion_name|
      emotion_name.each do |english|

    binding.pry
      end
    end
  end
end

def get_english_meaning
  # code goes here
end
