'this is jokeware, don't treat it as a virus or an exe!
'and also, for some people, it might be difficult to remove it, all you have to do to remove it is go to task manager and check the apps category(if it does not appear, click on "More details"), find "Microsoft ® Windows Based Script Host" and click on end task(do not go into any other category execpt apps, they are at the top!)
Set WshShell = WScript.CreateObject("WScript.Shell")

Const MaxWindows = 100
Dim windowCount
windowCount = 0

x = MsgBox("Allow FUN on your computer?", 0 + 64, "FUN")

If x = 1 Then
    Do While windowCount < MaxWindows
        CreateMessageBoxWithIconAndButton "FUN", "FUN", vbCritical + vbSystemModal, vbOKOnly, "FUN"
        windowCount = windowCount + 1
    Loop

    ShowPrankAlertMessage
End If

Sub CreateMessageBoxWithIconAndButton(title, message, icon, buttons, windowTitle)
    Dim objShell, intResult
    Set objShell = CreateObject("WScript.Shell")
    
    intResult = objShell.Popup(message, , title, icon + buttons)
    If intResult = vbOK Then
        objShell.SendKeys "~"
    End If
    
    Set objShell = Nothing
End Sub

Sub ShowPrankAlertMessage()
    Dim objShell
    Set objShell = CreateObject("WScript.Shell")
    
    objShell.Popup "This is a prank, not a virus!", , "Prank alert", vbInformation + vbOKOnly
    
    Set objShell = Nothing
End Sub
