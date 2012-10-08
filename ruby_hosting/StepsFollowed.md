project creation
	rails new ruby_hosting
	cd ruby_hosting
	bundle install
	rake db:create

checking...
	rails server
	browse http://localhost:3000/

creating default home
	rails generate controller home index
	rm public/index.html
	--add root :to => "home#index" to routes.rb

creating accounts
	rails generate model Address line1:string line2:string line3:string street:string location:string city:string state:string country:string postcode:string
	created accounts by following address example
	referenced address in accounts by following :url => http://guides.rubyonrails.org/migrations.html

creating meta models
	rails generate model MetaServices
	rails generate model MetaModel name:string description:text media_type
	rails generate model Version name:string
	rails generate model MetaProperty name:string description:text type:string nullable:boolean
	rails generate model MetaBehaviour name:string description:text method:string path:string

	



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
									{ href : "create", rel : "/company/create", method : 'post' },
									{ href : "self", rel : "/meta/company/1.0" }
								]
					},
					links : [
								{ href : "self", rel : "/company" }
							]


	
