[General]
SyntaxVersion=2
BeginHotkey=121
BeginHotkeyMod=0
PauseHotkey=0
PauseHotkeyMod=0
StopHotkey=123
StopHotkeyMod=0
RunOnce=1
EnableWindow=
MacroID=a2b856c0-daf0-4ac4-b595-55dbeb0af2b5
Description=DNN_COM
Enable=1
AutoRun=0
[Repeat]
Type=0
Number=1
[SetupUI]
Type=2
QUI=
[Relative]
SetupOCXFile=
[Comment]

[Script]
// Author: QQ 1720191365
// Email: dnns@foxmail.com
// Website: www.dnns.vip
// Created Time:2023-04

set ws=createobject("Wscript.Shell")
ws.run "regsvr32 d:/dnncom.dll /s"
Set ws = nothing
Set K = CreateObject("dnncom.dnn")

mycard = "345566689TTJQKAA222X" //���ƣ�����20�ţ�ũ��17��
three = "46T" //���ŵ�����

For i=1 To 100
    str = K.getWinrate(0, "3556689TJQKAA222X") //�����е����Ͳ��е���ʤ�ʣ����Բ���
    TracePrint str & "," & i
    Delay 100
    
    str = K.initCard(0, 0, mycard,three,"") //�����ƾ�
    TracePrint str & "," & i
    Delay 100
    
    str = K.getCard(0, "","") //ȡ��ѳ��ƣ��ϼҺ��¼һ�û��
    TracePrint str & "," & i
    Delay 100
    
    str = K.getCard(0, "0","A") //�¼Ҳ���:"0"���ϼҳ�:"A"
    TracePrint str & "," & i
    Delay 100
    
    str = K.getCard(0, "0","0") //�¼Ҳ���:"0"���ϼҲ���:"0"
    TracePrint str & "," & i
    Delay 100
    
    str = K.getCard(0, "0","JJ") //�¼Ҳ���:"0"���ϼҳ�:"JJ"
    TracePrint str & "," & i
    Delay 1000
Next
    