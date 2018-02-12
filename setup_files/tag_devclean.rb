# require_relative '../helper/file_helper.rb'
class TagDevClean
  # include FileHelper
  # useful links:
  # https://stackoverflow.com/questions/4404172/how-to-tag-an-older-commit-in-git
  # https://git-scm.com/book/en/v2/Git-Basics-Tagging

  def build_message()
    # argv
    return "test"
  end

  def main_tag_method
    return system("git tag -a v1.2 9fceb02 -m #{build_message()}")
  end

  def get_most_recent_SHA
    return system("git log -n 1 --pretty=format:%H")
  end
end

td= TagDevClean.new
td.get_most_recent_SHA

