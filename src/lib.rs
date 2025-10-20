use zed_extension_api::{self as zed};

struct CaddyfileExtension;

impl zed::Extension for CaddyfileExtension {
    fn new() -> Self {
        Self
    }
}

zed::register_extension!(CaddyfileExtension);
