{% extends "base.ahk" %}
{% block body %}
WinGet, ExStyle, ExStyle, ahk_id {{ win.id }}
if (ExStyle & 0x8)  ; 0x8 is WS_EX_TOPMOST.
    FileAppend, 1, *
else
    FileAppend, 0, *
{% endblock body %}
