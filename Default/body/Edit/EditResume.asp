<style>
.BDJLabelText
 {
	 word-wrap:break-word;
 }
</style>
<!--#include file = "include_file\RetrieveData.asp" -->

<!-- include virtual = "/applications/common/Edit/include_file/RetrieveData.asp" -->

<!--#include File = "include_file\jsNoScriptPart1.asp" -->
<div class="col-sm-12">
    <div class="summery-view bg-style">
        <h1 class="post-name">Summery view</h1>
        <div class="wrapper">
          <!--#include File = 'GeneralInformation2.asp' -->

            <fieldset>
            <!--#include file = "include_file\Personal.asp" -->
            </fieldset>
            <fieldset>
            <!--#include file = "include_file\Academic.asp" -->
            </fieldset>
            <fieldset>
            <!--#include file = "include_file\Others.asp" -->
            </fieldset>
			  <%if system = "ksb" then %>
                <!--#include file = "include_file\Quota.asp" -->
              <%else%>
                <fieldset>
                <!--#include file = "include_file\Reference.asp" -->
                </fieldset>							
             <%end if%> 
        </div>
    </div>
</div>								
								

           