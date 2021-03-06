require_relative 'airport'

class Plane
  def land(target_airport)
    raise 'Plane is already grounded' if landed?
    @airport = target_airport
  end

  def take_off
    raise 'Plane is already airborne' unless landed?
    @airport = nil
  end

  def landed?
    !@airport.nil?
  end

  def grounded_at?(airport)
    @airport == airport
  end
end
