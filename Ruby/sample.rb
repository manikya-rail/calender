#Sample code to prompt user to enter his name
puts "Enter your name: "
first_name = gets.chomp
puts "Hi #{first_name}, welcome to Ruby!"



#The below lines will create a file or over write the exisitng file


File.open('file2.txt', 'a+') do |f|   
    f.puts "This is JavaTpoint"   
    f.write "You are reading Ruby tutorial.\n"   
    f << "Please visit our website.\n"   
end 




#Reading contents from the file


puts "Reading contents"
File.open('file2.txt', 'r+') do |f|   
    arr = f.readlines
    puts arr.inspect
end 


puts "Reading to upcase"
File.readlines("file2.txt").each do |line|
	puts line.upcase
end
