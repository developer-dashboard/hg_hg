#require test-repo

  $ . "$TESTDIR/helpers-testrepo.sh"
  $ cd "$TESTDIR"/..

  $ hg files 'set:(**.py)' | sed 's|\\|/|g' | xargs python contrib/check-py3-compat.py
  hgext/fsmonitor/pywatchman/__init__.py not using absolute_import
  hgext/fsmonitor/pywatchman/__init__.py requires print_function
  hgext/fsmonitor/pywatchman/capabilities.py not using absolute_import
  hgext/fsmonitor/pywatchman/pybser.py not using absolute_import
  i18n/check-translation.py not using absolute_import
  setup.py not using absolute_import
  tests/test-demandimport.py not using absolute_import

#if py3exe
  $ hg files 'set:(**.py)' | sed 's|\\|/|g' | xargs $PYTHON3 contrib/check-py3-compat.py
  doc/hgmanpage.py: invalid syntax: invalid syntax (<unknown>, line *) (glob)
  hgext/acl.py: error importing: <TypeError> str expected, not bytes (error at encoding.py:*) (glob)
  hgext/automv.py: error importing: <TypeError> str expected, not bytes (error at encoding.py:*) (glob)
  hgext/blackbox.py: error importing: <TypeError> str expected, not bytes (error at encoding.py:*) (glob)
  hgext/bugzilla.py: error importing: <TypeError> str expected, not bytes (error at encoding.py:*) (glob)
  hgext/censor.py: error importing: <TypeError> str expected, not bytes (error at encoding.py:*) (glob)
  hgext/chgserver.py: error importing: <TypeError> str expected, not bytes (error at encoding.py:*) (glob)
  hgext/children.py: error importing: <TypeError> str expected, not bytes (error at encoding.py:*) (glob)
  hgext/churn.py: error importing: <TypeError> str expected, not bytes (error at encoding.py:*) (glob)
  hgext/clonebundles.py: error importing: <TypeError> str expected, not bytes (error at encoding.py:*) (glob)
  hgext/color.py: invalid syntax: invalid syntax (<unknown>, line *) (glob)
  hgext/convert/bzr.py: error importing: <TypeError> str expected, not bytes (error at encoding.py:*) (glob)
  hgext/convert/common.py: error importing: <TypeError> str expected, not bytes (error at encoding.py:*) (glob)
  hgext/convert/convcmd.py: error importing: <TypeError> str expected, not bytes (error at encoding.py:*) (glob)
  hgext/convert/cvs.py: error importing: <TypeError> str expected, not bytes (error at encoding.py:*) (glob)
  hgext/convert/cvsps.py: error importing: <TypeError> str expected, not bytes (error at encoding.py:*) (glob)
  hgext/convert/darcs.py: error importing: <TypeError> str expected, not bytes (error at encoding.py:*) (glob)
  hgext/convert/filemap.py: error importing: <TypeError> str expected, not bytes (error at encoding.py:*) (glob)
  hgext/convert/git.py: error importing: <TypeError> str expected, not bytes (error at encoding.py:*) (glob)
  hgext/convert/gnuarch.py: error importing: <TypeError> str expected, not bytes (error at encoding.py:*) (glob)
  hgext/convert/hg.py: error importing: <TypeError> str expected, not bytes (error at encoding.py:*) (glob)
  hgext/convert/monotone.py: error importing: <TypeError> str expected, not bytes (error at encoding.py:*) (glob)
  hgext/convert/p4.py: error importing: <TypeError> str expected, not bytes (error at encoding.py:*) (glob)
  hgext/convert/subversion.py: error importing: <TypeError> str expected, not bytes (error at encoding.py:*) (glob)
  hgext/convert/transport.py: error importing module: <ImportError> No module named 'svn.client' (line *) (glob)
  hgext/eol.py: error importing: <TypeError> str expected, not bytes (error at encoding.py:*) (glob)
  hgext/extdiff.py: error importing: <TypeError> str expected, not bytes (error at encoding.py:*) (glob)
  hgext/factotum.py: error importing: <TypeError> str expected, not bytes (error at encoding.py:*) (glob)
  hgext/fetch.py: error importing: <TypeError> str expected, not bytes (error at encoding.py:*) (glob)
  hgext/fsmonitor/state.py: error importing: <TypeError> str expected, not bytes (error at encoding.py:*) (glob)
  hgext/fsmonitor/watchmanclient.py: error importing: <TypeError> str expected, not bytes (error at encoding.py:*) (glob)
  hgext/gpg.py: error importing: <TypeError> str expected, not bytes (error at encoding.py:*) (glob)
  hgext/graphlog.py: error importing: <TypeError> str expected, not bytes (error at encoding.py:*) (glob)
  hgext/hgk.py: error importing: <TypeError> str expected, not bytes (error at encoding.py:*) (glob)
  hgext/highlight/highlight.py: error importing: <TypeError> str expected, not bytes (error at encoding.py:*) (glob)
  hgext/histedit.py: error importing: <TypeError> str expected, not bytes (error at encoding.py:*) (glob)
  hgext/journal.py: error importing: <TypeError> str expected, not bytes (error at encoding.py:*) (glob)
  hgext/keyword.py: error importing: <TypeError> str expected, not bytes (error at encoding.py:*) (glob)
  hgext/largefiles/basestore.py: error importing: <TypeError> str expected, not bytes (error at encoding.py:*) (glob)
  hgext/largefiles/lfcommands.py: error importing: <TypeError> str expected, not bytes (error at encoding.py:*) (glob)
  hgext/largefiles/lfutil.py: error importing: <TypeError> str expected, not bytes (error at encoding.py:*) (glob)
  hgext/largefiles/localstore.py: error importing: <TypeError> str expected, not bytes (error at encoding.py:*) (glob)
  hgext/largefiles/overrides.py: error importing: <TypeError> str expected, not bytes (error at encoding.py:*) (glob)
  hgext/largefiles/proto.py: error importing: <TypeError> str expected, not bytes (error at encoding.py:*) (glob)
  hgext/largefiles/remotestore.py: error importing: <TypeError> str expected, not bytes (error at encoding.py:*) (glob)
  hgext/largefiles/reposetup.py: error importing: <TypeError> str expected, not bytes (error at encoding.py:*) (glob)
  hgext/largefiles/storefactory.py: error importing: <TypeError> str expected, not bytes (error at encoding.py:*) (glob)
  hgext/largefiles/uisetup.py: error importing: <TypeError> str expected, not bytes (error at encoding.py:*) (glob)
  hgext/largefiles/wirestore.py: error importing module: <SystemError> Parent module 'hgext.largefiles' not loaded, cannot perform relative import (line *) (glob)
  hgext/mq.py: error importing: <TypeError> str expected, not bytes (error at encoding.py:*) (glob)
  hgext/notify.py: error importing: <TypeError> str expected, not bytes (error at encoding.py:*) (glob)
  hgext/pager.py: error importing: <TypeError> str expected, not bytes (error at encoding.py:*) (glob)
  hgext/patchbomb.py: error importing: <TypeError> str expected, not bytes (error at encoding.py:*) (glob)
  hgext/purge.py: error importing: <TypeError> str expected, not bytes (error at encoding.py:*) (glob)
  hgext/rebase.py: error importing: <TypeError> str expected, not bytes (error at encoding.py:*) (glob)
  hgext/record.py: error importing: <TypeError> str expected, not bytes (error at encoding.py:*) (glob)
  hgext/relink.py: error importing: <TypeError> str expected, not bytes (error at encoding.py:*) (glob)
  hgext/schemes.py: error importing: <TypeError> str expected, not bytes (error at encoding.py:*) (glob)
  hgext/share.py: error importing: <TypeError> str expected, not bytes (error at encoding.py:*) (glob)
  hgext/shelve.py: error importing: <TypeError> str expected, not bytes (error at encoding.py:*) (glob)
  hgext/strip.py: error importing: <TypeError> str expected, not bytes (error at encoding.py:*) (glob)
  hgext/transplant.py: error importing: <TypeError> str expected, not bytes (error at encoding.py:*) (glob)
  hgext/win32mbcs.py: error importing: <TypeError> str expected, not bytes (error at encoding.py:*) (glob)
  hgext/win32text.py: error importing: <TypeError> str expected, not bytes (error at encoding.py:*) (glob)
  mercurial/archival.py: invalid syntax: invalid syntax (<unknown>, line *) (glob)
  mercurial/bookmarks.py: error importing: <TypeError> str expected, not bytes (error at encoding.py:*) (glob)
  mercurial/branchmap.py: error importing: <TypeError> str expected, not bytes (error at encoding.py:*) (glob)
  mercurial/bundle2.py: invalid syntax: invalid syntax (<unknown>, line *) (glob)
  mercurial/bundlerepo.py: error importing: <TypeError> str expected, not bytes (error at encoding.py:*) (glob)
  mercurial/byterange.py: error importing: <TypeError> str expected, not bytes (error at encoding.py:*) (glob)
  mercurial/changegroup.py: error importing: <TypeError> str expected, not bytes (error at encoding.py:*) (glob)
  mercurial/changelog.py: error importing: <TypeError> str expected, not bytes (error at encoding.py:*) (glob)
  mercurial/cmdutil.py: error importing: <TypeError> str expected, not bytes (error at encoding.py:*) (glob)
  mercurial/commands.py: invalid syntax: invalid syntax (<unknown>, line *) (glob)
  mercurial/commandserver.py: error importing: <TypeError> str expected, not bytes (error at encoding.py:*) (glob)
  mercurial/config.py: error importing: <TypeError> str expected, not bytes (error at encoding.py:*) (glob)
  mercurial/context.py: error importing: <TypeError> str expected, not bytes (error at encoding.py:*) (glob)
  mercurial/copies.py: error importing: <TypeError> str expected, not bytes (error at encoding.py:*) (glob)
  mercurial/crecord.py: error importing: <TypeError> str expected, not bytes (error at encoding.py:*) (glob)
  mercurial/dagparser.py: error importing: <TypeError> str expected, not bytes (error at encoding.py:*) (glob)
  mercurial/dagutil.py: error importing: <TypeError> str expected, not bytes (error at encoding.py:*) (glob)
  mercurial/destutil.py: error importing: <TypeError> str expected, not bytes (error at encoding.py:*) (glob)
  mercurial/dirstate.py: error importing: <TypeError> str expected, not bytes (error at encoding.py:*) (glob)
  mercurial/discovery.py: error importing: <TypeError> str expected, not bytes (error at encoding.py:*) (glob)
  mercurial/dispatch.py: error importing: <TypeError> str expected, not bytes (error at encoding.py:*) (glob)
  mercurial/exchange.py: error importing: <TypeError> str expected, not bytes (error at i18n.py:*) (glob)
  mercurial/extensions.py: error importing: <TypeError> str expected, not bytes (error at i18n.py:*) (glob)
  mercurial/fancyopts.py: error importing: <TypeError> str expected, not bytes (error at i18n.py:*) (glob)
  mercurial/filelog.py: error importing: <TypeError> str expected, not bytes (error at i18n.py:*) (glob)
  mercurial/filemerge.py: error importing: <TypeError> str expected, not bytes (error at i18n.py:*) (glob)
  mercurial/fileset.py: error importing: <TypeError> str expected, not bytes (error at i18n.py:*) (glob)
  mercurial/formatter.py: error importing: <TypeError> str expected, not bytes (error at i18n.py:*) (glob)
  mercurial/graphmod.py: error importing: <TypeError> str expected, not bytes (error at i18n.py:*) (glob)
  mercurial/hbisect.py: error importing: <TypeError> str expected, not bytes (error at i18n.py:*) (glob)
  mercurial/help.py: error importing: <TypeError> str expected, not bytes (error at i18n.py:*) (glob)
  mercurial/hg.py: error importing: <TypeError> str expected, not bytes (error at i18n.py:*) (glob)
  mercurial/hgweb/common.py: error importing module: <SystemError> Parent module 'mercurial.hgweb' not loaded, cannot perform relative import (line *) (glob)
  mercurial/hgweb/hgweb_mod.py: error importing module: <SystemError> Parent module 'mercurial.hgweb' not loaded, cannot perform relative import (line *) (glob)
  mercurial/hgweb/hgwebdir_mod.py: error importing module: <SystemError> Parent module 'mercurial.hgweb' not loaded, cannot perform relative import (line *) (glob)
  mercurial/hgweb/protocol.py: error importing module: <SystemError> Parent module 'mercurial.hgweb' not loaded, cannot perform relative import (line *) (glob)
  mercurial/hgweb/request.py: error importing module: <SystemError> Parent module 'mercurial.hgweb' not loaded, cannot perform relative import (line *) (glob)
  mercurial/hgweb/server.py: error importing module: <SystemError> Parent module 'mercurial.hgweb' not loaded, cannot perform relative import (line *) (glob)
  mercurial/hgweb/webcommands.py: error importing module: <SystemError> Parent module 'mercurial.hgweb' not loaded, cannot perform relative import (line *) (glob)
  mercurial/hgweb/webutil.py: error importing module: <SystemError> Parent module 'mercurial.hgweb' not loaded, cannot perform relative import (line *) (glob)
  mercurial/hgweb/wsgicgi.py: error importing module: <SystemError> Parent module 'mercurial.hgweb' not loaded, cannot perform relative import (line *) (glob)
  mercurial/hook.py: error importing: <TypeError> str expected, not bytes (error at i18n.py:*) (glob)
  mercurial/httpconnection.py: error importing: <TypeError> str expected, not bytes (error at i18n.py:*) (glob)
  mercurial/httppeer.py: error importing: <TypeError> str expected, not bytes (error at i18n.py:*) (glob)
  mercurial/keepalive.py: error importing: <TypeError> '_fields_' must be a sequence of (name, C type) pairs (error at osutil.py:*) (glob)
  mercurial/localrepo.py: error importing: <TypeError> '_fields_' must be a sequence of (name, C type) pairs (error at osutil.py:*) (glob)
  mercurial/lock.py: error importing: <TypeError> '_fields_' must be a sequence of (name, C type) pairs (error at osutil.py:*) (glob)
  mercurial/mail.py: error importing: <TypeError> '_fields_' must be a sequence of (name, C type) pairs (error at osutil.py:*) (glob)
  mercurial/manifest.py: error importing: <TypeError> getattr(): attribute name must be string (error at pycompat.py:*) (glob)
  mercurial/match.py: error importing: <TypeError> '_fields_' must be a sequence of (name, C type) pairs (error at osutil.py:*) (glob)
  mercurial/mdiff.py: error importing: <TypeError> getattr(): attribute name must be string (error at pycompat.py:*) (glob)
  mercurial/merge.py: error importing: <TypeError> '_fields_' must be a sequence of (name, C type) pairs (error at osutil.py:*) (glob)
  mercurial/minirst.py: error importing: <TypeError> '_fields_' must be a sequence of (name, C type) pairs (error at osutil.py:*) (glob)
  mercurial/namespaces.py: error importing: <TypeError> '_fields_' must be a sequence of (name, C type) pairs (error at osutil.py:*) (glob)
  mercurial/obsolete.py: error importing: <TypeError> getattr(): attribute name must be string (error at pycompat.py:*) (glob)
  mercurial/patch.py: error importing: <TypeError> '_fields_' must be a sequence of (name, C type) pairs (error at osutil.py:*) (glob)
  mercurial/pathutil.py: error importing: <TypeError> '_fields_' must be a sequence of (name, C type) pairs (error at osutil.py:*) (glob)
  mercurial/peer.py: error importing: <TypeError> '_fields_' must be a sequence of (name, C type) pairs (error at osutil.py:*) (glob)
  mercurial/pure/mpatch.py: error importing module: <ImportError> cannot import name 'pycompat' (line *) (glob)
  mercurial/pure/osutil.py: error importing module: <ImportError> cannot import name 'policy' (line *) (glob)
  mercurial/pure/parsers.py: error importing module: <ImportError> No module named 'mercurial.pure.node' (line *) (glob)
  mercurial/pushkey.py: error importing: <TypeError> '_fields_' must be a sequence of (name, C type) pairs (error at osutil.py:*) (glob)
  mercurial/pvec.py: error importing: <TypeError> '_fields_' must be a sequence of (name, C type) pairs (error at osutil.py:*) (glob)
  mercurial/registrar.py: error importing: <TypeError> '_fields_' must be a sequence of (name, C type) pairs (error at osutil.py:*) (glob)
  mercurial/repair.py: error importing module: <SyntaxError> invalid syntax (bundle2.py, line *) (line *) (glob)
  mercurial/repoview.py: error importing: <TypeError> '_fields_' must be a sequence of (name, C type) pairs (error at osutil.py:*) (glob)
  mercurial/revlog.py: error importing: <TypeError> '_fields_' must be a sequence of (name, C type) pairs (error at osutil.py:*) (glob)
  mercurial/revset.py: error importing: <TypeError> '_fields_' must be a sequence of (name, C type) pairs (error at osutil.py:*) (glob)
  mercurial/scmposix.py: error importing: <TypeError> '_fields_' must be a sequence of (name, C type) pairs (error at osutil.py:*) (glob)
  mercurial/scmutil.py: error importing: <TypeError> '_fields_' must be a sequence of (name, C type) pairs (error at osutil.py:*) (glob)
  mercurial/scmwindows.py: error importing module: <ImportError> No module named '_winreg' (line *) (glob)
  mercurial/similar.py: error importing: <TypeError> '_fields_' must be a sequence of (name, C type) pairs (error at osutil.py:*) (glob)
  mercurial/simplemerge.py: error importing: <TypeError> '_fields_' must be a sequence of (name, C type) pairs (error at osutil.py:*) (glob)
  mercurial/sshpeer.py: error importing: <TypeError> '_fields_' must be a sequence of (name, C type) pairs (error at osutil.py:*) (glob)
  mercurial/sshserver.py: error importing: <TypeError> '_fields_' must be a sequence of (name, C type) pairs (error at osutil.py:*) (glob)
  mercurial/sslutil.py: error importing: <TypeError> '_fields_' must be a sequence of (name, C type) pairs (error at osutil.py:*) (glob)
  mercurial/statichttprepo.py: error importing: <TypeError> '_fields_' must be a sequence of (name, C type) pairs (error at osutil.py:*) (glob)
  mercurial/store.py: error importing: <TypeError> '_fields_' must be a sequence of (name, C type) pairs (error at osutil.py:*) (glob)
  mercurial/streamclone.py: error importing: <TypeError> '_fields_' must be a sequence of (name, C type) pairs (error at osutil.py:*) (glob)
  mercurial/subrepo.py: error importing: <TypeError> '_fields_' must be a sequence of (name, C type) pairs (error at osutil.py:*) (glob)
  mercurial/tagmerge.py: error importing: <TypeError> '_fields_' must be a sequence of (name, C type) pairs (error at osutil.py:*) (glob)
  mercurial/tags.py: error importing: <TypeError> '_fields_' must be a sequence of (name, C type) pairs (error at osutil.py:*) (glob)
  mercurial/templatefilters.py: error importing: <TypeError> '_fields_' must be a sequence of (name, C type) pairs (error at osutil.py:*) (glob)
  mercurial/templatekw.py: error importing: <TypeError> '_fields_' must be a sequence of (name, C type) pairs (error at osutil.py:*) (glob)
  mercurial/templater.py: error importing: <TypeError> '_fields_' must be a sequence of (name, C type) pairs (error at osutil.py:*) (glob)
  mercurial/transaction.py: error importing: <TypeError> '_fields_' must be a sequence of (name, C type) pairs (error at osutil.py:*) (glob)
  mercurial/ui.py: error importing: <TypeError> '_fields_' must be a sequence of (name, C type) pairs (error at osutil.py:*) (glob)
  mercurial/unionrepo.py: error importing: <TypeError> '_fields_' must be a sequence of (name, C type) pairs (error at osutil.py:*) (glob)
  mercurial/url.py: error importing: <TypeError> '_fields_' must be a sequence of (name, C type) pairs (error at osutil.py:*) (glob)
  mercurial/util.py: error importing: <TypeError> '_fields_' must be a sequence of (name, C type) pairs (error at osutil.py:*) (glob)
  mercurial/verify.py: error importing: <TypeError> '_fields_' must be a sequence of (name, C type) pairs (error at osutil.py:*) (glob)
  mercurial/win32.py: error importing module: <ImportError> No module named 'msvcrt' (line *) (glob)
  mercurial/windows.py: error importing module: <ImportError> No module named '_winreg' (line *) (glob)
  mercurial/wireproto.py: error importing module: <SyntaxError> invalid syntax (bundle2.py, line *) (line *) (glob)

#endif
