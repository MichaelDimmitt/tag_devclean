# require_relative '../helper/file_helper.rb'
class TagDevClean
  # include FileHelper
  # useful links:
  # https://stackoverflow.com/questions/4404172/how-to-tag-an-older-commit-in-git
  # https://git-scm.com/book/en/v2/Git-Basics-Tagging

  def tag_exists?
    return system("if [ $(git tag | grep -c test) -ge 1 ]; then echo true; fi" )
    # return system("git log -n 1 --pretty=format:%H")
  end

  def increment_next_version
    return system("git tag -n 1")
  end
  def tag_as_version_one
    return 'v1.0'
  end

  def determine_tag_version
    tag_exists? ? increment_next_version : tag_as_vesion_one
  end

  def get_most_recent_SHA
    return system("git log -n 1 --pretty=format:%H")
  end

  def build_message()
    # argv
    puts "#{ARGV[0]} #{ARGV[1]}"
    return "#{ARGV[0]} #{ARGV[1]}"
  end

  def main_tag_method
    # return system("git tag -a v1.2 9fceb02 -m #{build_message()}")
    return system("git tag -a #{determine_tag_version} #{get_most_recent_SHA} -m #{build_message()}")
  end
end

td= TagDevClean.new
td.get_most_recent_SHA
td.increment_next_version
