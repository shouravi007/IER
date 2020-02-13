<!--#include File = 'RetrieveHiddenValueNew.asp' -->
    <div class="col-sm-12">
        <div class="edit-profile bg-style">
            <h1 class="post-name">Edit Form Reference Information </h1>
               <div class="wrapper">
			       <!--#include File = 'GeneralInformation.asp' -->
					<fieldset>
						<legend>Reference Information</legend>

<%
TrackNo = Request.Form("txtTrackingNo")
strPassword = Request.Form("txtPassword") 

If TrackNo = "" Then 
  Response.Redirect("?"&Encode("Location=Modal&FormAction=Login"))
Else
   If IsBlank = "" or isempty(IsBlank) or isnull(IsBlank) Then
      	SQLRef = "SELECT id, Name, Position, Address, Phone, Email FROM Reference WHERE PersonalId=" & TrackNo
      		
      arr_Ref = objERS.RetrieveData(SQLRef, errMsg)
      ErrorMessage "34", errMsg, 0

      intUBRef = UBound(arr_Ref, 2) 
      		
      If arr_Ref(0, 0) <> "Nothing" Then
      	intRefID = -1
      	intRefID2 = -1
      	
      	intRefID = arr_Ref(0, 0)
      	strRefName = arr_Ref(1, 0)
      	strRefPos = arr_Ref(2, 0)
      	strRefAdd = arr_Ref(3, 0)
      	strRefPhone = arr_Ref(4, 0)
      	'strRefHomePhone = arr_Ref(5, 0)
      	strRefEmail = arr_Ref(5, 0)

      	If intUBRef >= 1 Then
      		intRefID2 = arr_Ref(0, 1)
      		strRefName2 = arr_Ref(1, 1)
      		strRefPos2 = arr_Ref(2, 1)
      		strRefAdd2 = arr_Ref(3, 1)
      		strRefPhone2 = arr_Ref(4, 1)
      		'strRefHomePhone2 = arr_Ref(5, 1)
      		strRefEmail2 = arr_Ref(5, 1)
      	Else
      		intRefID2 = -1
      		strRefName2 = ""
      		strRefPos2 = ""
      		strRefAdd2 = ""
      		strRefPhone2 = ""
      		strRefHomePhone2 = ""
      		strRefEmail2 = ""
      	End If
      Else
      	' Variable Initialization 4 Reference
      	intRefID = -1
      	strRefName = ""
      	strRefPos = ""
      	strRefAdd = ""
      	strRefPhone = ""
      	strRefCell = ""
      	strRefEmail = ""
      	
      	intRefID2 = -1
      	strRefName2 = ""
      	strRefPos2 = ""
      	strRefAdd2 = ""
      	strRefPhone2 = ""
      	strRefCell2 = ""
      	strRefEmail2 = ""
      End If
   Else
    intRefID = Request.Form("hidReferenceId1")
    strRefName = Request.Form("txtReferenceName1")
    strRefName = GiveReplacedString(strRefName)
    strRefPos = Request.Form("txtReferencePosition1")
    strRefPos = GiveReplacedString(strRefPos)
    strRefAdd = Request.Form("txtReferenceAddress1") 
    strRefAdd = GiveReplacedString(strRefAdd)
    strRefPhone = Request.Form("txtReferencePhone1") 
    strRefCell = Request.Form("txtReferenceCellPhone1") 
    strRefEmail = Request.Form("txtReferenceEmail1") 
    strRefEmail = GiveReplacedString(strRefEmail)
    
    intRefID2 = Request.Form("hidReferenceId2")
    strRefName2 = Request.Form("txtReferenceName2")
    strRefName2 = GiveReplacedString(strRefName2)
    strRefPos2 = Request.Form("txtReferencePosition2")
    strRefPos2 = GiveReplacedString(strRefPos2)
    strRefAdd2 = Request.Form("txtReferenceAddress2") 
    strRefAdd2 = GiveReplacedString(strRefAdd2)
    strRefPhone2 = Request.Form("txtReferencePhone2") 
    strRefCell2 = Request.Form("txtReferenceCellPhone2") 
    strRefEmail2 = Request.Form("txtReferenceEmail2") 
    strRefEmail2 = GiveReplacedString(strRefEmail2)

 End If
        
End IF 

%>					
	
<form action="?<%=Encode("Location=Edit&FormAction=InsertRefference")%>" method="post" name="frmApplication" id="frmApplication">

    <div class="row">
      <div class="col-sm-6">
        <div class="row">
          <div class="col-sm-12">
            <div class="form-group">
              <h4 class="title">Reference-1</h4>
            </div>
          </div>
        </div>
        <div class="form-group">
           <div class="row">
               <!--#include File = 'Reference\Name1.asp' -->                              
          </div>
        </div>
        <div class="form-group">
          <div class="row">
             <!--#include File = 'Reference\Position1.asp' -->
          </div>
        </div>
        <div class="form-group">
          <div class="row">
         
            <!--#include File = 'Reference\Address1.asp' -->
          </div>
        </div>
        <div class="form-group">
          <div class="row">
            <!--#include File = 'Reference\ContactPhone1.asp' -->
          
          </div>
        </div>
        <div class="form-group">
          <div class="row">
            <!--#include File = 'Reference\Email1.asp' -->
          </div>
        </div>
      </div>
      <div class="col-sm-6">
        <div class="row">
          <div class="col-sm-12">
            <div class="form-group">
              <h4 class="title">Reference-2</h4>
            </div>
          </div>
        </div>
        <div class="form-group">
           <div class="row">
               <!--#include File = 'Reference\Name2.asp' -->                                
          </div>
        </div>
        <div class="form-group">
          <div class="row">
             <!--#include File = 'Reference\Position2.asp' -->
          </div>
        </div>
        <div class="form-group">
          <div class="row">
         
            <!--#include File = 'Reference\Address2.asp' -->
          </div>
        </div>
        <div class="form-group">
          <div class="row">
            <!--#include File = 'Reference\ContactPhone2.asp' -->
          
          </div>
        </div>
        <div class="form-group">
          <div class="row">
            <!--#include File = 'Reference\Email2.asp' -->
          </div>
        </div>
      </div>
    </div>
  </fieldset> 
  
  <!--#include File = 'CommonFooterAction.asp' -->                          