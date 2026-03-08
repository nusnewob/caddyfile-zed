((cel_expression) @injection.content
  (#set! injection.language "cel"))

(heredoc
  (heredoc_body) @injection.content
  (heredoc_end) @injection.language)
