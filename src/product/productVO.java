package product;

public class productVO {
    private int productID;
    private String Oid;
    private int productNumber;
    private String productName;

    public int getProductID() {
        return this.productID;
    }

    public void setProductID(int productID) {
        this.productID = productID;
    }

    public String getOid() {
        return this.Oid;
    }

    public void setOid(String Oid) {
        this.Oid = Oid;
    }

    public int getProductNumber() {
        return this.productNumber;
    }

    public void setProductNumber(int productNumber) {
        this.productNumber = productNumber;
    }

    public String getProductName() {
        return this.productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

}