$(document).ready(function(){
	   $('#Login').bootstrapValidator({
		   excluded: [':disabled', ':hidden', ':not(:visible)'],
	        feedbackIcons: {
	            valid: 'glyphicon glyphicon-ok',
	            invalid: 'glyphicon glyphicon-remove',
	            validating: 'glyphicon glyphicon-refresh'
	        },
	        live: 'enabled',
	        message: 'This value is not valid',
	        fields: {
	        	userName: {
			container:"#usernamemsg",
	                feedbackIcons: true,
	                validators: {
	                    notEmpty: {
	                        message: badUserName
	                    }
	                    	                }
	            },
	            password: {
			container:"#passwordmsg",
	            	feedbackIcons: true,
	                validators: {
	            	 notEmpty: {
	                		message: badPassword
	            		}	                }
	            }
	        }
	   });
	
});

