# Ruby classes are flexible and can be expanded

class Book
  attr_reader :title, :author, :pages

  def initialize(title, author, pages)
    @title = title
    @author = author
    @pages = pages
  end


end

goosebumps = Book.new("Night of the Living Dummy", "R.L. Stine", 100)
# goosebumps.read # This cannot work here

class Book
  
  def read
    1.step(pages, 10) { |page| puts "Reading page #{page}"}
    puts "Done! #{title} was a great book"
  end

end

goosebumps.read # This can only work after the class addition has been made. 