# Online CEB Meter Reader System's Backend

## .env Configuration.

Config the API Host in next.config.js file.<br>
example :=   env:{<br>
&emsp;&emsp; API_HOST:'http://127.0.0.1:8000'<br>
}

## DataBase Configuration.

Create a DataBase called cebmr_sys and run 'php artisan migrate'.

run 'php artisan serve' for start the Server.

## API End Points
* route : */api/login<br>
&emsp;&emsp;Methods : POST<br>
&emsp;&emsp;For Authentication<br>
&emsp;&emsp;Parameters : email / password<br>

* route : */api/register<br>
&emsp;&emsp;Methods : POST<br>
&emsp;&emsp;For Register an user<br>
&emsp;&emsp;Parameters : email / name /password<br>

* route : */api/me<br>
&emsp;&emsp;Methods : GET<br>
&emsp;&emsp;For get a Reader's Account Information.<br>
&emsp;&emsp;Headers : Authorization: bearer ACCESS_TOKEN<br>

* route : */api/customer<br>
&emsp;&emsp;Methods : POST<br>
&emsp;&emsp;For Register a new Customer Account.<br>
&emsp;&emsp;Parameters : customer_name / account_number<br>
&emsp;&emsp;Headers : Authorization: bearer ACCESS_TOKEN<br>

* route : */api/customer/check/{ACCOUNT_NUMBER}<br>
&emsp;&emsp;Methods : GET<br>
&emsp;&emsp;For Register a new Customer Account.<br>
&emsp;&emsp;Headers : Authorization: bearer ACCESS_TOKEN<br>

* route : */api/bill<br>
&emsp;&emsp;Methods : POST<br>
&emsp;&emsp;For Save a new Bill.<br>
&emsp;&emsp;Parameters : account_number / date / id / units<br>
&emsp;&emsp;Headers : -H Authorization: bearer ACCESS_TOKEN<br>

* route : */api/bill/{ACCOUNT_NUMBER}<br>
&emsp;&emsp;Methods : GET<br>
&emsp;&emsp;For Get the Bills.<br>
&emsp;&emsp;Parameters : offset / limit<br>