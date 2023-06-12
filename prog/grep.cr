# simple implementation of grep shit in crystal

require "option_parser"

# This is a macro function definition
macro assert(exp, file = __FILE__, line = __LINE__)
  {% if !flag?(:release) %}
    unless {{exp}}
      raise "Assertion Failed #{{{file}}}:#{{{line}}}"
    end
  {% end %}
end

# Global variables
word : String = ARGV.first

# Global constants
RED = "\033[0;31m"
RESET = "\033[0m"

def grep(word : String, line : String) : String | Nil
  if line.includes?(word)
    new_word = "#{RED}#{word}#{RESET}"
    return "#{line.sub(word, new_word)}"
  else
    return nil
  end
end

OptionParser.parse do |parser|
  parser.on "-v", "--version", "Show version" do
    puts "version 1.0"
    exit
  end

  parser.on "-h", "--help", "Show help" do
    puts parser
    exit
  end

  # It needs to be un upper case "ARG"
  parser.on "-a", "--argument ARG", "Catch an argument" do |arg|
    word = arg
  end
end

c = 1
while line = gets
  assert !word.blank?, "Word shouln't be black"
  s : String | Nil = grep(word, line.to_s)
  if s.is_a?(String)
    puts "#{c} " + s
  end
  c += 1
end



