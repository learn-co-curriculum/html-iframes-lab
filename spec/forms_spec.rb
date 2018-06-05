

RSpec.describe 'index.html' do
  it 'contains a <form> tag' do
    form = parsed_html.search('form')[0]
    expect(form).to_not be_nil, "No <form> tag was found"
    expect(html_file_contents).to include('</form>'), "Don't forget to include a closing </form> tag"
  end

  context 'within <form>' do
    it 'contains a "text" type <input> tag with an id of "fullname" and placeholder equal to "Enter Name" ' do
      input = parsed_html.search('input')[0]
      expect(input).to_not be_nil, "No <input> tags were found"
      expect(input.attributes["type"]).to_not be_nil, "No type attribute was found on the first 'input' tag"
      expect(input.attributes["type"]).to match(/text/) , "The first input should have an type set to 'text'"
      expect(input.attributes["id"]).to_not be_nil, "No id attribute was found on the first 'input' tag"
      expect(input.attributes["id"]).to match(/fullname/) , "The first input should have an id set to 'fullname'"
      expect(input.attributes["placeholder"]).to_not be_nil, "No placeholder attribute was found on the first 'input' tag"
      expect(input.attributes["placeholder"]).to match(/Enter Name/) , "The first input should have a placeholder set to 'Enter Name'"
    end

    it 'contains an "email" type <input> tag with an id of "email" and placeholder equal to "Enter Name" ' do
      input = parsed_html.search('input')[1]
      expect(input.attributes["type"]).to_not be_nil, "No type attribute was found on the second 'input' tag"
      expect(input.attributes["type"]).to match(/email/) , "The second input should have an type set to 'email'"
      expect(input.attributes["id"]).to_not be_nil, "No id attribute was found on the second 'input' tag"
      expect(input.attributes["id"]).to match(/email/) , "The second input should have an id set to 'email'"
      expect(input.attributes["placeholder"]).to_not be_nil, "No placeholder attribute was found on the second 'input' tag"
      expect(input.attributes["placeholder"]).to match(/Enter Email/) , "The second input should have a placeholder set to 'Enter Email'"
    end

    it 'includes the "required" attribute on the fullname and email input tags' do
      inputs = parsed_html.search('input')
      expect(inputs[0].attributes["required"]).to_not be_nil, "Add the 'required' attribute to the fullname input tag"
      expect(inputs[1].attributes["required"]).to_not be_nil, "Add the 'required' attribute to the email input tag"
    end

    it 'contains an "tel" type <input> tag with an id of "phone" and placeholder equal to "Enter Telephone (optional)" ' do
      input = parsed_html.search('input')[2]
      expect(input.attributes["type"]).to_not be_nil, "No type attribute was found on the third 'input' tag"
      expect(input.attributes["type"]).to match(/tel/) , "The third input should have an type set to 'tel'"
      expect(input.attributes["id"]).to_not be_nil, "No id attribute was found on the third 'input' tag"
      expect(input.attributes["id"]).to match(/phone/) , "The third input should have an id set to 'phone'"
      expect(input.attributes["placeholder"]).to_not be_nil, "No placeholder attribute was found on the third 'input' tag"
      expect(input.attributes["placeholder"].value).to eq("Enter Telephone (optional)") , "The third input should have a placeholder set to 'Enter Telephone (optional)'"
    end

    it 'contains <label> tags for the fullname, email, phone and message form inputs ' do
      labels = parsed_html.search('label')
      expect(labels[0].attributes["for"]).to_not be_nil, "No label tags found"
      expect(labels[0].attributes["for"].value).to eq("fullname"), "Include a label with a 'for' attribute set to 'fullname'"
      expect(labels[1].attributes["for"]).to_not be_nil, "No label tag for email input found"
      expect(labels[1].attributes["for"].value).to eq("email"), "Include a label with a 'for' attribute set to 'email'"
      expect(labels[2].attributes["for"]).to_not be_nil, "No label tag for phone input found"
      expect(labels[2].attributes["for"].value).to eq("phone"), "Include a label with a 'for' attribute set to 'phone'"
      expect(labels[3].attributes["for"]).to_not be_nil, "No label tag for message input found"
      expect(labels[3].attributes["for"].value).to eq("message"), "Include a label with a 'for' attribute set to 'message'"
    end

    it 'contains an <textarea> tag with an id of "message" and placeholder equal to "Enter Message" ' do
      input = parsed_html.search('textarea')[0]
      expect(input.attributes["id"]).to_not be_nil, "No id attribute was found on the 'textarea' tag"
      expect(input.attributes["id"]).to match(/message/) , "The textarea tag should have an id set to 'message'"
      expect(input.attributes["placeholder"]).to_not be_nil, "No placeholder attribute was found on the 'textarea' tag"
      expect(input.attributes["placeholder"]).to match(/Enter Message/) , "The third input should have a placeholder set to 'Enter Message'"
    end

    it 'contains a checkbox' do
      inputs = parsed_html.search('input')
      expect(inputs.any? { |i| i.attributes["type"].value == "checkbox" }).to be true
    end

    it 'contains a submit type input' do
      input = parsed_html.search('input').last
      expect(input.attributes["type"].value).to eq("submit")
    end

  end


end
