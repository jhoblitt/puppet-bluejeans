Puppet bluejeans Module
===============================

[![Build Status](https://travis-ci.org/jhoblitt/puppet-bluejeans.png)](https://travis-ci.org/jhoblitt/puppet-bluejeans)

#### Table of Contents

1. [Overview](#overview)
2. [Description](#description)
3. [Usage](#usage)
4. [Limitations](#limitations)
    * [Tested Platforms](#tested-platforms)
5. [Versioning](#versioning)
6. [Support](#support)
7. [Contributing](#contributing)
8. [See Also](#see-also)


Overview
--------

Manages the google-talkplugin package

Usage
-----

```puppet
include ::bluejeans
```

```puppet
#defaults
class { 'bluejeans':
    manage_repo => true,
}
```


Limitations
-----------

### Tested Platforms

* el7.x
* Fedora 21
* Fedora 22

Requires a newer version of glibc than is present on el6.x:

```
Error: Package: google-talkplugin-5.41.0.0-1.x86_64 (google-talkplugin)
           Requires: libstdc++.so.6(GLIBCXX_3.4.15)(64bit)
Error: Package: google-talkplugin-5.41.0.0-1.x86_64 (google-talkplugin)
           Requires: libc.so.6(GLIBC_2.14)(64bit)
```


Versioning
----------

This module is versioned according to the [Semantic Versioning
2.0.0](http://semver.org/spec/v2.0.0.html) specification.


Support
-------

Please log tickets and issues at
[github](https://github.com/jhoblitt/puppet-bluejeans/issues)


Contributing
------------

1. Fork it on github
2. Make a local clone of your fork
3. Create a topic branch.  Eg, `feature/mousetrap`
4. Make/commit changes
    * Commit messages should be in [imperative tense](http://git-scm.com/book/ch5-2.html)
    * Check that linter warnings or errors are not introduced - `bundle exec rake lint`
    * Check that `Rspec-puppet` unit tests are not broken and coverage is added for new
      features - `bundle exec rake spec`
    * Documentation of API/features is updated as appropriate in the README
    * If present, `beaker` acceptance tests should be run and potentially
      updated - `bundle exec rake beaker`
5. When the feature is complete, rebase / squash the branch history as
   necessary to remove "fix typo", "oops", "whitespace" and other trivial commits
6. Push the topic branch to github
7. Open a Pull Request (PR) from the *topic branch* onto parent repo's `master` branch


See Also
--------

* [Hangouts plugin](https://www.google.com/tools/dlpage/hangoutplugin)
