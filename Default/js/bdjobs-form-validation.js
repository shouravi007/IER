		
		function formValidation()  
		{
			var data_ok = true;
			var version = document.getElementById("version").value;
			var fname = document.registration.txtFirstName;
			 //var first_name_message = check_value(fname.value);
			 var rgEx = /^[ A-Za-z0-9\s./''-]*$/;
			 if( fname.value.trim() == '') {
				data_ok = false;
				if(version == "EN")
				{
					show_error_message("Name cannot be empty.", 'txtFirstName');
				}else
				{
					show_error_message("নাম খালি রাখা যাবে না ।", 'txtFirstName');
				}
			 }
			  else {
				    
				   
				 if(fname.value.length > 50){
					 data_ok = false;
					 if(version == "EN")
					{
						show_error_message("Name maximum 100 characters.", 'txtFirstName');
					}else
					{
						show_error_message("নাম ১০০ অক্ষরের বেশি হবে না ।", 'txtFirstName');
					}
				 }
				
				 else if(!rgEx.test(fname.value.trim())){
					 data_ok = false;
					  if(version == "EN")
					  {
						show_error_message("Please use only letters (a-z),numbers (0-9),punctuations like (.),(-),(\') and space.", 'txtFirstName');
					  }else
					  {
						show_error_message("শুধুমাত্র অক্ষর (a-z),সংখ্যা (0-9),এই বিরামচিহ্নগুলি (.), (-), (') এবং স্পেস ব্যবহার করতে পারবেন।", 'txtFirstName');
					  }	
				 }
				 else{
					 hide_error_message('txtFirstName');
				 }
				
			  }
			
			 if(!$("input[type=radio][name=cboGender]:checked").length > 0)
			 {
				 data_ok = false;
				 if(version == "EN")
				 {
					show_error_message("Please select Gender.", 'cboGender');
				 }else
				 {
					 show_error_message("লিঙ্গ নির্বাচন করুন।", 'cboGender');
				 }
			 }
			 else {
				hide_error_message('cboGender');
			 }
			  
			//mobilenumber validation
			var mobile = document.registration.txtMobile;
			var countryCode = document.registration.txtCountryCode;
			
			var email = document.registration.txtEmail1;
			var isFromSm=document.getElementById("hIsSMLogin").value;
			
				if(document.getElementById("functionRadio").value == 1)
				{
					if(mobile.value.trim() == '')
					{
						data_ok = false;
						if(version == "EN")
						{
							show_error_message("Mobile Number cannot be empty.", 'txtMobile');
						}else
						{
							show_error_message("মোবাইল নাম্বার খালি রাখা যাবে না ।", 'txtMobile');
						}
					}
				}else
				{
					if(mobile.value.trim() == "" && email.value.trim() == "")
					{
						data_ok = false;
						if(version == "EN")
						{
							show_error_message("Please fill at least a Mobile Number or Email Address.", 'common');
						}else
						{
							show_error_message("মোবাইল নাম্বার অথবা ইমেইল অ্যাড্রেস যেকোনো একটির তথ্য দিন।", 'common');
						}
					}else
					{
						hide_error_message('common');
					}
				}
			
			 if ( mobile.value.trim() != '' ) {
				 mob = countryCode.value.trim() + mobile.value.trim(); 
				if(mob.length > 15){
					data_ok = false;
					if(document.getElementById("userNameRadio2") != null && document.getElementById("userNameRadio2").checked)
					{
						emtyUserNameFiled(isFromSm)
					}
					if(version == "EN")
					{
						show_error_message("Mobile Number maximum 15 characters.", 'txtMobile');
					}else
					{
						show_error_message("মোবাইল নাম্বার ১৫ অক্ষরের বেশি হবে না।", 'txtMobile');
					}
				}else if(mob.length < 6)
				{
					data_ok = false;
					if(document.getElementById("userNameRadio2") != null && document.getElementById("userNameRadio2").checked)
					{
						emtyUserNameFiled(isFromSm)
					}
					if(version == "EN")
					{
						show_error_message("Mobile Number minimum 6 characters.", 'txtMobile');
					}else
					{
						show_error_message("মোবাইল নাম্বার ৬ অক্ষরের কম হবে না।", 'txtMobile');
					}
				}
				else if(isNaN(mobile.value.trim())){
					data_ok = false;
					if(document.getElementById("userNameRadio2") != null && document.getElementById("userNameRadio2").checked)
					{
						emtyUserNameFiled(isFromSm)
					}
					if(version == "EN")
					{
						show_error_message("Mobile Number contains only numeric values (0-9).", 'txtMobile');
					}else
					{
						show_error_message("মোবাইল নাম্বার অবশ্যই সংখ্যাসূচক হবে (০-৯)।", 'txtMobile');
					}
				}else{
					hide_error_message('txtMobile');
				}

			 }
			  
			//email validation
			//if(document.getElementById("functionRadio").checked)
			//{
				if ( email.value.trim() != '' ) {
					var val = email.value.trim();
					if(val.length > 50){
						data_ok = false;
						if(document.getElementById("userNameRadio1").checked)
						{
							emtyUserNameFiled(isFromSm)
						}
						if(version == "EN")
						{
							show_error_message("Email Address maximum 50 characters", 'txtEmail1');
						}else
						{
							show_error_message("ইমেইল ৫০ অক্ষরের বেশি হবে না।", 'txtEmail1');
						}
					}
					else if(CheckEmailaddress(email.value.trim()) == false){
						data_ok = false;
						if(document.getElementById("userNameRadio1").checked)
						{
							emtyUserNameFiled(isFromSm)
						}
						if(version == "EN")
						{
							show_error_message("Please use valid Email Address.", 'txtEmail1');
						}else
						{
							show_error_message("সঠিক ইমেইল অ্যাড্রেস এর তথ্য দিন।", 'txtEmail1');
						}
					}else{
						hide_error_message('txtEmail1');
					}
					
				}
			//}
			
			//category validation
			var category = document.registration.selected_Cat;
			//var category_message = check_value(category.value);
			 if ( category.value == "-1" ) {
				data_ok = false;
				if(version == "EN")
				{
					show_error_message("Please select a Category.", 'selected_Cat');
				}else
				{
					show_error_message("অন্তত একটি ক্যাটাগরি নির্বাচন করুন।", 'selected_Cat');
				}
			 }
			else {
				hide_error_message('selected_Cat');
			}
			
			//username validation
			//var isFromSm=document.registration.hIsSMLogin;
			
			if (isFromSm=="false")
			{
				if(document.getElementById("functionRadio").value == 0)
				{	
					var username = document.registration.txtUserName;
					if(version == "EN")
					{	
						var username_message = check_user_name(username.value);
					}else
					{
						var username_message = check_user_namebn(username.value);
					}
					if((mobile.value == "" && email.value != "") || (mobile.value == "" && email.value == "") || (mobile.value != "" && email.value != "") )
					{
						msgShowDiv = "common_message_email";
						msgHideDiv = "common_message_mob"
					}else if(email.value == "" && mobile.value != "")
					{
						msgShowDiv = "common_message_mob";
						msgHideDiv = "common_message_email"
					}
					//alert(username_message);
					if(username_message != '')
					{
						document.getElementById("userNameRadio1").checked = false;
					    document.getElementById("userNameRadio2").checked = false;
						data_ok = false;
						show_error_message(username_message, msgShowDiv);
						hide_error_message(msgHideDiv);
					}
					else
					{
						hide_error_message(msgShowDiv);
					}
					//$('.bc-ca-e').children('label').css("background-color", "#fff");
					
					if((mobile.value == "" && email.value == "") || (mobile.value != "" && email.value != "") )
					{
						 $("#emailuIDBtn").children('.bc-ca-e').children('label').css("border", "1px solid red");
						  $("#uIDBtn").children('.bc-ca-e').children('label').css("border", "1px solid red");
						  //document.getElementById("userNameRadio1").checked = false;
					     // document.getElementById("userNameRadio2").checked = false;
					}else if(email.value == "" && mobile.value != "")
					{
						 $("#uIDBtn").children('.bc-ca-e').children('label').css("border", "1px solid red");
						  $("#emailuIDBtn").children('.bc-ca-e').children('label').css("border", "1px solid #008000");
						
					//document.getElementById("userNameRadio2").checked = false;
					}
					else if(mobile.value == "" && email.value != "")
					{
						 $("#emailuIDBtn").children('.bc-ca-e').children('label').css("border", "1px solid red");
						 $("#uIDBtn").children('.bc-ca-e').children('label').css("border", "1px solid #008000");
						// document.getElementById("userNameRadio1").checked = false;
					
					}
					
					//password validation check
					var password = document.registration.txtPassword;
					var text = document.getElementById("PasswordStrength_message");
					if(password.value == "")
					{
						data_ok = false;
						if(version == "EN")
						{
							show_error_message("Please enter Password.", 'PasswordStrength');
						}else
						{
							show_error_message("পাসওয়ার্ড টাইপ করুন।", 'PasswordStrength');
						}
						text.style.color="#ff6666";		
						text.style.fontWeight="bold";
					}
					else
					{
						if(password.value.length <8){
							data_ok = false;
							if(version == "EN")
							{
								show_error_message("Password  minimum 8 characters.", 'PasswordStrength');
							}else
							{
								show_error_message("পাসওয়ার্ড ৮ অক্ষরের নিচে হতে পারবে না।", 'PasswordStrength');
							}
							text.style.color="#ff6666";		
							text.style.fontWeight="bold";
						}else if(password.value.length >12){
							data_ok = false;
							if(version == "EN")
							{
								show_error_message("Password field should be limit of 15 characters.", 'PasswordStrength');
							}else
							{
								show_error_message("পাসওয়ার্ড ১৫ অক্ষরের মধ্যে সীমাবদ্ধ হতে হবে।", 'PasswordStrength');
							}
							text.style.color="#ff6666";		
							text.style.fontWeight="bold";
						}else if(password.value.indexOf(" ")> -1){
							data_ok = false;
							if(version == "EN")
							{
								show_error_message("Please use only letters (a-z), numbers (0-9) and punctuations.", 'PasswordStrength');
							}else
							{
								show_error_message("পাসওয়ার্ড এ কোন স্পেস ব্যবহার করা যাবে না।", 'PasswordStrength');
							}
							text.style.color="#ff6666";		
							text.style.fontWeight="bold";
						}else if(password.value.indexOf("'")> -1){
							data_ok = false;
							if(version == "EN")
							{
								show_error_message("Password field does not allow '", 'PasswordStrength');
							}else
							{
								show_error_message("পাসওয়ার্ড এ '  ব্যবহার করা যাবে না।", 'PasswordStrength');
							}
							text.style.color="#ff6666";		
							text.style.fontWeight="bold";
						}
						else if(password.value.indexOf('"')> -1){
							data_ok = false;
							if(version == "EN")
							{
								show_error_message("Password does not allow \"\"", 'PasswordStrength');
							}else
							{
								show_error_message('পাসওয়ার্ড এ \"\ ব্যবহার করা যাবে না।', 'PasswordStrength');
							}
							text.style.color="#ff6666";		
							text.style.fontWeight="bold";
						}else if(password.value.indexOf("&")> -1){
							data_ok = false;
							if(version == "EN")
							{
								show_error_message("Password field does not allow '&'", 'PasswordStrength');
							}else
							{
								show_error_message("পাসওয়ার্ড এ & ব্যবহার করা যাবে না।", 'PasswordStrength');
							}
							text.style.color="#ff6666";		
							text.style.fontWeight="bold";
						}
						else if(password.value.indexOf(";")> -1){
							data_ok = false;
							if(version == "EN")
							{
								show_error_message("Password field does not allow ';'.", 'PasswordStrength');
							}else
							{
								show_error_message("পাসওয়ার্ড এ ; ব্যবহার করা যাবে না।", 'PasswordStrength');
							}
							text.style.color="#ff6666";		
							text.style.fontWeight="bold";
						}
						else if(password.value.indexOf(")")> -1){
							data_ok = false;
							if(version == "EN")
							{
								show_error_message("Password field does not allow ')'.", 'PasswordStrength');
							}else
							{
								show_error_message("পাসওয়ার্ড এ ) ব্যবহার করা যাবে না।", 'PasswordStrength');
							}
							text.style.color="#ff6666";		
							text.style.fontWeight="bold";
						}
						else if(password.value.indexOf("(")> -1){
							data_ok = false;
							if(version == "EN")
							{
							show_error_message("Password field does not allow '('.", 'PasswordStrength');
							}else
							{
								show_error_message("পাসওয়ার্ড এ (  ব্যবহার করা যাবে না।", 'PasswordStrength');
							}
							text.style.color="#ff6666";		
							text.style.fontWeight="bold";
						}
						else if(password.value.indexOf("%")> -1){
							data_ok = false;
							if(version == "EN")
							{
								show_error_message("Password field does not allow '%'.", 'PasswordStrength');
							}else
							{
								show_error_message("পাসওয়ার্ড এ %  ব্যবহার করা যাবে না।", 'PasswordStrength');
							}
							text.style.color="#ff6666";		
							text.style.fontWeight="bold";
						}
						else if(password.value.indexOf(">")> -1){
							data_ok = false;
							if(version == "EN")
							{
								show_error_message("Password field does not allow '>'.", 'PasswordStrength');
							}else
							{
								show_error_message("পাসওয়ার্ড এ >  ব্যবহার করা যাবে না।", 'PasswordStrength');
							}
							text.style.color="#ff6666";		
							text.style.fontWeight="bold";
						}
						else if(password.value.indexOf("<")> -1){
							data_ok = false;
							if(version == "EN")
							{
								show_error_message("Password field does not allow '<'.", 'PasswordStrength');
							}else
							{
								show_error_message("পাসওয়ার্ড এ <  ব্যবহার করা যাবে না।", 'PasswordStrength');
							}
							text.style.color="#ff6666";		
							text.style.fontWeight="bold";
						}
						else{
							hide_error_message('PasswordStrength');
						}
					}
					
					//validation retype password
					var rtypePassword = document.registration.txtRetypePassword;
					var text = document.getElementById("PasswordCheck_message");
					if(rtypePassword.value =="")
					{
						data_ok = false;
						if(version == "EN")
						{
							show_error_message("Please re-enter Password.", 'PasswordCheck');
						}else
						{
							show_error_message("পুনরায় পাসওয়ার্ড টাইপ করুন।", 'PasswordCheck');
						}
						text.style.color="#ff6666";		
						text.style.fontWeight="bold";
					}
					else{
							CheckREPassword(version);
							var mess=document.getElementById("PasswordCheck_message");
							if(mess.innerHTML != ""){
								data_ok = false;
								text.style.color="#ff6666";		
								text.style.fontWeight="bold";
								show_error_message(mess.innerHTML, 'PasswordCheck');
							}
							else
							{
								hide_error_message('PasswordCheck');
							}
					}
				}
			}
			else
			{
				if(document.getElementById("hSMId").value.trim()=="" &&document.getElementById("hSMediaType").value.trim()=="")
				{
					data_ok = false;
					if(version == "EN")
					{
						alert( 'oops! we do not get your social media information properly. please try again');
					}else
					{
						alert( 'oops! we do not get your social media information properly. please try again');
					}
				}
			}
			
			
			if(isFromIom)
			{
				ajaxUrl = "https://mybdjobs.bdjobs.com/CheckUserName.asp"
			}
			else
			{
				// if(version == "BN"){
				// 	ajaxUrl = "https://mybdjobs.bdjobs.com/CheckUserName.asp"
				// }else{
				// 	ajaxUrl = "http://mybdjobs.bdjobs.com/CheckUserName.asp"
				// }
				
				ajaxUrl = "//mybdjobs.bdjobs.com/CheckUserName.asp"
			}

			if (data_ok) {
				$.ajax({
                        type: "post",
                        url: ajaxUrl,
                        data: $("#table").serialize(),
                        dataType: "text",
                        cache: false,
                        async: false,
                        success: function(responseText) {
                           if(responseText == 1 || responseText == 2 || responseText == "-1")
						   {
							   if(version == "EN")
								{
									alert("Your resume has already been submitted once in the system.")
							    }else
								{
									alert("আপনার রিজিউমি সিস্টেম এ সাবমিট করা আছে।")
								}
							   data_ok = false;
						   }
						   else if(responseText == 3)
						   {
							  if(version == "EN")
								{
									alert("This User ID is not available, try another.")
							    }else
								{
									alert("এই ইউজার আইডিটি ইতিমধ্যে বিদ্যমান রয়েছে।")
								}
							   data_ok = false;
						   }else if(responseText == 4)
						   {
							  if(version == "EN")
								{
									if(document.registration.hSMediaType.value == "F")
									{
										alert("This Facebook account is already registered. Please choose another one or sign in with Facebook.");
									}else if(document.registration.hSMediaType.value == "G")
									{
										alert("This Google account is already registered. Please choose another one or sign in with Google.");
									}else if(document.registration.hSMediaType.value == "L")
									{
										alert("This Linked In account is already registered. Please choose another one or sign in with Linked In.");
									}
							    }else
								{
									if(document.registration.hSMediaType.value == "F")
									{
										alert("এই ফেসবুক একাউন্ট দিয়ে ইতিমধ্যে রেজিস্ট্রেশন করা আছে। অন্য একটি আইডি দিন অথবা আগের আইডি দিয়ে সাইন ইন করুন ।  ");
									}else if(document.registration.hSMediaType.value == "G")
									{
										alert("এই গুগল একাউন্ট দিয়ে ইতিমধ্যে রেজিস্ট্রেশন করা আছে। অন্য একটি আইডি দিন অথবা আগের আইডি দিয়ে সাইন ইন করুন ।  ");
									}else if(document.registration.hSMediaType.value == "L")
									{
										alert("এই লিংকডিন  একাউন্ট দিয়ে ইতিমধ্যে রেজিস্ট্রেশন করা আছে। অন্য একটি আইডি দিন অথবা আগের আইডি দিয়ে সাইন ইন করুন ।  ");
									}
								}
							   data_ok = false;
						   }else
						   {
							   hide_global_error_message();
            				   data_ok = true;
						   }
                        },
                        error: function(responseText) {
                            console.log(responseText);

                        }
                    });
					return data_ok;
				
          	}
			//else
			//{
				return data_ok ;
			//}
			
			
		}
		
		
		function ttcFormValidation()  
		{
			var data_ok = true;
			var version = document.getElementById("version").value;
			var fname = document.registration.txtFirstName;
			 //var first_name_message = check_value(fname.value);
			 var rgEx = /^[ A-Za-z0-9\s./''-]*$/;
			 if( fname.value.trim() == '') {
				data_ok = false;
				if(version == "EN")
				{
					show_error_message("Name cannot be empty.", 'txtFirstName');
				}else
				{
					show_error_message("নাম খালি রাখা যাবে না ।", 'txtFirstName');
				}
			 }
			  else {
				 
				 if(fname.value.length > 50){
					 data_ok = false;
					 if(version == "EN")
					{
						show_error_message("Name maximum 100 characters.", 'txtFirstName');
					}else
					{
						show_error_message("নাম ১০০ অক্ষরের বেশি হবে না ।", 'txtFirstName');
					}
				 }
				
				 else if(!rgEx.test(fname.value.trim())){
					 data_ok = false;
					  if(version == "EN")
					  {
						show_error_message("Please use only letters (a-z),numbers (0-9),punctuations like (.),(-),(\') and space.", 'txtFirstName');
					  }else
					  {
						show_error_message("শুধুমাত্র অক্ষর (a-z),সংখ্যা (0-9),এই বিরামচিহ্নগুলি (.), (-), (') এবং স্পেস ব্যবহার করতে পারবেন।", 'txtFirstName');
					  }	
				 }
				 else{
					 hide_error_message('txtFirstName');
				 }
				
			  }
			
			 if(!$("input[type=radio][name=cboGender]:checked").length > 0)
			 {
				 data_ok = false;
				 if(version == "EN")
				 {
					show_error_message("Please select Gender.", 'cboGender');
				 }else
				 {
					 show_error_message("লিঙ্গ নির্বাচন করুন।", 'cboGender');
				 }
			 }
			 else {
				hide_error_message('cboGender');
			 }
			  
			//mobilenumber validation
			var mobile = document.registration.txtMobile;
			var countryCode = document.registration.txtCountryCode;
			
			
			//var isFromSm=document.getElementById("hIsSMLogin").value;
			//if (isFromSm=="true")
//			{
//				//if(document.getElementById("specialRadio").checked)
////				{
////					if(mobile.value.trim() == '')
////					{
////						data_ok = false;
////						show_error_message("Mobile No cannot be empty.", 'txtMobile');
////					}
////				}else
////				{
////					 if ( email.value.trim() == '' ) 
////				 	{
////						data_ok = false;
////						show_error_message("Email address cannot be empty.", 'txtEmail1');
////					
////				 	}
////				}
//					if(mobile.value.trim() == "" && email.value.trim() == "")
//					{
//						data_ok = false;
//						if(document.getElementById("functionRadio").value == 1)
//						{
//							msgShowDiv = "common_message_mob";
//							msgHideDiv = "common_message_email"
//						}else
//						{
//							msgShowDiv = "common_message_email";
//							msgHideDiv = "common_message_mob"
//						}
//						
//						
//						if(version == "EN")
//						{
//							show_error_message("Please fill at least a Mobile Number or Email Address", msgShowDiv);
//						}else
//						{
//							show_error_message("মোবাইল নাম্বার অথবা ইমেইল অ্যাড্রেস যেকোনো একটির তথ্য দিন।", msgShowDiv);
//						}
//					}else
//					{
//						hide_error_message(msgHideDiv);
//					}
//				
//				
//			}
//			else
//			{
				//if(document.getElementById("functionRadio").value == 1)
				//{
					if(mobile.value.trim() == '')
					{
						data_ok = false;
						if(version == "EN")
						{
							show_error_message("Mobile Number cannot be empty.", 'txtMobile');
						}else
						{
							show_error_message("মোবাইল নাম্বার খালি রাখা যাবে না ।", 'txtMobile');
						}
					}
				//}else
				//{
					//if(mobile.value.trim() == "" && email.value.trim() == "")
					//{
					//	data_ok = false;
					//	if(version == "EN")
					//	{
					//		show_error_message("Please fill at least a Mobile Number or Email Address.", 'common');
					//	}else
						//{
						//	show_error_message("মোবাইল নাম্বার অথবা ইমেইল অ্যাড্রেস যেকোনো একটির তথ্য দিন।", 'common');
						//}
					//}else
					//{
						//hide_error_message('common');
					//}
				//}
			//}
			
			//var mobile_message = check_value(mobile.value);
			 //if ( mobile.value == '' ) {
			//	data_ok = false;
			//	show_error_message("Mobile field cannot be blank", 'txtMobile');
			// }
			//var uname = document.getElementById("userNameRadio2"); 
			 if ( mobile.value.trim() != '' ) {
				 mob = countryCode.value.trim() + mobile.value.trim(); 
				if(mob.length > 15){
					data_ok = false;
					if(document.getElementById("userNameRadio2") != null && document.getElementById("userNameRadio2").checked)
					{
						emtyUserNameFiled(isFromSm)
					}
					if(version == "EN")
					{
						show_error_message("Mobile Number maximum 15 characters.", 'txtMobile');
					}else
					{
						show_error_message("মোবাইল নাম্বার ১৫ অক্ষরের বেশি হবে না।", 'txtMobile');
					}
				}else if(mob.length < 6)
				{
					data_ok = false;
					if(document.getElementById("userNameRadio2") != null && document.getElementById("userNameRadio2").checked)
					{
						emtyUserNameFiled(isFromSm)
					}
					if(version == "EN")
					{
						show_error_message("Mobile Number minimum 6 characters.", 'txtMobile');
					}else
					{
						show_error_message("মোবাইল নাম্বার ৬ অক্ষরের কম হবে না।", 'txtMobile');
					}
				}
				else if(isNaN(mobile.value.trim())){
					data_ok = false;
					if(document.getElementById("userNameRadio2") != null && document.getElementById("userNameRadio2").checked)
					{
						emtyUserNameFiled(isFromSm)
					}
					if(version == "EN")
					{
						show_error_message("Mobile Number contains only numeric values (0-9).", 'txtMobile');
					}else
					{
						show_error_message("মোবাইল নাম্বার অবশ্যই সংখ্যাসূচক হবে (০-৯)।", 'txtMobile');
					}
				}else{
					hide_error_message('txtMobile');
				}

			 }
			  
			//email validation
			//if(document.getElementById("functionRadio").checked)
			//{
				//if ( email.value.trim() != '' ) {
					//var val = email.value.trim();
					//if(val.length > 50){
					//	data_ok = false;
						//if(document.getElementById("userNameRadio1").checked)
//						{
//							emtyUserNameFiled(isFromSm)
//						}
//						if(version == "EN")
//						{
//							show_error_message("Email Address maximum 50 characters", 'txtEmail1');
//						}else
//						{
//							show_error_message("ইমেইল ৫০ অক্ষরের বেশি হবে না।", 'txtEmail1');
//						}
//					}
//					else if(CheckEmailaddress(email.value.trim()) == false){
//						data_ok = false;
//						if(document.getElementById("userNameRadio1").checked)
//						{
//							emtyUserNameFiled(isFromSm)
//						}
//						if(version == "EN")
//						{
//							show_error_message("Please use valid Email Address.", 'txtEmail1');
//						}else
//						{
//							show_error_message("সঠিক ইমেইল অ্যাড্রেস এর তথ্য দিন।", 'txtEmail1');
//						}
//					}else{
//						hide_error_message('txtEmail1');
//					}
//					
//				}
			//}
			
			//category validation
			var category = document.registration.selected_Cat;
			//var category_message = check_value(category.value);
			 if ( category.value == "-1" ) {
				data_ok = false;
				if(version == "EN")
				{
					show_error_message("Please select a Category.", 'selected_Cat');
				}else
				{
					show_error_message("অন্তত একটি ক্যাটাগরি নির্বাচন করুন।", 'selected_Cat');
				}
			 }
			else {
				hide_error_message('selected_Cat');
			}
			
			//username validation
			//var isFromSm=document.registration.hIsSMLogin;
			
			//if (isFromSm=="false")
			//{
				//if(document.getElementById("functionRadio").value == 0)
//				{	
//					var username = document.registration.txtUserName;
//					if(version == "EN")
//					{	
//						var username_message = check_user_name(username.value);
//					}else
//					{
//						var username_message = check_user_namebn(username.value);
//					}
//					if((mobile.value == "" && email.value != "") || (mobile.value == "" && email.value == "") || (mobile.value != "" && email.value != "") )
//					{
//						msgShowDiv = "common_message_email";
//						msgHideDiv = "common_message_mob"
//					}else if(email.value == "" && mobile.value != "")
//					{
//						msgShowDiv = "common_message_mob";
//						msgHideDiv = "common_message_email"
//					}
//					//alert(username_message);
//					if(username_message != '')
//					{
//						data_ok = false;
//						show_error_message(username_message, msgShowDiv);
//						hide_error_message(msgHideDiv);
//					}
//					else
//					{
//						hide_error_message(msgShowDiv);
//					}
//					
//					//password validation check
//					var password = document.registration.txtPassword;
//					var text = document.getElementById("PasswordStrength_message");
//					if(password.value == "")
//					{
//						data_ok = false;
//						if(version == "EN")
//						{
//							show_error_message("Please enter Password.", 'PasswordStrength');
//						}else
//						{
//							show_error_message("পাসওয়ার্ড টাইপ করুন।", 'PasswordStrength');
//						}
//						text.style.color="#ff6666";		
//						text.style.fontWeight="bold";
//					}
//					else
//					{
//						if(password.value.length <8){
//							data_ok = false;
//							if(version == "EN")
//							{
//								show_error_message("Password  minimum 8 characters.", 'PasswordStrength');
//							}else
//							{
//								show_error_message("পাসওয়ার্ড ৮ অক্ষরের নিচে হতে পারবে না।", 'PasswordStrength');
//							}
//							text.style.color="#ff6666";		
//							text.style.fontWeight="bold";
//						}else if(password.value.length >12){
//							data_ok = false;
//							if(version == "EN")
//							{
//								show_error_message("Password field should be limit of 15 characters.", 'PasswordStrength');
//							}else
//							{
//								show_error_message("পাসওয়ার্ড ১৫ অক্ষরের মধ্যে সীমাবদ্ধ হতে হবে।", 'PasswordStrength');
//							}
//							text.style.color="#ff6666";		
//							text.style.fontWeight="bold";
//						}else if(password.value.indexOf(" ")> -1){
//							data_ok = false;
//							if(version == "EN")
//							{
//								show_error_message("Please use only letters (a-z), numbers (0-9) and punctuations.", 'PasswordStrength');
//							}else
//							{
//								show_error_message("পাসওয়ার্ড এ কোন স্পেস ব্যবহার করা যাবে না।", 'PasswordStrength');
//							}
//							text.style.color="#ff6666";		
//							text.style.fontWeight="bold";
//						}else if(password.value.indexOf("'")> -1){
//							data_ok = false;
//							if(version == "EN")
//							{
//								show_error_message("Password field does not allow '", 'PasswordStrength');
//							}else
//							{
//								show_error_message("পাসওয়ার্ড এ '  ব্যবহার করা যাবে না।", 'PasswordStrength');
//							}
//							text.style.color="#ff6666";		
//							text.style.fontWeight="bold";
//						}
//						else if(password.value.indexOf('"')> -1){
//							data_ok = false;
//							if(version == "EN")
//							{
//								show_error_message("Password does not allow \"\"", 'PasswordStrength');
//							}else
//							{
//								show_error_message('পাসওয়ার্ড এ \"\ ব্যবহার করা যাবে না।', 'PasswordStrength');
//							}
//							text.style.color="#ff6666";		
//							text.style.fontWeight="bold";
//						}else if(password.value.indexOf("&")> -1){
//							data_ok = false;
//							if(version == "EN")
//							{
//								show_error_message("Password field does not allow '&'", 'PasswordStrength');
//							}else
//							{
//								show_error_message("পাসওয়ার্ড এ & ব্যবহার করা যাবে না।", 'PasswordStrength');
//							}
//							text.style.color="#ff6666";		
//							text.style.fontWeight="bold";
//						}
//						else if(password.value.indexOf(";")> -1){
//							data_ok = false;
//							if(version == "EN")
//							{
//								show_error_message("Password field does not allow ';'.", 'PasswordStrength');
//							}else
//							{
//								show_error_message("পাসওয়ার্ড এ ; ব্যবহার করা যাবে না।", 'PasswordStrength');
//							}
//							text.style.color="#ff6666";		
//							text.style.fontWeight="bold";
//						}
//						else if(password.value.indexOf(")")> -1){
//							data_ok = false;
//							if(version == "EN")
//							{
//								show_error_message("Password field does not allow ')'.", 'PasswordStrength');
//							}else
//							{
//								show_error_message("পাসওয়ার্ড এ ) ব্যবহার করা যাবে না।", 'PasswordStrength');
//							}
//							text.style.color="#ff6666";		
//							text.style.fontWeight="bold";
//						}
//						else if(password.value.indexOf("(")> -1){
//							data_ok = false;
//							if(version == "EN")
//							{
//							show_error_message("Password field does not allow '('.", 'PasswordStrength');
//							}else
//							{
//								show_error_message("পাসওয়ার্ড এ (  ব্যবহার করা যাবে না।", 'PasswordStrength');
//							}
//							text.style.color="#ff6666";		
//							text.style.fontWeight="bold";
//						}
//						else if(password.value.indexOf("%")> -1){
//							data_ok = false;
//							if(version == "EN")
//							{
//								show_error_message("Password field does not allow '%'.", 'PasswordStrength');
//							}else
//							{
//								show_error_message("পাসওয়ার্ড এ %  ব্যবহার করা যাবে না।", 'PasswordStrength');
//							}
//							text.style.color="#ff6666";		
//							text.style.fontWeight="bold";
//						}
//						else if(password.value.indexOf(">")> -1){
//							data_ok = false;
//							if(version == "EN")
//							{
//								show_error_message("Password field does not allow '>'.", 'PasswordStrength');
//							}else
//							{
//								show_error_message("পাসওয়ার্ড এ >  ব্যবহার করা যাবে না।", 'PasswordStrength');
//							}
//							text.style.color="#ff6666";		
//							text.style.fontWeight="bold";
//						}
//						else if(password.value.indexOf("<")> -1){
//							data_ok = false;
//							if(version == "EN")
//							{
//								show_error_message("Password field does not allow '<'.", 'PasswordStrength');
//							}else
//							{
//								show_error_message("পাসওয়ার্ড এ <  ব্যবহার করা যাবে না।", 'PasswordStrength');
//							}
//							text.style.color="#ff6666";		
//							text.style.fontWeight="bold";
//						}
//						else{
//							hide_error_message('PasswordStrength');
//						}
//					}
					
					//validation retype password
					//var rtypePassword = document.registration.txtRetypePassword;
//					var text = document.getElementById("PasswordCheck_message");
//					if(rtypePassword.value =="")
//					{
//						data_ok = false;
//						if(version == "EN")
//						{
//							show_error_message("Please re-enter Password.", 'PasswordCheck');
//						}else
//						{
//							show_error_message("পুনরায় পাসওয়ার্ড টাইপ করুন।", 'PasswordCheck');
//						}
//						text.style.color="#ff6666";		
//						text.style.fontWeight="bold";
//					}
//					else{
//							CheckREPassword(version);
//							var mess=document.getElementById("PasswordCheck_message");
//							if(mess.innerHTML != ""){
//								data_ok = false;
//								text.style.color="#ff6666";		
//								text.style.fontWeight="bold";
//								show_error_message(mess.innerHTML, 'PasswordCheck');
//							}
//							else
//							{
//								hide_error_message('PasswordCheck');
//							}
//					}
				//}
			//}
			//else
//			{
//				if(document.getElementById("hSMId").value.trim()=="" &&document.getElementById("hSMediaType").value.trim()=="")
//				{
//					data_ok = false;
//					if(version == "EN")
//					{
//						alert( 'oops! we do not get your social media information properly. please try again');
//					}else
//					{
//						alert( 'oops! we do not get your social media information properly. please try again');
//					}
//				}
//			}
			
			//if(document.getElementById("isTTC").value == "true")
			//{
				var ttc_id = document.registration.ttcID;
			//var category_message = check_value(category.value);
				 if ( ttc_id.value == "-1" ) {
					data_ok = false;
					if(version == "EN")
					{
						show_error_message("Please select a ttc.", 'ttcID');
					}else
					{
						show_error_message("অন্তত একটি টিটিসি আইডি নির্বাচন করুন।", 'ttcID');
					}
				 }
				else {
					hide_error_message('ttcID');
				}
				var grade_id = document.registration.gradeId;
				if(ttc_id.value == "19" || ttc_id.value == "28" || ttc_id.value == "38" || ttc_id.value == "39"){
					if(grade_id.value == "")
					{
						data_ok = false;
						if(version == "EN")
						{
							show_error_message("Grade filed cannot be empty.", 'gradeId');
						}else
						{
							show_error_message("গ্রেড ফিল্ডটি খালি রাখা যাবে না। ", 'gradeId');
						}
					}
					else {
						hide_error_message('gradeId');
					}
				}else {
					hide_error_message('gradeId');
				}
			//}
			
			//alert(checkDuplicacy());
			//var dt = checkDuplicacy()
			//alert(dt)
			//if(!checkDuplicacy())
//			{
//				data_ok = false;
//				if(version == "EN")
//				{
//					alert("Your resume has already been submitted once in the system.")
//				}else
//				{
//					alert("আপনার রিজিউমি সিস্টেম এ সাবমিট করা আছে।")
//				}
//			}
			
			//alert(data_ok);
			//if ( data_ok ) {
//				hide_global_error_message();
//            	return data_ok;
//          	}
//			
//			return data_ok ;
			if (data_ok) {
				$.ajax({
                        type: "post",
                        url: "https://mybdjobs.bdjobs.com/CheckUserName.asp",
                        data: $("#table").serialize(),
                        dataType: "text",
                        cache: false,
                        async: false,
                        success: function(responseText) {
                           if(responseText == 1 || responseText == 2 || responseText == "-1")
						   {
							   if(version == "EN")
								{
									alert("Your resume has already been submitted once in the system.")
							    }else
								{
									alert("আপনার রিজিউমি সিস্টেম এ সাবমিট করা আছে।")
								}
							   data_ok = false;
						   }
						   else if(responseText == 3)
						   {
							  if(version == "EN")
								{
									alert("This User ID is not available, try another.")
							    }else
								{
									alert("এই ইউজার আইডিটি ইতিমধ্যে বিদ্যমান রয়েছে।")
								}
							   data_ok = false;
						   }else if(responseText == 4)
						   {
							  if(version == "EN")
								{
									if(document.registration.hSMediaType.value == "F")
									{
										alert("This Facebook account is already registered. Please choose another one or sign in with Facebook.");
									}else if(document.registration.hSMediaType.value == "G")
									{
										alert("This Google account is already registered. Please choose another one or sign in with Google.");
									}else if(document.registration.hSMediaType.value == "L")
									{
										alert("This Linked In account is already registered. Please choose another one or sign in with Linked In.");
									}
							    }else
								{
									if(document.registration.hSMediaType.value == "F")
									{
										alert("এই ফেসবুক একাউন্ট দিয়ে ইতিমধ্যে রেজিস্ট্রেশন করা আছে। অন্য একটি আইডি দিন অথবা আগের আইডি দিয়ে সাইন ইন করুন ।  ");
									}else if(document.registration.hSMediaType.value == "G")
									{
										alert("এই গুগল একাউন্ট দিয়ে ইতিমধ্যে রেজিস্ট্রেশন করা আছে। অন্য একটি আইডি দিন অথবা আগের আইডি দিয়ে সাইন ইন করুন ।  ");
									}else if(document.registration.hSMediaType.value == "L")
									{
										alert("এই লিংকডিন  একাউন্ট দিয়ে ইতিমধ্যে রেজিস্ট্রেশন করা আছে। অন্য একটি আইডি দিন অথবা আগের আইডি দিয়ে সাইন ইন করুন ।  ");
									}
								}
							   data_ok = false;
						   }else
						   {
							   hide_global_error_message();
            				   data_ok = true;
						   }
                        },
                        error: function(responseText) {
                            console.log(responseText);

                        }
                    });
					return data_ok;
				
          	}
			//else
			//{
				return data_ok ;
			//}
			
			
		}

