module JsonApi
  class Validator
    def self.file(file)
      object = nil
      File.open(file) do |f|
        object = JSON.parse(f.read)
      end
      return json(object)
    end

    def self.object(object)
      errors = JSON::Validator.fully_validate(STANDARD_SCHEMA,object)
      return errors
    end
  
  end
end