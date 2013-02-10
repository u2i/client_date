require 'test/unit'
require File.dirname(__FILE__) + '/../lib/client_date'

class ClientDateTest < Test::Unit::TestCase
  include ClientDate::Helper
  #
  # format_date
  #

  def test_format_date
    assert_equal "", format_date(nil)
    assert_equal "<script>client_strftime(2000,1,1,20,15,39,'%b %d');</script>", format_date(Time.gm(2000,"jan",1,20,15,39))
    assert_equal "", format_date(Date.today)
  end

  #
  # format_datetime
  #
  def test_format_datetime
    assert_equal "", format_datetime(nil)
    assert_equal "<script>client_strftime(2000,1,1,20,15,47,'%b %d %I:%M %p');</script>", format_datetime(Time.gm(2000,"jan",1,20,15,47))
    assert_equal "", format_datetime(Date.today)
  end

  def test_format_datetime_with_seconds
    assert_equal "", format_datetime(nil,true)
    assert_equal "<script>client_strftime(2000,1,1,20,15,23,'%b %d, %Y %I:%M:%S %p');</script>", format_datetime(Time.gm(2000,"jan",1,20,15,23),true)
    assert_equal "", format_datetime(Date.today, true)
  end

  #
  # format_date_posted_on
  #

  def test_format_date_posted_on
    assert_equal "", format_datetime(nil)
    assert_equal "<script>client_strftime(2000,1,1,20,15,47,'%b %d, %Y');</script>", format_date_posted_on(Time.gm(2000,"jan",1,20,15,47))
    assert_equal "", format_date_posted_on(Date.today)
  end

  #
  # format_date_posted_at
  #

  def test_format_date_posted_at
    assert_equal "", format_datetime(nil)
    assert_equal "<script>client_strftime(2000,1,1,20,15,47,'%I:%M %P on %B %d, %Y');</script>", format_date_posted_at(Time.gm(2000,"jan",1,20,15,47))
    assert_equal "", format_date_posted_at(Date.today)
  end

  def test_client_strftime_for_time
    assert_equal "<script>client_strftime(2000,1,1,20,15,23,'%Y-%m-%d');</script>", Time.gm(2000,"jan",1,20,15,23).client_strftime('%Y-%m-%d')
  end

end
