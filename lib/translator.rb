# require modules here
require "yaml"
hash = YAML.load_file("./lib/emoticons.yml")

def load_library(hash)
  # code goes here
  emoticons = {"get_meaning" => {},
               "get_emoticon" => {}}
  emoticons.each do |meaning, value|
    eng = value[0]
    jp = value[1]
    
    emoticons["get_meaning"][jp] = meaning
    emoticons["get_"]
  end
  end
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end