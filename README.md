# Caddyfile Support for Zed Editor

This extension adds basic support for [Caddyfile](https://caddyserver.com/docs/caddyfile) syntax highlighting in the [Zed](https://zed.dev/) editor.

## Features

- **Syntax Highlighting**: Provides syntax highlighting for Caddyfile configurations in Zed.

## Installation

1. **Clone the Repository**:

   ```bash
   git clone https://github.com/nusnewob/caddyfile-zed.git
   ```

2. **Install the Extension**:

   Follow Zed's guidelines to install the extension into your editor.

3. **Configure**:

   Update your Zed config file.

   ```json
   "file_types": {
     "Caddyfile": ["Caddyfile*", "*.caddyfile"]
   },
   "languages": {
     "Caddyfile": {
       "format_on_save": "on",
       "tab_size": 2,
       "formatter": {
         "external": {
           "command": "caddy",
           "arguments": ["fmt", "-"]
         }
       }
     }
   }
   ```

   <!--
   # TODO: LSP liniting doesn't work
   ```json
    "lsp": {
      "caddyfile": {
        "language_servers": ["caddy"]
        "code_actions_on_format": {
          "external": {
            "command": "caddy",
            "arguments": ["validate", "--config", "-"]
          }
        }
      }
   }
   ```
   -->

## Acknowledgments

This extension utilizes the [tree-sitter-caddyfile](https://github.com/matthewpi/tree-sitter-caddyfile) for parsing Caddyfile. Special thanks to the contributors of that project for their work.
