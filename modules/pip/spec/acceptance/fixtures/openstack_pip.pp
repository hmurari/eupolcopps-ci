include pip

$packages = [
  'Babel',
  'bandersnatch',
  'elasticsearch-curator',
  'gear',
  'git-review',
  'irclog2html',
  'gerritbot',
  'keyring',
  'ndg-httpsclient',
  'pyasn1',
  'PyGithub',
  'pyOpenSSL',
  'python-jenkins',
  'python-subunit',
  'python-swiftclient',
  'PyYAML',
  'requests',
  'requestsexceptions',
  'shade',
  'statsd',
  'SQLAlchemy',
  'subunit2sql',
  'testtools',
  'tox',
  'virtualenv',
  'yappi',
]
package { $packages:
  ensure   => latest,
  provider => openstack_pip,
  require  => Class['pip'],
}
