	Objective:
	1) Write an endpoint that exposes the list of suported domain objects.
		ie.. on hitting the server root should give result like this
			{
				since : "2012-10-06 04:00:00",
				last_modified : "2012-10-06 04:00:00",
				services : [
						{ type : "consumer", since : "2012-10-06 04:00:00" },
						{ type : "account", since : "2012-10-06 04:00:00" },
						{ type : "reports", since : "2012-10-06 04:00:00" }
					]
				links : [
							{ href : "consumer", rel : "/consumer" },
							{ href : "account", rel : "/account" },
							{ href : "reports", rel : "/reports" },
							{ href : "self", rel : "." }
						]
			}
	 2) Write an endpoint for account
	 		ie.. on browsing account the sever
	 			request has a time stamp in the header and we provide the right version for the given timestamp

	 			{
	 				since : "2012-10-06 04:00:00",
					last_modified : "2012-10-06 04:00:00",
					available_versions: [ { rel : '/meta/company/1.0', since : '2012-10-06 14:00:00' } ],
					description : "",
					meta : {
						name : "Company",
						media_type : 'vnd.company.v1+json',
						version : '1.0'
						fields : [
							{ name : 'title', type : 'string', length : '30', required : 'true' },
							{ name : 'tan_number', type : 'string', length : '10', required : 'true' },
							{ name : 'address', type : 'vnd.address.v1', length : '30', required : 'true' }
						],
						links : [
									{ href : "list", rel : "/company/list" },
									{ href : "create", rel : "/company/create", method : 'put' },
									{ href : "self", rel : "/meta/company/1.0" }
								]
					},
					links : [
								{ href : "self", rel : "/company" }
							]

	 		   }
