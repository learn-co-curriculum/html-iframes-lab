

RSpec.describe 'index.html' do
  it 'contains an <iframe> tag' do
    iframe = parsed_html.search('iframe')[0]
    expect(iframe).to_not be_nil, "No <iframe> tag was found"
    expect(iframe.attributes["src"]).to match(/https:/), "Include a valid URL in the src attribute"
  end

  context 'within <iframe>' do
    it 'contains a "width" attribute set to "100%" ' do
      iframe = parsed_html.search('iframe')[0]
      expect(iframe.attributes["width"]).to_not be_nil, "No width attribute was found in the iframe"
      expect(iframe.attributes["width"].value).to eq("100%"), "The width attribute should be set to '100%'"
    end

    it 'contains a "height" attribute set to "400px" ' do
      iframe = parsed_html.search('iframe')[0]
      expect(iframe.attributes["height"]).to_not be_nil, "No height attribute was found in the iframe"
      expect(iframe.attributes["height"].value).to eq("400px"), "The height attribute should be set to '400px'"
    end

  end
end
