module TimeHelper
  def time_in_seconds_and_minutes integer
    Time.at(integer).utc.strftime "%M:%S"
  end
end
