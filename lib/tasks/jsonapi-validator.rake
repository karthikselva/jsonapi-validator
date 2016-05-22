namespace "jsonapi" do

  desc "Task which loads all the files from spec/apis folder and validates with schema"
  task "validate" do
    json_spec_files = Dir["spec/apis/*.json"]
    json_spec_files.each do |spec|
      puts "Validating file: #{spec}"
      puts JsonApi::Validator.json_file(spec)
    end
  end

end