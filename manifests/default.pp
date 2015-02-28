$latestPackages = [
  "appserver-dist"
]

$installedPackages = [
  "vim",
  "screen"
]

package {
  $latestPackages:
    ensure => latest
}

package {
  $installedPackages:
    ensure => installed
}
