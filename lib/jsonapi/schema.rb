module JsonApi
  class Schema

    JSON_API_SCHEMA_FILE = '../../schema/schema.json'

    def self.instance
      if @instance.nil?
        File.open(File.join(File.dirname(__FILE__), JSON_API_SCHEMA_FILE),'r') do |f|
          @instance = JSON.parse(f.read)
        end
      end 
      return @instance
    end

  end
end