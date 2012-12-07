class HomeController < ApplicationController

  def index
  end

  def data

    if Datum.blank?
      x = HTTParty.get('http://data.cityofnewyork.us/api/views/74cu-ncm4/rows.json')
      y = JSON(x.body)

      count = y["data"].length

      count.times do |a|
        zip1 = y["data"][a][8][0]
        if zip1.nil?
          @zip = nil
        else
          zip2 = JSON(zip1)
          @zip = zip2["zip"].to_i
        end

        @lat = y["data"][a][8][1].to_f
        @lon = y["data"][a][8][2].to_f
        @building_type = y["data"][a][9]
        @kwh = y["data"][a][10].to_i

        @datum = Datum.create(:zip => @zip, :lat => @lat, :lon => @lon, :building_type => @building_type, :kwh => @kwh)
      end
    end



  end
end