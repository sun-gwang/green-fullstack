package sub1;

public class Apple {
	
	private String country;
	private int price;
	
	public Apple(String country, int price) {
		this.country = country;
		this.price = price;
		
	}
	
	@Override
	public String toString() {
		
		return "Apple [hashCode ="+hashCode()+",country=" +
                country + ", price=" + price + "]";
	}

}
