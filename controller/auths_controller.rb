
require './config/db'

class AuthsController < Sinatra::Base

    post '/auths/applogin' do

        data = JSON.parse(request.body.read)

        email = data['email']
        passcode = data['passcode']

        sql = "SELECT urole FROM appusers WHERE email='#{email}'
        AND passcode ='#{passcode}'"

       response = DBconnection.getdbconnection.execute(sql)

       json response.to_a

    end

    post '/auths/adduser' do

        data = JSON.parse(request.body.read)
        email = data['email']

        checkemailexists = isemailexists(email)
        checkemailexists == 1 ? json({ "status" => 200, "message" => "Email Exists" }) : "No User Found"

    end

    def isemailexists(email)

        sql = "SELECT 1 FROM appusers WHERE email= '#{email}'"
        result = DBconnection.getdbconnection.execute(sql)

        numberofrows = result.count

    end

    get '/demoget' do

        response = {"status" => 200, "message" => "HI"}
        json response.to_a
    end


    end
