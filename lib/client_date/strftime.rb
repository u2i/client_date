require 'active_support'

module ClientDate
  module Strftime
    def client_strftime format
      "<script>client_strftime(#{date_params(self)},'#{format}');</script>"
    end

    private

    def date_params date
      text  = date.year.to_s + ","
      text += date.month.to_s + ","
      text += date.day.to_s + ","
      text += date.hour.to_s + ","
      text += date.min.to_s + ","
      text += date.sec.to_s
      text
    end
  end
end

class Time
  include ClientDate::Strftime
end

class ::ActiveSupport::TimeWithZone
  include ClientDate::Strftime
end
