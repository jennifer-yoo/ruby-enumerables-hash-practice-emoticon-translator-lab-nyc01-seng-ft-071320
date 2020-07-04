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


def get_japanese_emoticon(file, e_emoticon)
  emotion = load_library(file)
  eng_meaning = ""
  apology = "Sorry, that emoticon was not found"

    emotion.each do |emotion_list, lang|
      lang.each do |english, emoticon|
        binding.pry
        if emoticon == e_emoticon
          eng_meaning = emoticon
        end
      end
      if eng_meaning == ""
        eng_meaning = apology
      end
    end
  eng_meaning
end

def get_english_meaning
  # code goes here
end
