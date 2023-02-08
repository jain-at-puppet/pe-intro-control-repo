# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include profile::apache
class profile::apache {
    $docroot = '/var/www'
    $index_html = "${docroot}/index.html"
    $site_content = 'Hello world!'
    include apache
    apache::vhost { 'vhost.example.com':
      port    => 80,
      docroot => $docroot,
  }
}
