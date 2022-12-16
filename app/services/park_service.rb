class ParkService
    def self.find_parks(state)
        response = conn.get("/api/v1/parks?stateCode=#{state}")

        data = JSON.parse(response.body, symbolize_names: true)

    end

    def self.conn 
        Faraday.new(url: "https://developer.nps.gov") do |f|
            f.params["api_key"] = ENV["parks_api_key"]
        end
    end

end