require 'rubygems'
require 'zip'
require 'fileutils'

input = [
  "scripts/**/*",
  "strings/**/*",
  "utility/**/*",
  "windows/**/*",
  "extension.xml"
]

zipfile_name = "record_source.ext"

FileUtils.rm(zipfile_name) if File.exist?(zipfile_name) 

Zip::File.open(zipfile_name, create: true) do |zipfile|
  input.each do |i|
    Dir.glob(i).each do |file|
      zipfile.add(file, file)
    end
  end
end