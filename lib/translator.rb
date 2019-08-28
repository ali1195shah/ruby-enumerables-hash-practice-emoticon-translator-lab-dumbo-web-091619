# require modules here
require "yaml"
hash = YAML.load_file("./lib/emoticons.yml")

def load_library(hash)
  # code goes here
  emoticons_file = YAML.load_file('./lib/emoticons.yml')
  
  emoticons = {"get_meaning" => {},
               "get_emoticon" => {}}
  emoticons_file.each do |meaning, value|
    eng = value[0]
    jp = value[1]
    
    emoticons["get_meaning"][jp] = meaning
    emoticons["get_emoticon"][eng] = jp
  end
  return emoticons
end

def get_japanese_emoticon
  # code goes here
  
end

def get_english_meaning
  # code goes here
end