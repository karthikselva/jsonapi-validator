# jsonapi-validator

Validates the given JSON output specs with jsonapi.org

# Usage 

- Place your JSON specs in spec/apis  folder

` Rails.root/spec/apis/**/*.json`

- Run the rake task 

`rake jsonapi:validate `

- Raises error code if there is validator error, else exits with success

`

    rake jsonapi:validate 
    Validating file '/vagrant/salesforce_data_sync/branches/dev/spec/apis/test/invalid_api.json':  FAILED
    The property '#/' of type Hash did not match any of the required schemas. The schema specific errors were:
    
    - oneOf #0:
        - The property '#/' contains additional properties ["invalid_api"] outside of the schema when none are allowed
        - The property '#/' did not contain a required property of 'data'
    - oneOf #1:
        - The property '#/' contains additional properties ["invalid_api"] outside of the schema when none are allowed
        - The property '#/' did not contain a required property of 'errors'
    - oneOf #2:
        - The property '#/' contains additional properties ["invalid_api"] outside of the schema when none are allowed
        - The property '#/' did not contain a required property of 'meta'
    ----------------------------
    
    
    
    Validating file '/vagrant/salesforce_data_sync/branches/dev/spec/apis/test/valid_api.json':  PASSED
    ----------------------------
    
    rake aborted!
    Please fix the above validation errors`