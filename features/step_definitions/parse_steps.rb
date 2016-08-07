Given(/^I have my pdf document$/) do
  pdf_parser = ParserPDF.new
end

When(/^I read my pdf (.*)$/) do |file_name|
  pdf_parser = ParserPDF.new
  @content = pdf_parser.read_my_pdf file_name

end

Then(/^the content should contains (.*)$/) do |expected_content|
  @content.include?(expected_content).should be true
end

Then(/^the content should have (.*)$/) do |expected_content|
  pdf_parser = ParserPDF.new
  result = pdf_parser.find_content_in_my_pdf(@content, expected_content)
  result.should be true
end

And(/^I want to read (.*)$/) do |file_name|
  pdf_parser = ParserPDF.new
  @content2 = pdf_parser.read_my_pdf file_name
end

Then(/^the content should be same$/) do
  puts @content2 - @content
  expect(@content).to eq(@content2)
end

Then(/^the content should not be same$/) do
  diff_array =  @content2 - @content
  expect(@content).not_to eq(@content2)
  puts diff_array.join(' ')
end

Then(/^I should see the pdf name$/) do
 a = @content.join(' ')
  puts "#{a}"
end