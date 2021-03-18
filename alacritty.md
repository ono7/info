# manually install alacritty

curl -L -o Alacritty.dmg https://github.com/alacritty/alacritty/releases/download/v0.4.3/Alacritty-v0.4.3.dmg

# make sure both operator fonts are installed

create alacritty univeral binary

rustup target add x86_64-apple-darwin aarch64-apple-darwin
cargo build --release --target=x86_64-apple-darwin
cargo build --release --target=aarch64-apple-darwin
lipo target/{x86_64,aarch64}-apple-darwin/release/alacritty -create -output alacritty
Running file alacritty will now show you something like:

alacritty: Mach-O universal binary with 2 architectures: [x86_64:Mach-O 64-bit executable x86_64] [arm64]
alacritty (for architecture x86_64): Mach-O 64-bit executable x86_64
alacritty (for architecture arm64): Mach-O 64-bit executable arm64
