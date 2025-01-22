use zed_extension_api::{self as zed, LanguageServerId, Result};

struct CaddyfileExtension {}

impl zed::Extension for CaddyfileExtension {
    fn new() -> Self {
        Self {}
    }

    fn language_server_command(
        &mut self,
        _: &LanguageServerId,
        worktree: &zed::Worktree,
    ) -> Result<zed::Command> {
        let path = worktree
            .which("caddy")
            .ok_or_else(|| "Must install https://github.com/caddyserver/caddy".to_string())?;

        Ok(zed::Command {
            command: path,
            args: vec![],
            env: vec![],
        })
    }
}

zed::register_extension!(CaddyfileExtension);
