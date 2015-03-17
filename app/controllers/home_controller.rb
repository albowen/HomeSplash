class HomeController < ApplicationController
  def index
    @current_time = Time.now.stamp_like("Feb 1st 09:00 pm")
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

    @quip = Quote.all.sample.quip

  end
end
  