<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
 <script>
        document.getElementById('payBtn').onclick = function () {
            var amount = document.getElementById('amount').value;
            if (amount) {
                fetch('createOrder', {
                    method: 'POST',
                    headers: { 'Content-Type': 'application/x-www-form-urlencoded' },
                    body: 'amount=' + amount
                })
                .then(response => response.json())
                .then(order => {
                    var options = {
                        "key": "rzp_test_hWS7k6CBHBiHw3", // Razorpay API Key (Public)
                        "amount": "1000", 
                        "currency": "INR",
                        "name": "Nik Company",
                        "description": "Test Transaction",
                        "order_id": RazorpayOrderId, // Pass the order ID returned from server
                        "handler": function (response){
                            alert("Payment Successful! Payment ID: " + response.razorpay_payment_id);
                        },
                        "prefill": {
                            "name": "NIKUL MAHENDRABHAI PARMAR",
                            "email": "nikulparmar1595@gmail.com",
                            "contact": "7600581189"
                        }
                    };
                    var rzp1 = new Razorpay(options);
                    rzp1.open();
                })
                .catch(error => console.error('Error:', error));
            } else {
                alert('Please enter an amount to pay');
            }
        }
    </script>
</head>
<body>
	<!DOCTYPE html>
<html>
<head>
    <title>Razorpay Payment Integration</title>
    <script src="https://checkout.razorpay.com/v1/checkout.js"></script>
</head>
<body>
    <h2>Pay with Razorpay</h2>
    <form action="OrderCreate" id="paymentForm">
        <input type="text" id="amount" name="amount" value="1" placeholder="Amount to Pay" required>
        <button type="button" id="payBtn">Pay Now</button>
    </form>

   
</body>
</html>
	
</body>
</html>