"""
error.py - Mercurial exceptions

This allows us to catch exceptions at higher levels without forcing imports

Copyright 2005-2008 Matt Mackall <mpm@selenic.com>

This software may be used and distributed according to the terms
of the GNU General Public License, incorporated herein by reference.
"""

# Do not import anything here, please

class RevlogError(Exception):
    pass

class LookupError(RevlogError, KeyError):
    def __init__(self, name, index, message):
        self.name = name
        if isinstance(name, str) and len(name) == 20:
            from node import short
            name = short(name)
        RevlogError.__init__(self, '%s@%s: %s' % (index, name, message))

    def __str__(self):
        return RevlogError.__str__(self)

class ParseError(Exception):
    """Exception raised on errors in parsing the command line."""

class RepoError(Exception):
    pass

class CapabilityError(RepoError):
    pass

class LockError(IOError):
    def __init__(self, errno, strerror, filename, desc):
        IOError.__init__(self, errno, strerror, filename)
        self.desc = desc

class LockHeld(LockError):
    def __init__(self, errno, filename, desc, locker):
        LockError.__init__(self, errno, 'Lock held', filename, desc)
        self.locker = locker

class LockUnavailable(LockError):
    pass
