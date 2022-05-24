#IfWinActive ahk_exe Typora.exe
{
    ; Ctrl+Alt+K javaCode    
    ; crtl是  ^ , shift是 + , k是  k键
    ; 切换到英文输入法
    ^+Q::addCodeJava()
}
addCodeJava(){
Send,{```}
Send,{```}
Send,{```}
Send,js
Send,{Enter}
Return
}
