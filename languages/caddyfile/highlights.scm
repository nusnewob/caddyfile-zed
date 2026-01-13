(comment) @comment
[
  (environment_variable)
  (placeholder)
] @constant

[
  (network_address)
  (ip_address_or_cidr)
  (path)
] @type

[
  (snippet_name)
  (named_route_identifier)
  (site_address)
] @keyword

(directive (directive_name) @property)

; declaration of a named matcher
(named_matcher (matcher_identifier (matcher_name)) @function.macro)

; reference to a named matcher
(matcher (matcher_identifier (matcher_name)) @function.macro)

; directive within a named matcher declaration
(matcher_directive (matcher_directive_name) @function.method)

; any other matcher (wildcard and path)
(matcher) @function.macro

[
  (interpreted_string_literal)
  (raw_string_literal)
  (heredoc)
  (cel_expression)
] @string
(escape_sequence) @escape

[
  (duration_literal)
  (int_literal)
] @number

[
  "{"
  "}"
] @punctuation.bracket
