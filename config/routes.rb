Rails.application.routes.draw do

	get	"signup"  =>  "user#new"
	post "signup" =>  "user#create"
	get "signedup" => "user#signedup"
	get "login"   =>  "user#login_form"
	post "login"  =>  "user#login"
	get "loggedin" => "user#loggedin"


	get "/" => "home#top"


end
