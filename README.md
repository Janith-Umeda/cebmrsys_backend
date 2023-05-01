# Online CEB Meter Reader System

## .env Configuration.

Config the API Host in next.config.js file.<br>
example :=   env:{<br>
&emsp;&emsp; API_HOST:'http://api.cebmr'<br>
}

## DataBase Configuration.

Create a DataBase called cebmr_sys and import the sql File.

## API End Points
* route : */auth<br>
&emsp;&emsp;For Authentication<br>
&emsp;&emsp;Methods : POST<br>
&emsp;&emsp;Parameters : email / psw<br>

* route : */me<br>
&emsp;&emsp;For get a Reader's Account Information.<br>
&emsp;&emsp;Methods : GET<br> 
&emsp;&emsp;Parameters : userid<br>

* route : */checkAccount<br>
&emsp;&emsp;For check a Customer Account.<br>
&emsp;&emsp;Methods : GET<br>
&emsp;&emsp;Parameters : accno<br>

* route : */bill<br>
&emsp;&emsp;For Read and Create Bills<br>
&emsp;&emsp;Methods : GET / POST<br>
&emsp;&emsp;GET Parameters : accountNumber / limit / offset<br>
&emsp;&emsp;POST Parameters : accountNo / uid / units / date<br>