//Return: An error message, or empty string if no error.
       function check_user_name(value_to_check) {
        if ( value_to_check == "" ) {
          return 'Please select User ID.';
        }else
		{
			
		//else{
		  if ( value_to_check.length < 4) 
		  {
          	return 'User ID must be at least 4 characters.';
          }
//		  else if(value_to_check.length > 15)
//		  {
//			  return 'Username should be limit of 15 characters';
//		  }
//		  else if(value_to_check.indexOf(" ") > -1)
//		  {
//			  return "No space is allowed";
//		  }
//		  else if(value_to_check.indexOf("'") > -1)
//		  {
//			  return "Username does not allow '";
//		  }
//		  else if(value_to_check.indexOf('"') > -1)
//		  {
//			  return "Username does not allow \"\"";
//		  }
//		   else if(value_to_check.indexOf("%") > -1)
//		  {
//			  return "Username does not allow % ";
//		  }
//		  else if(value_to_check.indexOf("&") > -1)
//		  {
//			  return "Username does not allow & ";
//		  }
//		  else if(value_to_check.indexOf(";") > -1)
//		  {
//			  return "Username does not allow ;";
//		  }
//		  else if(value_to_check.indexOf(":") > -1)
//		  {
//			  return "Username does not allow :";
//		  }
//		  else if(value_to_check.indexOf(",") > -1)
//		  {
//			  return "Username does not allow ,";
//		  }
//		  else if(value_to_check.indexOf("\\") > -1)
//		  {
//			  return "Username does not allow '\\'";
//		  }
//		  else if(value_to_check.indexOf('/') > -1)
//		  {
//			  return "Username does not allow /";
//		  }else{
//			  return '';
//		  }
		}
		 return '';
        
      }
