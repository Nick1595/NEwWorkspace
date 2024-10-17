
package com.razorpay;

import java.io.IOException;


import com.razorpay.*;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/OrderCreation")
public class OrderCreation extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public OrderCreation() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RazorpayClient client=null;
		String orderId=null;
		try {
			client=new RazorpayClient("rzp_test_hWS7k6CBHBiHw3","K0W1DGi9tShYb7T86ym2r1tT");
			JSONObject options=new JSONObject();
			options.put("amount", "100");
			options.put("currency", "INR");
			options.put("receipt", "zxr456");
			options.put("payment_capture", true);
			Order order=client.Orders.create(options);
			orderId=order.get("id");
		} catch (Exception e) {
			e.printStackTrace();
		}
		response.getWriter().append(orderId);
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RazorpayClient client=null;
		try {
			client=new RazorpayClient("rzp_test_pJ8ElvmChXIyZC","rzp_test_pJ8ElvmChXIyZC");
			JSONObject options=new JSONObject();
			options.put("razorpay_payment_id",request.getParameter("razorpay_payment_id"));
			options.put("razorpay_order_id",request.getParameter("razorpay_order_id"));
			options.put("razorpay_signature",request.getParameter("razorpay_signature"));
			boolean SigRes=Utils.verifyPaymentSignature(options,"Secret");
			if(SigRes)
			{
				response.getWriter().append("Payment Successfull");
				
				
				
				
				
			}
			else
			{
				response.getWriter().append("Payment Failed");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
