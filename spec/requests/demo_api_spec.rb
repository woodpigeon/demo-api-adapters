require 'demo_api_adapters/demo_api'
require 'webmock'

describe DemoApiAdapters::DemoApi do

  let (:base_api_url) {'http://unused-as-stubbed'}
  let (:api) { DemoApiAdapters::DemoApi.new(base_api_url)}
  
  describe 'api' do

    it 'should not be nil' do
      api.should_not be_nil
    end

  end

  describe 'teams' do

    it "should show a list of teams" do
      stub_teams
      teams = api.teams
    end

    it "..." do
        pending "more tests eg pagination, single team fetch, update, create...."
    end

  end

  def stub_teams
    WebMock.stub_request(:get, "#{base_api_url}/teams").
         with(:headers => {'Accept'=>'application/json', 'Accept-Encoding'=>'gzip, deflate', 'Content-Type'=>'application/json', 'User-Agent'=>'Demo Api Client v. 0.0.1'}).
         to_return(:status => 200, 
                   :body => File.read(File.join('spec', 'fixtures', 'teams.json')), 
                   :headers => {})
  end

end
