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

def get_japanese_emoticon(emoticon_file, emoticon)
  # code goes here
  emoticon_lib = load_library(emoticon_file)
  japanese_emoticon = emoticon_lib['get_emoticon'][emoticon]
  japanese_emoticon ? japanese_emoticon : 'Sorry, that emoticon was not found'
end

def get_english_meaning(emoticon_file, emoticon)
  # code goes here
  emoticon_lib = load_library(emoticon_file)
  english_meaning = emoticon_lib['get_meaning'][emoticon]
  english_meaning ? english_meaning : 'Sorry, that emoticon was not found'
end