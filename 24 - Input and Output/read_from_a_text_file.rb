my_novel = File.open("novel.txt")
puts my_novel.class 

my_novel.each { |line| puts line }