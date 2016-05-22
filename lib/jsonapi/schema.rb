module JsonApi
  class Schema

    JSON_API_SCHEMA_FILE = File.join(File.dirname(__FILE__), '../../schema/schema.json')
    
    def self.instance
      if @instance.nil?
        File.open(JSON_API_SCHEMA_FILE,'r') do |f|
          @instance = JSON.parse(f.read)
        end
      end 
      return @instance
    end

  end
end