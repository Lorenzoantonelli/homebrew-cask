cask 'github' do
  version '2.4.1-aae6e805'
  sha256 '579ae9918179ef884f8bd22c50375cef9310fd81f87b3b4462f8a95e03176878'

  # githubusercontent.com was verified as official when first introduced to the cask
  url "https://desktop.githubusercontent.com/releases/#{version}/GitHubDesktop.zip"
  appcast 'https://github.com/desktop/desktop/releases.atom'
  name 'GitHub Desktop'
  homepage 'https://desktop.github.com/'

  auto_updates true

  app 'GitHub Desktop.app'
  binary "#{appdir}/GitHub Desktop.app/Contents/Resources/app/static/github.sh", target: 'github'

  zap trash: [
               '~/Library/Application Support/GitHub Desktop',
               '~/Library/Application Support/com.github.GitHubClient',
               '~/Library/Application Support/com.github.GitHubClient.ShipIt',
               '~/Library/Application Support/ShipIt_stderr.log',
               '~/Library/Application Support/ShipIt_stdout.log',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.github.GitHubClient.sfl*',
               '~/Library/Caches/com.github.GitHubClient',
               '~/Library/Caches/com.github.GitHubClient.ShipIt',
               '~/Library/Preferences/com.github.GitHubClient.helper.plist',
               '~/Library/Preferences/com.github.GitHubClient.plist',
             ],
      rmdir: '~/.config/git'
end