//Show an error message.
//Return: nothing.
      function show_error_message(message, field_name) {
        //Show the error message in the field's message area.
        $('#' + field_name + '_message').text(message);
        if ( $('#' + field_name + '_message').is(':hidden') ) {
          $('#' + field_name + '_message').show('medium');
        }
        //Show the global error message at the top of the page.
       // show_global_error_message("Sorry, I can't create your account.");
      }
//Hide an error message.
//Return: nothing.
      function hide_error_message(field_name) {
        $('#' + field_name + '_message').hide('medium');
      }
	  
	  //Show a global error message. It applies to the entire
      //  page, not just one product.
      //Input
      //  message: The message to show.
      //Return: nothing.
      function show_global_error_message(message) {
        $("#global_error_message").text(message);
        if ($('#global_error_message_container' ).is(':hidden') ) {
          $('#global_error_message_container').show('medium');
        }
      }

      //Hide global error message.
      //Return: nothing.
      function hide_global_error_message() {
        if ($('#global_error_message_container' ).is(':visible') ) {
          $('#global_error_message_container').hide('medium');
        }
      }
	  
	  function CheckEmailaddress(EmailAddress)
		{
		   //alert(EmailAddress);
		   
			  // var filter=/^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,4})$/;
			   var filter=/^[_a-zA-Z0-9-\s]+(\.[_a-zA-Z0-9-]+)*@[a-zA-Z0-9-]+(\.[a-zA-Z0-9-]+)*(\.[a-zA-Z]{2,4})$/;
			  //alert(filter.test(EmailAddress.value));
			  if (!filter.test(EmailAddress)) 
			 {
				return false;
			 }else{
				 return true;
			 }
   
		}
		
		
		 function CheckUserName1(userName)
        {
			var strName = "";
			var strUserName = userName
			var email = document.getElementById("txtEmail1");
			var mobile = document.getElementById("txtMobile");
			var countryCode = document.getElementById("txtCountryCode");
			
			
			if( strUserName == "email")
			{
				strName = email.value.trim();
			}
			else
			{
				
				var firstTwoChar = mobile.value.trim().slice(0,2);
				if(firstTwoChar == "88")
				{
					strName = mobile.value.trim().slice(2);
				}else
				{
					strName =  mobile.value.trim();
				}
				
				
			}
			
			var xmlhttp;
			var button=document.getElementById("Continue");
			var mess=document.getElementById("txtUserName_message");
			var userName_=document.getElementById("txtUserName");
			var userName=userName_.toString();
			var radList = document.getElementsByName('userNameRadio');
			var version = document.getElementById('version').value;
			var txt;
			
			email.style.backgroundColor="#fff";
			
			mobile.style.backgroundColor="#fff";
						
						
			//alert(userName);
			//var returnValue = 0;
			if (strName.length==0)
			{ 
				document.getElementById("txtUserName_message").innerHTML="";
               //	button.disabled=false;
				return false;
			}
			if(strName.indexOf("&") > -1 || strName.indexOf("%") > -1 || strName.indexOf("'") > -1)
			{
				if(version == "EN")
				{
					alert("Username dose not allow &, %, '");
					document.getElementById("txtUserName_message").innerHTML="Username dose not allow &, %, '";
				}else
				{
					alert("ইউজারের নাম ফিল্ডটিতে &,  % ,   ' , স্পেস  ব্যবহার করা যাবে না");
					document.getElementById("txtUserName_message").innerHTML="ইউজারের নাম ফিল্ডটিতে &,  % ,   ' , স্পেস  ব্যবহার করা যাবে না"
				}
				userName_.style.backgroundColor="#F0EE86";
				
				for (var i = 0; i < radList.length; i++) 
				{
					 if(radList[i].checked) radList[i].checked = false;
				}
				if( strUserName == "email")
				{
					email.style.backgroundColor="#F0EE86";
				}
				else
				{
					mobile.style.backgroundColor="#F0EE86";
				}
						
				return false;
			}
			//var username_message = check_user_name(strName);
//			if(username_message != ''){
//				show_error_message(username_message, 'txtUserName');
//				//return returnValue;
//			}
			if (window.XMLHttpRequest)
			{// code for IE7+, Firefox, Chrome, Opera, Safari
				xmlhttp=new XMLHttpRequest();
			}
			else
			{// code for IE6, IE5
				xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
			}
			txt="";
			xmlhttp.onreadystatechange=function(txt)
			{
				if (xmlhttp.readyState==4 && xmlhttp.status==200)
				{                   
					txt = xmlhttp.responseText;  	
					mess.innerHTML=txt;
					//alert(txt);
					if (txt=="") 
					{
						
						userName_.style.backgroundColor="#FFF";
						email.style.backgroundColor="#fff";
						mobile.style.backgroundColor="#fff";
                         //button.className="BDJButton"
						//button.disabled=false;
						//returnValue = 1;
					
					}
					else
					{
					    alert(txt);
						userName_.style.backgroundColor="#F0EE86";
						userName_.value = "";
						for (var i = 0; i < radList.length; i++) 
						{
     						 if(radList[i].checked) radList[i].checked = false;
    					}
						if( strUserName == "email")
						{
						 	email.style.backgroundColor="#F0EE86";
						}
						else
						{
							mobile.style.backgroundColor="#F0EE86";
						}
			
			
						txt="";
						//returnValue = 0;
					}
					return true;
					
				}
				
								
			}
			if(isFromIom)
			{
				xmlhttp.open("GET","https://mybdjobs.bdjobs.com/CheckUserName.asp?UserName="+strName+"&version="+version,true);
			}
			else
			{
				if(version == "EN"){
					xmlhttp.open("GET","//mybdjobs.bdjobs.com/CheckUserName.asp?UserName="+strName+"&version="+version,true);
				}else{
					xmlhttp.open("GET","https://mybdjobs.bdjobs.com/CheckUserName.asp?UserName="+strName+"&version="+version,true);
				}
			}
			
           
			xmlhttp.send();
			//return returnValue;
		}
		
		
		// function checkDuplicacy()
