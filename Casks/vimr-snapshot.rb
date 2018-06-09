cask 'vimr-snapshot' do
  version 'SNAPSHOT-279'
  sha256 '70d19b405d256b55119a11fd9e6ec43d4baff07c5a0e503bb5d4c5247f9d0197'

  url "https://github.com/qvacua/vimr/releases/download/#{version.gsub(%r{SNAPSHOT-}, 'snapshot%2F')}/VimR-#{version}.tar.bz2"
  appcast 'https://raw.githubusercontent.com/qvacua/vimr/master/appcast_snapshot.xml',
          checkpoint: 'c399df60df670492730c8169f2c9c8069cbfe9f82a2b3f757153c98cdb3f3878'
  name 'VimR (snapshot)'
  homepage 'https://github.com/qvacua/vimr'

  auto_updates true

  app 'VimR.app'
  binary "#{appdir}/VimR.app/Contents/Resources/vimr"

  zap trash: [
               '~/Library/Caches/com.qvacua.VimR',
               '~/Library/Preferences/com.qvacua.VimR.plist',
               '~/Library/Saved Application State/com.qvacua.VimR.savedState',
               '~/Library/WebKit/com.qvacua.VimR',
             ]
end
