module GoalsHelper
  def days_left(created_at, days)
    return (days.to_i - (DateTime.now - created_at.to_datetime)).round
  end
end
