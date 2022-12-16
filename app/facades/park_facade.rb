class ParkFacade
    def self.find_park(state)
     data = ParkService.find_parks(state)
 
     data[:data].map do |park_data|
        Park.new(park_data) 
        end
    end
end