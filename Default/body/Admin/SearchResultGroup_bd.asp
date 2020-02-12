<!--#include File = 'SearchResultGroup_bd\Header1.asp' -->
<!--#include File = 'CheckSession.asp' -->
<!--#include File = 'SearchResultGroup_bd\Header2.asp' -->

<!--#include File = 'SearchResultGroup_bd\BL\Tracking.asp' -->
<!--#include File = 'SearchResultGroup_bd\BL\Variable.asp' -->
<!--#include File = 'SearchResultGroup_bd\BL\JobPosting.asp' -->
<!--#include File = 'SearchResultGroup_bd\BL\DateWise.asp' -->
<!--#include File = 'SearchResultGroup_bd\BL\Academic.asp' -->

<!--#include File = 'SearchResultGroup_bd\Content1.asp' -->

<!--#include File = 'SearchResultGroup_bd\Paging.asp' -->

<!--#include File = 'SearchResultGroup_bd\TotalID.asp' -->
<%
		strModuleName = "Search Result"
		strAction = "Proceed view"
		If CStr(strJobPosting) = "S" Then 
			strJobName = "General"
		End If

strDescription = ReplacedAllTypeOfSpecialChar(SQLCountPersonalTemp)
		


%>
<!--#include File = 'UserLog.asp' -->
<!--#include File = 'SearchResultGroup_bd\ContentForm.asp' -->
<!--#include File = 'SearchResultGroup_bd\Footer.asp' -->
