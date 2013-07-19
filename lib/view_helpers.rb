module DashingJson
  module ViewHelpers
    
    def dashing_json(data)
      generate_html(data).html_safe
    end

    def generate_html(data)
      <<-HTML
        <div class='dashing-json'>
          <pre>
            <ul class='dashing-json-parsed'></ul>
            <div class='dashing-json-raw' data-dashing-json='#{ data }'></div>
          </pre>
        </div>
      HTML
    end
  end
end