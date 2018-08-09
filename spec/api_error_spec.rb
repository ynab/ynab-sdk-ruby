require 'spec_helper'

describe 'APIError' do
  it 'should parse error correctly' do
    response_body = '{"error":{"id":"401","name":"unauthorized","detail":"Unauthorized"}}'
    error = YNAB::ApiError.new({ code: 400, response_headers: nil, response_body: response_body })
    expect(error.code).to eq 400
    expect(error.response_body).to eq response_body

    expect(error.id).to eq '401'
    expect(error.name).to eq 'unauthorized'
    expect(error.detail).to eq 'Unauthorized'
  end
end
