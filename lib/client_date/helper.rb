module ClientDate
  module Helper
    def format_date(date)
      return "" if date.nil? || !responds_to_all(date)
      date.client_strftime("%b %d")
    end

    def format_datetime(date,seconds=false)
      return "" if date.nil? || !responds_to_all(date)
      format = seconds ? '%b %d, %Y %I:%M:%S %p' : '%b %d %I:%M %p'
      date.client_strftime(format)
    end

    def format_date_posted_on(date)
      return "" if date.nil? || !responds_to_all(date)
      date.client_strftime("%b %d, %Y")
    end

    def format_date_posted_at(date)
      return "" if date.nil? || !responds_to_all(date)
      date.client_strftime("%I:%M %P on %B %d, %Y")
    end

    private

    def responds_to_all date
      responds_to = [:year, :month, :day, :hour, :min, :sec].map{ |met| date.respond_to?(met)}.uniq
      responds_to.size == 1 && responds_to.first
    end

    def date_params(date)
      return "" if date.nil?
      text  = date.year.to_s + ","
      text += date.month.to_s + ","
      text += date.day.to_s + ","
      text += date.hour.to_s + ","
      text += date.min.to_s + ","
      text += date.sec.to_s
      text
    end

    def assemble_javascript(date,function)
      "<script>"+function+"("+date_params(date)+");</script>"
    end
  end
end
