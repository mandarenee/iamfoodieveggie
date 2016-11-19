module TextBlocksHelper
	def direct_to_form(post)
		if post.is_a?(Article)
			@article = post
			"articles"
		else
			@recipe = post
			"recipes"
		end
	end
end