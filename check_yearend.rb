#!/usr/bin/env ruby

DAYS_IN_A_LEAP_YEAR = 366
SECONDS_IN_A_DAY     = 60 * 60 * 24

matching_date = Time.local(59, 59, 23, 31, 12, 2016, 7, 366, true, "CDT")#End of year: the last hour, last minute and last second.
current_date = Time.new()

difference_in_seconds = (current_date - matching_date)
difference_in_days    = (difference_in_seconds / SECONDS_IN_A_DAY).to_i
days_to_wait          = (
  DAYS_IN_A_LEAP_YEAR - difference_in_days
) % DAYS_IN_A_LEAP_YEAR
if (days_to_wait.zero?)
  puts 'Year ends today!'
else
  print 'Year ends in ' + days_to_wait.to_s + ' day'
  puts days_to_wait == 1 ? '.' : 's.'
end
