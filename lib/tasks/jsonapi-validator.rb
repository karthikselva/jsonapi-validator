namespace "jsonapi" do

  desc "Task which loads all the files from spec/apis folder and validates with schema"
  task "validate" do
    failed = false

    json_spec_files = Dir["#{Rails.root}/spec/apis/**/*.json"]
    json_spec_files.each do |spec|
      print "\n\nValidating file '#{spec}': "
      result =  JsonApi::Validator.json_file(spec)
      if result.nil? or result.empty?
        puts " PASSED\n"
      else
        puts " FAILED\n"
        puts result
        failed = true
      end

      puts "----------------------------\n\n"      
    end

    raise "Please fix the above validation errors" if failed
  end

end