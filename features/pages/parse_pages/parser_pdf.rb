class ParserPDF
# include ParserPDF::PDF
  def initialize()
  end

  def read_my_pdf(file_name)
    my_pdf_array=Array.new
    pdf_reader = PDF::Reader.new(
        File.join(File.absolute_path('../../..', File.dirname(__FILE__)),"resource", file_name+".pdf"))
    pdf_reader.pages.each do |page|
      my_pdf_array << (page.text)
    end
    my_pdf_array
  end

  def find_content_in_my_pdf(my_array,content)
    my_array.each do |element|
      if element.include?(content)
        return true
      end
    end

  end

end