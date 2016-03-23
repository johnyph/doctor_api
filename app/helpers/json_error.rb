module Doctor
  module JsonErrorHelper
  
    def json_error(ex, code, errors = {})
      halt code, { 'Content-Type' => 'application/json' }, JSON.dump({
        message: ex.message
      }.merge(errors))
    end

    def halt_json_error(code, errors = {})
      json_error env.fetch('sinatra.error'), code, errors
    end
  
  end
end
