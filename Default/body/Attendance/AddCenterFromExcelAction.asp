<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>

<!-- #include file ='clsUpload.asp' -->


<%
on error resume next 
Dim objUpload 
Dim strFile, strPath
' Instantiate Upload Class '
Set objUpload = New clsUpload
strFile = objUpload.Fields("file").FileName
strPath = server.mappath("/data") & "/" & strFile
' Save the binary data to the file system '
objUpload("file").SaveAs strPath
Set objUpload = Nothing
If err.number <> 0 Then
 Response.Write("<br>"&err.description) 
End If 
%>

