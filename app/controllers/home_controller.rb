class HomeController < ApplicationController
  def index
    @current_time = Time.now.to_formatted_s(:short)
    @greet_message = case Time.now.hour
    when 5..11
      "Good morning"
    when 12..15
      "Good afternoon"
    when 16..19
      ["Buenos Tardes", "Good evening", "Bon soir"].sample
    when 20..23, 0..4
      "Goodnight!"
    end

  end
end
  