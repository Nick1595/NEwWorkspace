package com.model;

public class PlacedOrderModel 
	{
		int id,p_id;
		String p_name,p_price,p_dec,p_image,email,status;
		public int getId() {
			return id;
		}
		public void setId(int id) {
			this.id = id;
		}
		public int getP_id() {
			return p_id;
		}
		public void setP_id(int p_id) {
			this.p_id = p_id;
		}
		public String getP_name() {
			return p_name;
		}
		public void setP_name(String p_name) {
			this.p_name = p_name;
		}
		public String getP_price() {
			return p_price;
		}
		public void setP_price(String p_price) {
			this.p_price = p_price;
		}
		public String getP_dec() {
			return p_dec;
		}
		public void setP_dec(String p_dec) {
			this.p_dec = p_dec;
		}
		public String getP_image() {
			return p_image;
		}
		public void setP_image(String p_image) {
			this.p_image = p_image;
		}
		public String getEmail() {
			return email;
		}
		public void setEmail(String email) {
			this.email = email;
		}
		public String getStatus() {
			return status;
		}
		public void setStatus(String status) {
			this.status = status;
		}
	}
