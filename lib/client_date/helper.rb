module ClientDate
  module Helper
    def format_date(date)
      return "" if date.nil?
      assemble_javascript(date,"fd")
    end

    def format_datetime(date,seconds=false)
      return "" if date.nil?
      function = seconds ? "fdts" : "fdt"
      assemble_javascript(date,function)
    end

    def format_date_posted_on(date)
      return "" if date.nil?
      assemble_javascript(date,"postedOn")
    end

    def format_date_posted_at(date)
      return "" if date.nil?
      assemble_javascript(date,"postedAt")
    end

    private

    def date_params(date)
      respond_to_all = [:year, :month, :day, :hour, :min, :sec].map{ |met| date.respond_to?(met)}.uniq.size
      return "" if date.nil? || respond_to_all != 1
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
