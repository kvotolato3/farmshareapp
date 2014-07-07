class PickupLocation < ActiveRecord::Base
  belongs_to :order

  def time_range
    start = time_to_string(self.start_time)
    finish = time_to_string(self.end_time)
    return start << " to " << finish
  end

  def time_to_string(raw_time)
    if raw_time > 1200
      time = (raw_time-1200)
        if time > 959
          time = time.to_s
          return time[0..1] << ":" << time[2..3] << " p.m."
        else
          time = time.to_s
          return time[0] << ":" << time[1..2] << " p.m."
        end
    else
      if raw_time > 959
        time = raw_time.to_s
        return time[0..1] << ":" << time[2..3] << " a.m."
      else
        time = time.to_s
        return time[0] << ":" << time[1..2] << " a.m."
      end
    end
  end
end
