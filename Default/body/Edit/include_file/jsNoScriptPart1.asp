<SCRIPT language="javascript">
	function SetAction_Delete(intCounter, strBlockName)
	{
		var blnFlag = false;

		/*SET ACTION TO DELETE EDUCATION*/
		if(strBlockName == "Education")
		{
			for(i = 1; i <= intCounter; i++)
			{
				if(document.getElementById('chkRecordItemEducation' + i + '').checked == true)
				{
					blnFlag = true;
					break
				}
			}
		}

		/*SET ACTION TO DELETE PROFESSIONAL QUALIFICATION*/
		if(strBlockName == "ProQualification")
		{
			for(i = 0; i <= intCounter; i++)
			{
				if(document.getElementById('chkRecordItemProQualification' + i + '').checked == true)
				{
					blnFlag = true;
					break
				}
			}
		}

		/*SET ACTION TO DELETE TRAINING*/
		if(strBlockName == "Training")
		{
			for(i = 0; i <= intCounter; i++)
			{
				if(document.getElementById('chkRecordItemTraining' + i + '').checked == true)
				{
					blnFlag = true;
					break
				}
			}
		}
		
		/*SET ACTION TO DELETE WORK EXPERIENCE*/
		if(strBlockName == "Experience")
		{
			for(i = 0; i <= intCounter; i++)
			{
				if(document.getElementById('chkRecordItemExperience' + i + '').checked == true)
				{
					blnFlag = true;

					break
				}
			}
		}
		
		
		if(blnFlag == true)
		{
			if(strBlockName == "Education") 
			{
				document.getElementById("frmEducation").action = "RemoveRecords.asp";
				document.getElementById("frmEducation").submit();
				return true;
			}
			
			if(strBlockName == "ProQualification")
			{
				document.getElementById("frmProQualification").action = "RemoveRecords.asp";
				document.getElementById("frmProQualification").submit();
				return true;
			}
			
			if(strBlockName == "Training")
			{
				document.getElementById("frmTraining").action = "RemoveRecords.asp";
				document.getElementById("frmTraining").submit();
				return true;
			}
			
			if(strBlockName == "Experience") 
			{				
				document.getElementById("frmExperience").action = "RemoveRecords.asp";
				document.getElementById("frmExperience").submit();
				return true;
			}		
		}
		else
		{
			return false;
		}
	}
</SCRIPT>


