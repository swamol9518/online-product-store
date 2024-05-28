package OnlineProduct;

import java.io.Serializable;

@SuppressWarnings("serial")
public class CartBean implements Serializable  
{
  private String pcode,pname;
  private int qty;
  private float price;
public String getPcode() {
	return pcode;
}
public void setPcode(String pcode) {
	this.pcode = pcode;
}
public String getPname() {
	return pname;
}
public void setPname(String pname) {
	this.pname = pname;
}
public int getQty() {
	return qty;
}
public void setQty(int qty) {
	this.qty = qty;
}
public float getPrice() {
	return price;
}
public void setPrice(float price) {
	this.price = price;
}
  
     
}
