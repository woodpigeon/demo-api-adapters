# This is the API-specific class ie for accessing the demo api
require 'demo_api_adapters/base'

class DemoApiAdapters::DemoApi < DemoApiAdapters::Base

  def teams(options = {})
    query = query_string(options)
    get_list!("#{endpoint}/teams#{query}").to_ostruct
  end

  def team(id)
    get_json("#{endpoint}/teams/#{id}").to_ostruct
  end

  def update_team(id, team_update)
    # `team_update` can be a hash of updated fields or a complete team
    put_json!("#{endpoint}/teams/#{CGI.escape(id.to_s)}", team_update)
  end


end