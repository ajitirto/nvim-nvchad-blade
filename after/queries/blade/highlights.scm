;; highlights.scm for blade

;; Blade directives
(directive_statement (directive_name) @keyword)
(php_directive (directive_name) @keyword)
(escaped_php_directive (directive_name) @keyword)
(raw_php_directive (directive_name) @keyword)

;; Variable interpolation
(variable_interpolation
  (double_curly_open) @punctuation.special
  (variable) @variable
  (double_curly_close) @punctuation.special
)

;; PHP code inside directives (often handled by injections)
(php_block (code) @embedded)
(php_expression (code) @embedded)
(php_raw_block (code) @embedded)