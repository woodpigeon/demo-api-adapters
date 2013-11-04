require 'demo_api_adapters/demo_api'
require 'webmock'

describe DemoApiAdapters::DemoApi do
  #include DemoApiAdapters::TestHelpers::ContentApi

  let (:base_api_url) {'http://localhost:2000'}
  let (:api) { DemoApiAdapters::DemoApi.new(base_api_url)}
  
  describe 'basic stuff' do

    it 'should not be nil!' do
      api.should_not be_nil
    end

  end

  describe 'teams' do

    it "should show a list of teams" do
      stub_teams
      teams = api.teams
    end

  end

  def stub_teams
    WebMock.stub_request(:get, "#{base_api_url}/teams?endpoint_url=#{base_api_url}").
         with(:headers => {'Accept'=>'application/json', 'Accept-Encoding'=>'gzip, deflate', 'Content-Type'=>'application/json', 'User-Agent'=>'DemoApi Client v. 0.0.1'}).
         to_return(:status => 200, :body => "", :headers => {})
  end

end
