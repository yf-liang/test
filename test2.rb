#!/usr/bin/env ruby

# require "getoptlong"
# puts "hello world!"

# -----------------------------------------------------------------------------
def heading (str)
  h1     = "--------------------"
  $h2    = h1 + h1 + h1 + h1
  len    = str.length
  len2   = len % 2
  hlen   = (79 - (len + 2))/2
  result = $h2.slice(0,hlen) + " " + str + " " + $h2.slice(0,hlen)
  if len2 == 0 then result = result + "-" end
  return result
end


# -----------------------------------------------------------------------------
def tmenu
   `clear`
   puts heading ("#{$hostname}")
   puts $hostname
   puts $h2.slice(0,79)
end


# ---------- main ----------
pmode = ARGV[0]
ARGV.delete_at(0)

$hostname = `hostname`.chop

# puts pmode

if pmode == "test1" then
   param = ARGV[0]
   puts ":" + param + ":"
   exit
end


if pmode == "test2" then
   param = ARGV[0]
   puts ": #{param} :"
   exit
end


if pmode == "test3" then
   param = ARGV[0]

v1 = <<END
Dear Mr. #{param},
Good Day.
END

puts v1
   exit
end


if pmode == "test4" then
   param = ARGV[0]
   puts ": #{param} :"
   exit
end


if pmode == "test5" then
   param = ARGV[0]
   puts heading("#{param}")
   exit
end


if pmode == "test6" then
   param = ARGV[0]
   hostaddr="54.201.14.140"
   `ssh rubyuser@#{hostaddr}`
   exit
end

require 'readline'

tmenu()
x = Readline.readline("input> ")
x = x.upcase

while x != "Q" do

   tmenu()

x = Readline.readline("input> ")
x = x.upcase
end
