file = File.open("rhyme.txt", 'r')
while !file.eof?
   line = file.readline
   puts line
end