//       {
//			
//			 $.ajax({
//                        type: "post",
//                        url: "https://mybdjobs.bdjobs.com/CheckUserName.asp",
//                        data: $("#table").serialize(),
//                        dataType: "text",
//                        cache: false,
//                        async: false,
//                        success: function(responseText) {
//                           if(responseText == "Exist")
//						   {
//							   alert("Your resume has already been submitted once in the system.");
//							   //return false;
//						   }else
//						   {
//							   hide_global_error_message();
//            				  // return true;
//						   }
//                        },
//                        error: function(responseText) {
//                            console.log(responseText);
//
//                        }
//                    });
//
//		}
		
		
		function CheckPassword(password)
	{
		var strength = new Array();
		var button=document.getElementById("Continue");
		var text = document.getElementById("PasswordStrength_message");
		var passwordTextbox= document.getElementById("txtPassword");
		strength[0] = "Blank";
		strength[1] = "Very Weak";
		strength[2] = "Weak";
		strength[3] = "Medium";
		strength[4] = "Strong";
		strength[5] = "Very Strong";
		
		var score = 1;
		
		
		if (password.length < 1)
		{
			text.style.color="#ff6666";		
			text.style.fontWeight="bold";
			passwordTextbox.style.backgroundColor="#F0EE86";
			return strength[0]; 
		} 
		
		if (password.length < 4)
		{ 
			text.style.color="#ff6666";		
			text.style.fontWeight="bold";
			passwordTextbox.style.backgroundColor="#F0EE86";	
			return strength[1];
		}
		if (password.length < 8)
		{ 
			text.style.color="#ff6666";		
			text.style.fontWeight="bold";
			passwordTextbox.style.backgroundColor="#F0EE86";	
			score++;
		
		}
		if ((password.length >= 8 &&  password.length <= 12)&& password.match(/^[a-zA-Z]\d{3}$/) )
		{
			text.style.color="#ff6666";
			text.style.fontWeight="bold";
			password.style.backgroundColor="#F0EE86";	
			score++;
		}
		if ((password.length >= 8 &&  password.length <= 12)&& (password.match(/^[a-zA-Z]\d{3}$/)|| (password.match(/[a-z]/) || password.match(/[A-Z]/)) ) )
		{
			text.style.color="Green";
			text.style.fontWeight="bold";
			passwordTextbox.style.backgroundColor="#F0EE86";
			score++;
		}
		if ((password.length >= 8 &&  password.length <= 12) &&( password.match(/^[a-zA-Z]\d{3}$/) ||(password.match(/[a-z]/) || password.match(/[A-Z]/)) || password.match(/^[0-9]+$/) ))
		{
			text.style.color="Green"
			text.style.fontWeight="bold"
			passwordTextbox.style.backgroundColor="#FFF";
			score++;
		}
		
		if ((password.length >= 8 &&  password.length <= 12) &&( password.match(/^[a-zA-Z]\d{3}$/) ||(password.match(/[a-z]/) || password.match(/[A-Z]/)) || password.match(/^[0-9]+$/)|| password.match(/.[!,@,#,$,%,^,&,*,?,_,~,-,£,(,)]/)||password.match(/\d+/) ))
		{
			text.style.color="Green";
			text.style.fontWeight="bold";
			passwordTextbox.style.backgroundColor="#FFF";
			score++;
		}
		
		return strength[score];
	
	}

    


    function PasswordChanged(field)

    {

        var span = document.getElementById("PasswordStrength_message");

        span.innerHTML = CheckPassword(field.value);
		

    }
	
	function CheckREPassword(langType)
      {
		var password= document.getElementById("txtPassword");
		var rePassword= document.getElementById("txtRetypePassword");
		var badColor="#ff6666";
		var textBdColor="#F0EE86"
		var mess=document.getElementById("PasswordCheck_message");
		if (password.value!=rePassword.value)
		{
			rePassword.style.backgroundColor = textBdColor;
			mess.style.color = badColor;
			mess.style.fontWeight="bold";
			if(langType == "BN"){
				mess.innerHTML = "পাসওয়ার্ড মিলছে না।";
			}else{
				mess.innerHTML = "These Passwords don't match.";
			}
			
		}
		else
		{
			rePassword.style.backgroundColor = "#FFF";
			mess.innerHTML = "";
		
		}
      }
///////////////////////////////////////////FOR BANGLA VALIDATION
function formValidationBN()  
		{
			var data_ok = true;
			var fname = document.registration.txtFirstName;
			var rgEx = /^[ A-Za-z0-9\s./''-]*$/;
			 //var first_name_message = check_value(fname.value);
			 if( fname.value.trim() == '') {
				data_ok = false;
				show_error_message("নামের প্রথম অংশ খালি রাখা যাবে না ।", 'txtFirstName');
			 }
			  else {
				 if(fname.value.length > 50){
					 data_ok = false;
					show_error_message("নামের প্রথম অংশ  ৫০ অক্ষরের বেশি হবে না ।", 'txtFirstName');
				 }
				 else if(!rgEx.test(fname.value.trim())){
					 data_ok = false;
					show_error_message("শুধুমাত্র অক্ষর (a-z),সংখ্যা (0-9),এই বিরামচিহ্নগুলি (.), (-), (') এবং স্পেস ব্যবহার করতে পারবেন।", 'txtFirstName');
				 }else{
					 hide_error_message('txtFirstName');
				 }
				
			  }
			//check last name
			var lname = document.registration.txtLastFName;
			//var last_name_message = check_value(lname.value);
			 if ( lname.value != '' ){
				 if(lname.value.length > 50){
					 data_ok = false;
					show_error_message("নামের শেষ অংশ ৫০ অক্ষরের বেশি হবে না।", 'txtLastFName');
				 }
				 else if(!rgEx.test(lname.value.trim())){
					 data_ok = false;
					show_error_message("শুধুমাত্র অক্ষর (a-z),সংখ্যা (0-9),এই বিরামচিহ্নগুলি (.), (-), (') এবং স্পেস ব্যবহার করতে পারবেন।", 'txtLastFName');
				 }else{
					 hide_error_message('txtLastFName');
				 }
				
			  }
			  
			//gender validation
			//var gender = document.registration.cboGender;
			//var gender_message = check_value(gender.value);
			// if ( document.getElementById("cboGender").checked == false) {
			//	data_ok = false;
			//	show_error_message("Please select gender", 'cboGender');
			// }
			//  else {
			//	hide_error_message('cboGender');
			//  }
			
			 if(!$("input[type=radio][name=cboGender]:checked").length > 0)
			 {
				 data_ok = false;
				show_error_message("লিঙ্গ নির্বাচন করুন।", 'cboGender');
			 }
			 else {
				hide_error_message('cboGender');
			 }
			  
			//mobilenumber validation
			var mobile = document.registration.txtMobile;
			var countryCode = document.registration.txtCountryCode;
			
			var email = document.registration.txtEmail1;
			var isFromSm=document.getElementById("hIsSMLogin").value;
			if (isFromSm=="true")
			{
				//if(document.getElementById("specialRadio").checked)
//				{
//					if(mobile.value.trim() == '')
//					{
//						data_ok = false;
//						show_error_message("Mobile No cannot be empty.", 'txtMobile');
//					}
//				}else
//				{
//					 if ( email.value.trim() == '' ) 
//				 	{
//						data_ok = false;
//						show_error_message("Email address cannot be empty.", 'txtEmail1');
//					
//				 	}
//				}
					if(mobile.value.trim() == "" && email.value.trim() == "")
					{
						data_ok = false;
						show_error_message("মোবাইল নাম্বার অথবা ইমেইল অ্যাড্রেস যেকোনো একটির তথ্য দিন।", 'common');
					}else
					{
						hide_error_message('common');
					}
				
				
			}
			else
			{
				if(document.getElementById("specialRadio").checked)  //need to be changed
				{
					if(mobile.value.trim() == '')
					{
						data_ok = false;
						show_error_message("মোবাইল নাম্বার খালি রাখা যাবে না ।", 'txtMobile');
					}
				}else
				{
					if(mobile.value.trim() == "" && email.value.trim() == "")
					{
						data_ok = false;
						show_error_message("মোবাইল নাম্বার অথবা ইমেইল অ্যাড্রেস যেকোনো একটির তথ্য দিন।", 'common');
					}else
					{
						hide_error_message('common');
					}
				}
			}
			
			//var mobile_message = check_value(mobile.value);
			 //if ( mobile.value == '' ) {
			//	data_ok = false;
			//	show_error_message("Mobile field cannot be blank", 'txtMobile');
			// }
			//var uname = document.getElementById("userNameRadio2"); 
			 if ( mobile.value.trim() != '' ) {
				 mob = countryCode.value.trim() + mobile.value.trim(); 
				if(mob.length > 15){
					data_ok = false;
					if(document.getElementById("userNameRadio2") != null && document.getElementById("userNameRadio2").checked)
					{
						emtyUserNameFiled(isFromSm)
					}
					show_error_message("মোবাইল নাম্বার ১৫ অক্ষরের বেশি হবে না।", 'txtMobile');
				}else if(mob.length < 6)
				{
					data_ok = false;
					if(document.getElementById("userNameRadio2") != null && document.getElementById("userNameRadio2").checked)
					{
						emtyUserNameFiled(isFromSm)
					}
					show_error_message("মোবাইল নাম্বার ৬ অক্ষরের কম হবে না।", 'txtMobile');
				}
				else if(isNaN(mobile.value.trim())){
					data_ok = false;
					if(document.getElementById("userNameRadio2") != null && document.getElementById("userNameRadio2").checked)
					{
						emtyUserNameFiled(isFromSm)
					}
					show_error_message("মোবাইল নাম্বার অবশ্যই সংখ্যাসূচক হবে (০-৯)।", 'txtMobile');
				}else{
					hide_error_message('txtMobile');
				}

			 }
			  
			//email validation
			//if(document.getElementById("functionRadio").checked)
			//{
				if ( email.value.trim() != '' ) {
					var val = email.value.trim();
					if(val.length > 50){
						data_ok = false;
						if(document.getElementById("userNameRadio1").checked)
						{
							emtyUserNameFiled(isFromSm)
						}
						show_error_message("ইমেইল ৫০ অক্ষরের বেশি হবে না।", 'txtEmail1');
					}
					else if(CheckEmailaddress(email.value.trim()) == false){
						data_ok = false;
						if(document.getElementById("userNameRadio1").checked)
						{
							emtyUserNameFiled(isFromSm)
						}
						show_error_message("সঠিক ইমেইল অ্যাড্রেস এর তথ্য দিন।", 'txtEmail1');
					}else{
						hide_error_message('txtEmail1');
					}
					
				}
			//}
			
			//category validation
			var category = document.registration.selected_Cat;
			//var category_message = check_value(category.value);
			 if ( category.value == "-1" ) {
				data_ok = false;
				show_error_message("অন্তত একটি ক্যাটাগরি নির্বাচন করুন।", 'selected_Cat');
			 }
			else {
				hide_error_message('selected_Cat');
			}
			
			//username validation
			//var isFromSm=document.registration.hIsSMLogin;
			
			if (isFromSm=="false")
			{
				if(document.getElementById("functionRadio").checked)  // need to change
				{	
					var username = document.registration.txtUserName;
					var username_message = check_user_namebn(username.value);
					//alert(username_message);
					if(username_message != '')
					{
						data_ok = false;
						show_error_message(username_message, 'txtUserName');
						
					}
					else
					{
						hide_error_message('txtUserName');
					}
					
					//password validation check
				//password validation check
					var password = document.registration.txtPassword;
					var text = document.getElementById("PasswordStrength_message");
					if(password.value == "")
					{
						data_ok = false;
						show_error_message("পাসওয়ার্ড টাইপ করুন।", 'PasswordStrength');
						text.style.color="#ff6666";		
						text.style.fontWeight="bold";
					}
					else
					{
						if(password.value.length <8){
							data_ok = false;
							show_error_message("পাসওয়ার্ড ৮ অক্ষরের নিচে হতে পারবে না।", 'PasswordStrength');
							text.style.color="#ff6666";		
							text.style.fontWeight="bold";
						}else if(password.value.length >12){
							data_ok = false;
							show_error_message("পাসওয়ার্ড ১৫ অক্ষরের মধ্যে সীমাবদ্ধ হতে হবে।", 'PasswordStrength');
							text.style.color="#ff6666";		
							text.style.fontWeight="bold";
						}else if(password.value.indexOf(" ")> -1){
							data_ok = false;
							show_error_message("পাসওয়ার্ড এ কোন স্পেস ব্যবহার করা যাবে না।", 'PasswordStrength');
							text.style.color="#ff6666";		
							text.style.fontWeight="bold";
						}else if(password.value.indexOf("'")> -1){
							data_ok = false;
							show_error_message("পাসওয়ার্ড এ '  ব্যবহার করা যাবে না।", 'PasswordStrength');
							text.style.color="#ff6666";		
							text.style.fontWeight="bold";
						}
						else if(password.value.indexOf('"')> -1){
							data_ok = false;
							show_error_message('পাসওয়ার্ড এ \"\ ব্যবহার করা যাবে না।', 'PasswordStrength');
							text.style.color="#ff6666";		
							text.style.fontWeight="bold";
						}else if(password.value.indexOf("&")> -1){
							data_ok = false;
							show_error_message("পাসওয়ার্ড এ & ব্যবহার করা যাবে না।", 'PasswordStrength');
							text.style.color="#ff6666";		
							text.style.fontWeight="bold";
						}
						else if(password.value.indexOf(";")> -1){
							data_ok = false;
							show_error_message("পাসওয়ার্ড এ ; ব্যবহার করা যাবে না।", 'PasswordStrength');
							text.style.color="#ff6666";		
							text.style.fontWeight="bold";
						}
						else if(password.value.indexOf(")")> -1){
							data_ok = false;
							show_error_message("পাসওয়ার্ড এ ) ব্যবহার করা যাবে না।", 'PasswordStrength');
							text.style.color="#ff6666";		
							text.style.fontWeight="bold";
						}
						else if(password.value.indexOf("(")> -1){
							data_ok = false;
							show_error_message("পাসওয়ার্ড এ (  ব্যবহার করা যাবে না।", 'PasswordStrength');
							text.style.color="#ff6666";		
							text.style.fontWeight="bold";
						}
						else if(password.value.indexOf("%")> -1){
							data_ok = false;
							show_error_message("পাসওয়ার্ড এ %  ব্যবহার করা যাবে না।", 'PasswordStrength');
							text.style.color="#ff6666";		
							text.style.fontWeight="bold";
						}
						else{
							hide_error_message('PasswordStrength');
						}
					}
					
					//validation retype password
					var rtypePassword = document.registration.txtRetypePassword;
					var text = document.getElementById("PasswordCheck_message");
					if(rtypePassword.value ==""){
					data_ok = false;
					show_error_message("পুনরায় পাসওয়ার্ড টাইপ করুন।", 'PasswordCheck');
					text.style.color="#ff6666";		
					text.style.fontWeight="bold";
				}else{
					CheckREPassword(version);
					var mess=document.getElementById("PasswordCheck_message");
					if(mess.innerHTML != ""){
						data_ok = false;
						text.style.color="#ff6666";		
						text.style.fontWeight="bold";
						show_error_message(mess.innerHTML, 'PasswordCheck');
					}else{
						hide_error_message('PasswordCheck');
					}
				}
				}
			}
			else
			{
				if(document.getElementById("hSMId").value.trim()=="" &&document.getElementById("hSMediaType").value.trim()=="")
				{
					data_ok = false;
					alert( 'oops! we do not get your social media information properly. please try again');
				}
			}
			
			
			//alert(data_ok);
			if ( data_ok ) {
            	hide_global_error_message();
            	return data_ok
          	}
			
			return data_ok 
		}
		
		function check_user_namebn(value_to_check) {
        if ( value_to_check.trim() == "" ) {
          return 'ইউজার আইডি নির্বাচন করুন।';
        }else{
				//return '';
		  if ( value_to_check.length < 4) 
		  {
         	return 'ইউজার আইডি কমপক্ষে ৪ অক্ষরের হতে হবে।';
          }
//		  else if(value_to_check.length > 15)
//		  {
//			  return 'ইউজারের নাম নাম ১৫ অক্ষরের বেশী হওয়া যাবে না';
//		  }
//		  else if(value_to_check.indexOf(" ") > -1)
//		  {
//			  return "ইউজারের নাম ফিল্ডটিতে স্পেস  চিহ্ন ব্যবহার করা যাবে না";
//		  }
//		  else if(value_to_check.indexOf("'") > -1)
//		  {
//			  return "ইউজারের নাম ফিল্ডটিতে ' চিহ্ন ব্যবহার করা যাবে না";
//		  }
//		  else if(value_to_check.indexOf('"') > -1)
//		  {
//			  return "ইউজারের নাম ফিল্ডটিতে \"\ চিহ্ন ব্যবহার করা যাবে না";
//		  }
//		  else if(value_to_check.indexOf("&") > -1)
//		  {
//			  return "ইউজারের নাম ফিল্ডটিতে &  ব্যবহার করা যাবে না";
//		  }
//		  else if(value_to_check.indexOf(";") > -1)
//		  {
//			  return "ইউজারের নাম ফিল্ডটিতে ; চিহ্ন ব্যবহার করা যাবে না";
//		  }
//		  else if(value_to_check.indexOf(":") > -1)
//		  {
//			  return "ইউজারের নাম ফিল্ডটিতে : চিহ্ন ব্যবহার করা যাবে না";
//		  }
//		  else if(value_to_check.indexOf(",") > -1)
//		  {
//			  return "ইউজারের নাম ফিল্ডটিতে , চিহ্ন ব্যবহার করা যাবে না";
//		  }
//		  else if(value_to_check.indexOf("\\") > -1)
//		  {
//			  return "ইউজারের নাম ফিল্ডটিতে \ চিহ্ন ব্যবহার করা যাবে না";
//		  }
//		  else if(value_to_check.indexOf('/') > -1)
//		  {
//			  return "ইউজারের নাম ফিল্ডটিতে / চিহ্ন ব্যবহার করা যাবে না";
//		  }else{
//			  return '';
//		  }
		}
		return '';
        
      }
	
		
	  
	  function CheckPasswordbn(password)
	{
		var strength = new Array();
		var button=document.getElementById("Continue");
		var text = document.getElementById("PasswordStrength_message");
		var passwordTextbox= document.getElementById("txtPassword");
		strength[0] = "ফাঁকা";
		strength[1] ="খুব দুর্বল!";
		strength[2] = "দুর্বল";
		strength[3] = "মোটামুটি";
		strength[4] = "দৃঢ়!";
		strength[5] = "খুব দৃঢ়!";
		
		var score = 1;
		
		
		if (password.length < 1)
		{
			text.style.color="#ff6666";		
			text.style.fontWeight="bold";
			passwordTextbox.style.backgroundColor="#F0EE86";
			return strength[0]; 
		} 
		
		if (password.length < 4)
		{ 
			text.style.color="#ff6666";		
			text.style.fontWeight="bold";
			passwordTextbox.style.backgroundColor="#F0EE86";	
			return strength[1];
		}
		if (password.length < 8)
		{ 
			text.style.color="#ff6666";		
			text.style.fontWeight="bold";
			passwordTextbox.style.backgroundColor="#F0EE86";	
			score++;
		
		}
		if ((password.length >= 8 &&  password.length <= 12)&& password.match(/^[a-zA-Z]\d{3}$/) )
		{
			text.style.color="#ff6666";
			text.style.fontWeight="bold";
			password.style.backgroundColor="#F0EE86";	
			score++;
		}
		if ((password.length >= 8 &&  password.length <= 12)&& (password.match(/^[a-zA-Z]\d{3}$/)|| (password.match(/[a-z]/) || password.match(/[A-Z]/)) ) )
		{
			text.style.color="Green";
			text.style.fontWeight="bold";
			passwordTextbox.style.backgroundColor="#F0EE86";
			score++;
		}
		if ((password.length >= 8 &&  password.length <= 12) &&( password.match(/^[a-zA-Z]\d{3}$/) ||(password.match(/[a-z]/) || password.match(/[A-Z]/)) || password.match(/^[0-9]+$/) ))
		{
			text.style.color="Green"
			text.style.fontWeight="bold"
			passwordTextbox.style.backgroundColor="#FFF";
			score++;
		}
		
		if ((password.length >= 8 &&  password.length <= 12) &&( password.match(/^[a-zA-Z]\d{3}$/) ||(password.match(/[a-z]/) || password.match(/[A-Z]/)) || password.match(/^[0-9]+$/)|| password.match(/.[!,@,#,$,%,^,&,*,?,_,~,-,£,(,)]/)||password.match(/\d+/) ))
		{
			text.style.color="Green";
			text.style.fontWeight="bold";
			passwordTextbox.style.backgroundColor="#FFF";
			score++;
		}
		
		return strength[score];
	
	} 
	function CheckUserNamebn1(strName)
        {
			var xmlhttp;
			var button=document.getElementById("Continue");
			var mess=document.getElementById("txtUserName_message");
			var userName_=document.getElementById("txtUserName");
			var userName=userName_.toString();
			var txt;
			//alert(userName);
			//var returnValue = 0;
			if (strName.length==0)
			{ 
				document.getElementById("txtUserName_message").innerHTML="";
               //	button.disabled=false;
				return;
			}
			if(strName.indexOf("&") > -1 || strName.indexOf("%") > -1 || strName.indexOf("'") > -1 || strName.indexOf(" ") > -1)
			{
				alert("ইউজারের নাম ফিল্ডটিতে &,  % ,   ' , স্পেস  ব্যবহার করা যাবে না");
				document.getElementById("txtUserName_message").innerHTML="ইউজারের নাম ফিল্ডটিতে &,  % ,   ' , স্পেস  ব্যবহার করা যাবে না"
				return;
			}
			//var username_message = check_user_name(strName);
//			if(username_message != ''){
//				show_error_message(username_message, 'txtUserName');
//				//return returnValue;
//			}
			if (window.XMLHttpRequest)
			{// code for IE7+, Firefox, Chrome, Opera, Safari
				xmlhttp=new XMLHttpRequest();
			}
			else
			{// code for IE6, IE5
				xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
			}
			txt="";
			xmlhttp.onreadystatechange=function(txt)
			{
				if (xmlhttp.readyState==4 && xmlhttp.status==200)
				{                   
					txt = xmlhttp.responseText;  	
					mess.innerHTML=txt;
					//alert(txt);
					if (txt=="") 
					{
						
						userName_.style.backgroundColor="#FFF";
                         //button.className="BDJButton"
						//button.disabled=false;
						//returnValue = 1;
					
					}
					else
					{
					     alert(txt);
						userName_.style.backgroundColor="#F0EE86";
						//mess.style.fontWeight="bold"
                        //mess.style.color="#ff6666";	
                        //button.className="BDJButton_disable"
						//button.disabled=true;
						txt="";
						//returnValue = 0;
					}
					return true;
					
				}
				
								
			}
			xmlhttp.open("GET","CheckUserNamebn.asp?UserName="+strName,true);
           
			xmlhttp.send();
			//return returnValue;
		}
	
	function PasswordChangedbn(field)

    {

        var span = document.getElementById("PasswordStrength_message");

        span.innerHTML = CheckPasswordbn(field.value);
		

    }
	
	
	function emtyUserNameFiled(isFromSm)
	{
		var radList = document.getElementsByName('userNameRadio');
		if(isFromSm == "false")
		{
			if(document.getElementById("functionRadio").value == 0)
			{
				for (var i = 0; i < radList.length; i++) 
				{
					 if(radList[i].checked)
					 {
						  radList[i].checked = false;
					 }
				}
				document.getElementById("txtUserName").value = "";
			}
		}
		//return false;
	}

//ttc Registration validation New PORAG->28.03.2019
function ttcFormValidation_New()  
		{
			var data_ok = true;
			var version = document.getElementById("version").value;
			var fname = document.registration.txtFirstName;
			 //var first_name_message = check_value(fname.value);
			 var rgEx = /^[ A-Za-z0-9\s./''-]*$/;
			 if( fname.value.trim() == '') {
				data_ok = false;
				if(version == "EN")
				{
					show_error_message("Name cannot be empty.", 'txtFirstName');
				}else
				{
					show_error_message("নাম খালি রাখা যাবে না ।", 'txtFirstName');
				}
			 }
			  else {
				 
				 if(fname.value.length > 50){
					 data_ok = false;
					 if(version == "EN")
					{
						show_error_message("Name maximum 100 characters.", 'txtFirstName');
					}else
					{
						show_error_message("নাম ১০০ অক্ষরের বেশি হবে না ।", 'txtFirstName');
					}
				 }
				
				 else if(!rgEx.test(fname.value.trim())){
					 data_ok = false;
					  if(version == "EN")
					  {
						show_error_message("Please use only letters (a-z),numbers (0-9),punctuations like (.),(-),(\') and space.", 'txtFirstName');
					  }else
					  {
						show_error_message("শুধুমাত্র অক্ষর (a-z),সংখ্যা (0-9),এই বিরামচিহ্নগুলি (.), (-), (') এবং স্পেস ব্যবহার করতে পারবেন।", 'txtFirstName');
					  }	
				 }
				 else{
					 hide_error_message('txtFirstName');
				 }
				
			  }
			
			 if(!$("input[type=radio][name=cboGender]:checked").length > 0)
			 {
				 data_ok = false;
				 if(version == "EN")
				 {
					show_error_message("Please select Gender.", 'cboGender');
				 }else
				 {
					 show_error_message("লিঙ্গ নির্বাচন করুন।", 'cboGender');
				 }
			 }
			 else {
				hide_error_message('cboGender');
			 }
			  
			//mobilenumber validation
			var mobile = document.registration.txtMobile;
			var countryCode = document.registration.txtCountryCode;
			
			
			//var isFromSm=document.getElementById("hIsSMLogin").value;
			//if (isFromSm=="true")
//			{
//				//if(document.getElementById("specialRadio").checked)
////				{
////					if(mobile.value.trim() == '')
////					{
////						data_ok = false;
////						show_error_message("Mobile No cannot be empty.", 'txtMobile');
////					}
////				}else
////				{
////					 if ( email.value.trim() == '' ) 
////				 	{
////						data_ok = false;
////						show_error_message("Email address cannot be empty.", 'txtEmail1');
////					
////				 	}
////				}
//					if(mobile.value.trim() == "" && email.value.trim() == "")
//					{
//						data_ok = false;
//						if(document.getElementById("functionRadio").value == 1)
//						{
//							msgShowDiv = "common_message_mob";
//							msgHideDiv = "common_message_email"
//						}else
//						{
//							msgShowDiv = "common_message_email";
//							msgHideDiv = "common_message_mob"
//						}
//						
//						
//						if(version == "EN")
//						{
//							show_error_message("Please fill at least a Mobile Number or Email Address", msgShowDiv);
//						}else
//						{
//							show_error_message("মোবাইল নাম্বার অথবা ইমেইল অ্যাড্রেস যেকোনো একটির তথ্য দিন।", msgShowDiv);
//						}
//					}else
//					{
//						hide_error_message(msgHideDiv);
//					}
//				
//				
//			}
//			else
//			{
				//if(document.getElementById("functionRadio").value == 1)
				//{
					if(mobile.value.trim() == '')
					{
						data_ok = false;
						if(version == "EN")
						{
							show_error_message("Mobile Number cannot be empty.", 'txtMobile');
						}else
						{
							show_error_message("মোবাইল নাম্বার খালি রাখা যাবে না ।", 'txtMobile');
						}
					}
				//}else
				//{
					//if(mobile.value.trim() == "" && email.value.trim() == "")
					//{
					//	data_ok = false;
					//	if(version == "EN")
					//	{
					//		show_error_message("Please fill at least a Mobile Number or Email Address.", 'common');
					//	}else
						//{
						//	show_error_message("মোবাইল নাম্বার অথবা ইমেইল অ্যাড্রেস যেকোনো একটির তথ্য দিন।", 'common');
						//}
					//}else
					//{
						//hide_error_message('common');
					//}
				//}
			//}
			
			//var mobile_message = check_value(mobile.value);
			 //if ( mobile.value == '' ) {
			//	data_ok = false;
			//	show_error_message("Mobile field cannot be blank", 'txtMobile');
			// }
			//var uname = document.getElementById("userNameRadio2"); 
			 if ( mobile.value.trim() != '' ) {
				 mob = countryCode.value.trim() + mobile.value.trim(); 
				if(mob.length > 15){
					data_ok = false;
					if(document.getElementById("userNameRadio2") != null && document.getElementById("userNameRadio2").checked)
					{
						emtyUserNameFiled(isFromSm)
					}
					if(version == "EN")
					{
						show_error_message("Mobile Number maximum 15 characters.", 'txtMobile');
					}else
					{
						show_error_message("মোবাইল নাম্বার ১৫ অক্ষরের বেশি হবে না।", 'txtMobile');
					}
				}else if(mob.length < 6)
				{
					data_ok = false;
					if(document.getElementById("userNameRadio2") != null && document.getElementById("userNameRadio2").checked)
					{
						emtyUserNameFiled(isFromSm)
					}
					if(version == "EN")
					{
						show_error_message("Mobile Number minimum 6 characters.", 'txtMobile');
					}else
					{
						show_error_message("মোবাইল নাম্বার ৬ অক্ষরের কম হবে না।", 'txtMobile');
					}
				}
				else if(isNaN(mobile.value.trim())){
					data_ok = false;
					if(document.getElementById("userNameRadio2") != null && document.getElementById("userNameRadio2").checked)
					{
						emtyUserNameFiled(isFromSm)
					}
					if(version == "EN")
					{
						show_error_message("Mobile Number contains only numeric values (0-9).", 'txtMobile');
					}else
					{
						show_error_message("মোবাইল নাম্বার অবশ্যই সংখ্যাসূচক হবে (০-৯)।", 'txtMobile');
					}
				}else{
					hide_error_message('txtMobile');
				}

			 }
			  
			//email validation
			//if(document.getElementById("functionRadio").checked)
			//{
				//if ( email.value.trim() != '' ) {
					//var val = email.value.trim();
					//if(val.length > 50){
					//	data_ok = false;
						//if(document.getElementById("userNameRadio1").checked)
//						{
//							emtyUserNameFiled(isFromSm)
//						}
//						if(version == "EN")
//						{
//							show_error_message("Email Address maximum 50 characters", 'txtEmail1');
//						}else
//						{
//							show_error_message("ইমেইল ৫০ অক্ষরের বেশি হবে না।", 'txtEmail1');
//						}
//					}
//					else if(CheckEmailaddress(email.value.trim()) == false){
//						data_ok = false;
//						if(document.getElementById("userNameRadio1").checked)
//						{
//							emtyUserNameFiled(isFromSm)
//						}
//						if(version == "EN")
//						{
//							show_error_message("Please use valid Email Address.", 'txtEmail1');
//						}else
//						{
//							show_error_message("সঠিক ইমেইল অ্যাড্রেস এর তথ্য দিন।", 'txtEmail1');
//						}
//					}else{
//						hide_error_message('txtEmail1');
//					}
//					
//				}
			//}
			
			//category validation
			var category = document.registration.selected_Cat;
			//var category_message = check_value(category.value);
			 if ( category.value == "-1" ) {
				data_ok = false;
				if(version == "EN")
				{
					show_error_message("Please select a Category.", 'selected_Cat');
				}else
				{
					show_error_message("অন্তত একটি ক্যাটাগরি নির্বাচন করুন।", 'selected_Cat');
				}
			 }
			else {
				hide_error_message('selected_Cat');
			}
			
			//username validation
			//var isFromSm=document.registration.hIsSMLogin;
			
			//if (isFromSm=="false")
			//{
				//if(document.getElementById("functionRadio").value == 0)
//				{	
//					var username = document.registration.txtUserName;
//					if(version == "EN")
//					{	
//						var username_message = check_user_name(username.value);
//					}else
//					{
//						var username_message = check_user_namebn(username.value);
//					}
//					if((mobile.value == "" && email.value != "") || (mobile.value == "" && email.value == "") || (mobile.value != "" && email.value != "") )
//					{
//						msgShowDiv = "common_message_email";
//						msgHideDiv = "common_message_mob"
//					}else if(email.value == "" && mobile.value != "")
//					{
//						msgShowDiv = "common_message_mob";
//						msgHideDiv = "common_message_email"
//					}
//					//alert(username_message);
//					if(username_message != '')
//					{
//						data_ok = false;
//						show_error_message(username_message, msgShowDiv);
//						hide_error_message(msgHideDiv);
//					}
//					else
//					{
//						hide_error_message(msgShowDiv);
//					}
//					
//					//password validation check
//					var password = document.registration.txtPassword;
//					var text = document.getElementById("PasswordStrength_message");
//					if(password.value == "")
//					{
//						data_ok = false;
//						if(version == "EN")
//						{
//							show_error_message("Please enter Password.", 'PasswordStrength');
//						}else
//						{
//							show_error_message("পাসওয়ার্ড টাইপ করুন।", 'PasswordStrength');
//						}
//						text.style.color="#ff6666";		
//						text.style.fontWeight="bold";
//					}
//					else
//					{
//						if(password.value.length <8){
//							data_ok = false;
//							if(version == "EN")
//							{
//								show_error_message("Password  minimum 8 characters.", 'PasswordStrength');
//							}else
//							{
//								show_error_message("পাসওয়ার্ড ৮ অক্ষরের নিচে হতে পারবে না।", 'PasswordStrength');
//							}
//							text.style.color="#ff6666";		
//							text.style.fontWeight="bold";
//						}else if(password.value.length >12){
//							data_ok = false;
//							if(version == "EN")
//							{
//								show_error_message("Password field should be limit of 15 characters.", 'PasswordStrength');
//							}else
//							{
//								show_error_message("পাসওয়ার্ড ১৫ অক্ষরের মধ্যে সীমাবদ্ধ হতে হবে।", 'PasswordStrength');
//							}
//							text.style.color="#ff6666";		
//							text.style.fontWeight="bold";
//						}else if(password.value.indexOf(" ")> -1){
//							data_ok = false;
//							if(version == "EN")
//							{
//								show_error_message("Please use only letters (a-z), numbers (0-9) and punctuations.", 'PasswordStrength');
//							}else
//							{
//								show_error_message("পাসওয়ার্ড এ কোন স্পেস ব্যবহার করা যাবে না।", 'PasswordStrength');
//							}
//							text.style.color="#ff6666";		
//							text.style.fontWeight="bold";
//						}else if(password.value.indexOf("'")> -1){
//							data_ok = false;
//							if(version == "EN")
//							{
//								show_error_message("Password field does not allow '", 'PasswordStrength');
//							}else
//							{
//								show_error_message("পাসওয়ার্ড এ '  ব্যবহার করা যাবে না।", 'PasswordStrength');
//							}
//							text.style.color="#ff6666";		
//							text.style.fontWeight="bold";
//						}
//						else if(password.value.indexOf('"')> -1){
//							data_ok = false;
//							if(version == "EN")
//							{
//								show_error_message("Password does not allow \"\"", 'PasswordStrength');
//							}else
//							{
//								show_error_message('পাসওয়ার্ড এ \"\ ব্যবহার করা যাবে না।', 'PasswordStrength');
//							}
//							text.style.color="#ff6666";		
//							text.style.fontWeight="bold";
//						}else if(password.value.indexOf("&")> -1){
//							data_ok = false;
//							if(version == "EN")
//							{
//								show_error_message("Password field does not allow '&'", 'PasswordStrength');
//							}else
//							{
//								show_error_message("পাসওয়ার্ড এ & ব্যবহার করা যাবে না।", 'PasswordStrength');
//							}
//							text.style.color="#ff6666";		
//							text.style.fontWeight="bold";
//						}
//						else if(password.value.indexOf(";")> -1){
//							data_ok = false;
//							if(version == "EN")
//							{
//								show_error_message("Password field does not allow ';'.", 'PasswordStrength');
//							}else
//							{
//								show_error_message("পাসওয়ার্ড এ ; ব্যবহার করা যাবে না।", 'PasswordStrength');
//							}
//							text.style.color="#ff6666";		
//							text.style.fontWeight="bold";
//						}
//						else if(password.value.indexOf(")")> -1){
//							data_ok = false;
//							if(version == "EN")
//							{
//								show_error_message("Password field does not allow ')'.", 'PasswordStrength');
//							}else
//							{
//								show_error_message("পাসওয়ার্ড এ ) ব্যবহার করা যাবে না।", 'PasswordStrength');
//							}
//							text.style.color="#ff6666";		
//							text.style.fontWeight="bold";
//						}
//						else if(password.value.indexOf("(")> -1){
//							data_ok = false;
//							if(version == "EN")
//							{
//							show_error_message("Password field does not allow '('.", 'PasswordStrength');
//							}else
//							{
//								show_error_message("পাসওয়ার্ড এ (  ব্যবহার করা যাবে না।", 'PasswordStrength');
//							}
//							text.style.color="#ff6666";		
//							text.style.fontWeight="bold";
//						}
//						else if(password.value.indexOf("%")> -1){
//							data_ok = false;
//							if(version == "EN")
//							{
//								show_error_message("Password field does not allow '%'.", 'PasswordStrength');
//							}else
//							{
//								show_error_message("পাসওয়ার্ড এ %  ব্যবহার করা যাবে না।", 'PasswordStrength');
//							}
//							text.style.color="#ff6666";		
//							text.style.fontWeight="bold";
//						}
//						else if(password.value.indexOf(">")> -1){
//							data_ok = false;
//							if(version == "EN")
//							{
//								show_error_message("Password field does not allow '>'.", 'PasswordStrength');
//							}else
//							{
//								show_error_message("পাসওয়ার্ড এ >  ব্যবহার করা যাবে না।", 'PasswordStrength');
//							}
//							text.style.color="#ff6666";		
//							text.style.fontWeight="bold";
//						}
//						else if(password.value.indexOf("<")> -1){
//							data_ok = false;
//							if(version == "EN")
//							{
//								show_error_message("Password field does not allow '<'.", 'PasswordStrength');
//							}else
//							{
//								show_error_message("পাসওয়ার্ড এ <  ব্যবহার করা যাবে না।", 'PasswordStrength');
//							}
//							text.style.color="#ff6666";		
//							text.style.fontWeight="bold";
//						}
//						else{
//							hide_error_message('PasswordStrength');
//						}
//					}
					
					//validation retype password
					//var rtypePassword = document.registration.txtRetypePassword;
//					var text = document.getElementById("PasswordCheck_message");
//					if(rtypePassword.value =="")
//					{
//						data_ok = false;
//						if(version == "EN")
//						{
//							show_error_message("Please re-enter Password.", 'PasswordCheck');
//						}else
//						{
//							show_error_message("পুনরায় পাসওয়ার্ড টাইপ করুন।", 'PasswordCheck');
//						}
//						text.style.color="#ff6666";		
//						text.style.fontWeight="bold";
//					}
//					else{
//							CheckREPassword(version);
//							var mess=document.getElementById("PasswordCheck_message");
//							if(mess.innerHTML != ""){
//								data_ok = false;
//								text.style.color="#ff6666";		
//								text.style.fontWeight="bold";
//								show_error_message(mess.innerHTML, 'PasswordCheck');
//							}
//							else
//							{
//								hide_error_message('PasswordCheck');
//							}
//					}
				//}
			//}
			//else
//			{
//				if(document.getElementById("hSMId").value.trim()=="" &&document.getElementById("hSMediaType").value.trim()=="")
//				{
//					data_ok = false;
//					if(version == "EN")
//					{
//						alert( 'oops! we do not get your social media information properly. please try again');
//					}else
//					{
//						alert( 'oops! we do not get your social media information properly. please try again');
//					}
//				}
//			}
			
			//if(document.getElementById("isTTC").value == "true")
			//{
				var ttc_id = document.registration.ttcID;
				var trainingCenterName = document.registration.trCentername;
				var trainingDistrict = document.registration.trCenterThanaorDis;
			//var category_message = check_value(category.value);
				 if ( ttc_id.value == "-1" ) {
					data_ok = false;
					if(version == "EN")
					{
						show_error_message("Please select a ttc.", 'ttcID');
					}else
					{
						show_error_message("অন্তত একটি টিটিসি আইডি নির্বাচন করুন।", 'ttcID');
					}
				 }
				 else if(ttc_id.value == "-10"){
					hide_error_message('ttcID');
					if( trainingCenterName.value.trim() == '') {
						data_ok = false;
						if(version == "EN")
						{
							show_error_message("Training center name cannot be empty.", 'trCentername');
						}else
						{
							show_error_message("প্রশিক্ষণ কেন্দ্রের নাম খালি রাখা যাবে না ।", 'trCentername');
						}
					 }else{
						hide_error_message('trCentername');
					 }
					 
					 if ( trainingDistrict.value == "-1" ) {
						data_ok = false;
						if(version == "EN")
						{
							show_error_message("Please select a district.", 'trCenterThanaorDis');
						}else
						{
							show_error_message("জেলা নির্বাচন করুন।", 'trCenterThanaorDis');
						}
					 }else{
						hide_error_message('trCenterThanaorDis');
					 }
				 }
				else {
					hide_error_message('ttcID');
				}
				var grade_id = document.registration.gradeId;
				if(ttc_id.value == "19" || ttc_id.value == "28" || ttc_id.value == "38" || ttc_id.value == "39"){
					if(grade_id.value == ""){
						data_ok = false;
						if(version == "EN")
						{
							show_error_message("Grade filed cannot be empty.", 'gradeId');
						}else
						{
							show_error_message("গ্রেড ফিল্ডটি খালি রাখা যাবে না। ", 'gradeId');
						}
					}
					else {
						hide_error_message('gradeId');
					}
				}else {
					hide_error_message('gradeId');
				}
				
			//}
			
			//alert(checkDuplicacy());
			//var dt = checkDuplicacy()
			//alert(dt)
			//if(!checkDuplicacy())
//			{
//				data_ok = false;
//				if(version == "EN")
//				{
//					alert("Your resume has already been submitted once in the system.")
//				}else
//				{
//					alert("আপনার রিজিউমি সিস্টেম এ সাবমিট করা আছে।")
//				}
//			}
			
			//alert(data_ok);
			//if ( data_ok ) {
//				hide_global_error_message();
//            	return data_ok;
//          	}
//			
//			return data_ok ;
			if (data_ok) {
				$.ajax({
                        type: "post",
                        url: "https://mybdjobs.bdjobs.com/CheckUserName.asp",
                        data: $("#table").serialize(),
                        dataType: "text",
                        cache: false,
                        async: false,
                        success: function(responseText) {
                           if(responseText == 1 || responseText == 2 || responseText == "-1")
						   {
							   if(version == "EN")
								{
									alert("Your resume has already been submitted once in the system.")
							    }else
								{
									alert("আপনার রিজিউমি সিস্টেম এ সাবমিট করা আছে।")
								}
							   data_ok = false;
						   }
						   else if(responseText == 3)
						   {
							  if(version == "EN")
								{
									alert("This User ID is not available, try another.")
							    }else
								{
									alert("এই ইউজার আইডিটি ইতিমধ্যে বিদ্যমান রয়েছে।")
								}
							   data_ok = false;
						   }else if(responseText == 4)
						   {
							  if(version == "EN")
								{
									if(document.registration.hSMediaType.value == "F")
									{
										alert("This Facebook account is already registered. Please choose another one or sign in with Facebook.");
									}else if(document.registration.hSMediaType.value == "G")
									{
										alert("This Google account is already registered. Please choose another one or sign in with Google.");
									}else if(document.registration.hSMediaType.value == "L")
									{
										alert("This Linked In account is already registered. Please choose another one or sign in with Linked In.");
									}
							    }else
								{
									if(document.registration.hSMediaType.value == "F")
									{
										alert("এই ফেসবুক একাউন্ট দিয়ে ইতিমধ্যে রেজিস্ট্রেশন করা আছে। অন্য একটি আইডি দিন অথবা আগের আইডি দিয়ে সাইন ইন করুন ।  ");
									}else if(document.registration.hSMediaType.value == "G")
									{
										alert("এই গুগল একাউন্ট দিয়ে ইতিমধ্যে রেজিস্ট্রেশন করা আছে। অন্য একটি আইডি দিন অথবা আগের আইডি দিয়ে সাইন ইন করুন ।  ");
									}else if(document.registration.hSMediaType.value == "L")
									{
										alert("এই লিংকডিন  একাউন্ট দিয়ে ইতিমধ্যে রেজিস্ট্রেশন করা আছে। অন্য একটি আইডি দিন অথবা আগের আইডি দিয়ে সাইন ইন করুন ।  ");
									}
								}
							   data_ok = false;
						   }else
						   {
							   hide_global_error_message();
            				   data_ok = true;
						   }
                        },
                        error: function(responseText) {
                            console.log(responseText);

                        }
                    });
					return data_ok;
				
          	}
			//else
			//{
				return data_ok ;
			//}
			
			
		}
	// JavaScript Document