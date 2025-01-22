[ "{" ] @indent.end

[ "{" "}" ] @indent.branch

[
	(ERROR)
	(comment)
] @indent.auto
