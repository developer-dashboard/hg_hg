        if self.opener.islink(fname):
            return (self.opener.readlink(fname), (True, False))

            isexec = self.opener.lstat(fname).st_mode & 0100 != 0
            self.opener.setflags(fname, islink, isexec)
                self.opener.setflags(fname, False, True)
        self.opener.unlinkpath(fname, ignoremissing=True)
        return self.opener.lexists(fname)
                               "exists\n") % self.fname)
                l = h.new(self.lines)
                self.lines[:] = l
                self.offset += len(l)
    'A binary patch file.'
        self.delta = False
    def new(self, lines):
        if self.delta:
            return [applybindelta(self.text, ''.join(lines))]
        size = 0
                size = int(line[8:].rstrip())
                break
            if line.startswith('delta '):
                size = int(line[6:].rstrip())
                self.delta = True
def applybindelta(binchunk, data):
    """Apply a binary delta hunk
    The algorithm used is the algorithm from git's patch-delta.c
    """
    def deltahead(binchunk):
        i = 0
        for c in binchunk:
            i += 1
            if not (ord(c) & 0x80):
                return i
        return i
    out = ""
    s = deltahead(binchunk)
    binchunk = binchunk[s:]
    s = deltahead(binchunk)
    binchunk = binchunk[s:]
    i = 0
    while i < len(binchunk):
        cmd = ord(binchunk[i])
        i += 1
        if (cmd & 0x80):
            offset = 0
            size = 0
            if (cmd & 0x01):
                offset = ord(binchunk[i])
                i += 1
            if (cmd & 0x02):
                offset |= ord(binchunk[i]) << 8
                i += 1
            if (cmd & 0x04):
                offset |= ord(binchunk[i]) << 16
                i += 1
            if (cmd & 0x08):
                offset |= ord(binchunk[i]) << 24
                i += 1
            if (cmd & 0x10):
                size = ord(binchunk[i])
                i += 1
            if (cmd & 0x20):
                size |= ord(binchunk[i]) << 8
                i += 1
            if (cmd & 0x40):
                size |= ord(binchunk[i]) << 16
                i += 1
            if size == 0:
                size = 0x10000
            offset_end = offset + size
            out += data[offset:offset_end]
        elif cmd != 0:
            offset_end = i + cmd
            out += binchunk[i:offset_end]
            i += cmd
        else:
            raise PatchError(_('unexpected delta opcode 0'))
    return out

    if patcher:
        return _externalpatch(ui, repo, patcher, patchname, strip,
                              files, similarity)
    return internalpatch(ui, repo, patchname, strip, files, eolmode,
                         similarity)
        nobinary=get('nobinary'),
    revs = [hexfunc(node) for node in [ctx1.node(), ctx2.node()] if node]
            if f in added or (f in modified and to is None):
            elif f in removed or (f in modified and tn is None):
            if dodiff == 'binary' and not opts.nobinary:
                filename = gitre.search(line).group(2)