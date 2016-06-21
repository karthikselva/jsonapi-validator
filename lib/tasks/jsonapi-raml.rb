namespace "jsonapi" do
  namespace "raml" do

    desc "Task which loads all the files from doc/raml/samples folder and validates with schema"
    task "validate" do
      failed = false

      json_spec_files = Dir["#{Rails.root}/doc/raml/samples/**/*.json"]
      json_spec_files.each do |spec|
        print "\n\nValidating file '#{spec}': "
        result =  JsonApi::Validator.file(spec)
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
end
