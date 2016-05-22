module JsonApi
  class Validator

    def self.json_file(file)
      File.open(file) do |f|
        json = JSON.parse(f.read)
      end
      return json(json)
    end

    def self.json(object)
      errors = JSON::Validator.fully_validate(STANDARD_SCHEMA,object)
      return errors
    end
  
  end
end