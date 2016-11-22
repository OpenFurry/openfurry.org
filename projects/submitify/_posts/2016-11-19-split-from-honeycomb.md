---
layout: post
title: Split off from Honeycomb!
author: Makyo
---

Submitify was split off from the call-for-submissions portion of [Honeycomb](/projects/honeycomb/).  Although it might not be needed much within any other Django project as a pluggable application (though you may never know!), it *would* be useful as a standalone application, and I figured out how to do both in the same project through clever use of `MANIFEST.in`.  Keep an eye on the instances portion of it, and I'll track both application plugs and standalone projects.

I don't know why I was surprised, but `MANIFEST.in` will let you specifically exclude packages through the `prune` directive.  That means that you can have, e.g: a `submitify` django app, which is plugable and may be distributed through PyPI, as well as a `submitify_standalone` app which will run the site, hold the settings, etc.  The end result is a file that looks like this:

```
include LICENSE
include README.rst

# Include all of submitify
recursive-include submitify/templates *
recursive-include submitify/views *

# Don't include any of the standalone stuff
prune submitify_standalone
prune usermgmt_standalone
```
