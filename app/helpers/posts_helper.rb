module PostsHelper
	def join_tags(post)
    post.tags.map { |t| t.neme }.join(", ")
  end
end
