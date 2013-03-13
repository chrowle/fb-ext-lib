''Copyright (c) 2007-2013, FreeBASIC Extended Library Development Group
''
''All rights reserved.
''
''Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:
''
''    * Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
''    * Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.
''    * Neither the name of the FreeBASIC Extended Library Development Group nor the names of its contributors may be used to endorse or promote products derived from this software without specific prior written permission.
''
''THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
''"AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
''LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
''A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR
''CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
''EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
''PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
''PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF
''LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
''NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
''SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

#include once "ext/json.bi"

namespace ext.json

operator JSONarray.cast() as string

    if m_children = 0 then return "[]"

    var ret = "[ "
    for n as uinteger = 0 to m_children -1
        ret = ret & *(m_child[n])
        if n < m_children-1 then
            ret = ret & ", "
        end if
    next

    return ret & " ]"

end operator

function JSONarray.at( byval index as uinteger ) as JSONvalue ptr
    if index < m_children then
        return m_child[index]
    else
        return null
    end if
end function

function JSONarray.length() as uinteger
    return m_children
end function

constructor JSONarray( byval i as JSONvalue ptr ptr, byval i_len as uinteger )
    m_children = i_len
    m_child = i
end constructor

destructor JSONarray
    if m_children > 0 then
        for n as uinteger = 0 to m_children -1
            delete m_child[n]
        next
        deallocate m_child
    end if
end destructor

end namespace