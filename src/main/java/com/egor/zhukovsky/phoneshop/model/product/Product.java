package com.egor.zhukovsky.phoneshop.model.product;

import com.egor.zhukovsky.phoneshop.model.entity.Item;
import com.egor.zhukovsky.phoneshop.model.price.PriceHistory;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.json.JsonMapper;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Transient;
import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Currency;
import java.util.Objects;

@Entity
@Table(name = "phone")
public class Product extends Item implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Column(name = "code")
    private String code;
    @Column(name = "description")
    private String description;
    /**
     * null means there is no price because the product is outdated or new
     */
    @Column(name = "price")
    private BigDecimal price;
    /**
     * can be null if the price is null
     */
    @Column(name = "currency")
    private Currency currency;
    @Column(name = "stock")
    private int stock;
    @Column(name = "imageUrl")
    private String imageUrl;
//    @OneToOne
@Transient
    private MainСharacteristics mainСharacteristics;
//    @OneToOne
@Transient
    private CameraСharacteristics cameraСharacteristics;
//    @OneToOne
@Transient
    private OtherСharacteristics otherСharacteristics;
    @Transient
    private PriceHistory priceHistory;

    public Product() {
    }

    public Product(String code, String description, BigDecimal price, Currency currency, int stock, String imageUrl, MainСharacteristics mainСharacteristics, CameraСharacteristics cameraСharacteristics, OtherСharacteristics otherСharacteristics) {
        this.code = code;
        this.description = description;
        this.price = price;
        this.currency = currency;
        this.stock = stock;
        this.imageUrl = imageUrl;
        this.mainСharacteristics = mainСharacteristics;
        this.cameraСharacteristics = cameraСharacteristics;
        this.otherСharacteristics = otherСharacteristics;
    }

    public Product(Long id, String code, String description, BigDecimal price, Currency currency, int stock, String imageUrl) {
        this.id = id;
        this.code = code;
        this.description = description;
        this.price = price;
        this.currency = currency;
        this.stock = stock;
        this.imageUrl = imageUrl;
    }

    public Product(Long id, String code, String description, BigDecimal price, int stock, String imageUrl) {
        this.id = id;
        this.code = code;
        this.description = description;
        this.price = price;
        this.stock = stock;
        this.imageUrl = imageUrl;
    }

    public Product(String code, String description, BigDecimal price, Currency currency, int stock, String imageUrl) {
        this.code = code;
        this.description = description;
        this.price = price;
        this.currency = currency;
        this.stock = stock;
        this.imageUrl = imageUrl;
    }

    public Product(String code, String description, BigDecimal price, Currency currency, int stock, String imageUrl, PriceHistory priceHistory) {
        ObjectMapper mapper = JsonMapper.builder().findAndAddModules().build();
        this.code = code;
        this.description = description;
        this.price = price;
        this.currency = Currency.getInstance(String.valueOf(currency));
        this.stock = stock;
        this.imageUrl = imageUrl;
        this.priceHistory = priceHistory;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    public Currency getCurrency() {
        return currency;
    }

    public void setCurrency(Currency currency) {
        this.currency = currency;
    }

    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }

    public String getImageUrl() {
        return imageUrl;
    }

    public void setImageUrl(String imageUrl) {
        this.imageUrl = imageUrl;
    }

    public PriceHistory getPriceHistory() {
        return priceHistory;
    }

    public void setPriceHistory(PriceHistory priceHistory) {
        this.priceHistory = priceHistory;
    }

    public MainСharacteristics getMainСharacteristics() {
        return mainСharacteristics;
    }

    public void setMainСharacteristics(MainСharacteristics mainСharacteristics) {
        this.mainСharacteristics = mainСharacteristics;
    }

    public CameraСharacteristics getCameraСharacteristics() {
        return cameraСharacteristics;
    }

    public void setCameraСharacteristics(CameraСharacteristics cameraСharacteristics) {
        this.cameraСharacteristics = cameraСharacteristics;
    }

    public OtherСharacteristics getOtherСharacteristics() {
        return otherСharacteristics;
    }

    public void setOtherСharacteristics(OtherСharacteristics otherСharacteristics) {
        this.otherСharacteristics = otherСharacteristics;
    }

    @Override
    public String toString() {
        return "Product{" +
                "id=" + id +
                ", code='" + code + '\'' +
                ", description='" + description + '\'' +
                ", price=" + price +
                ", currency=" + currency +
                ", stock=" + stock +
                ", imageUrl='" + imageUrl + '\'' +
                ", priceHistory=" + priceHistory +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Product product = (Product) o;
        return stock == product.stock
                && Objects.equals(id, product.id)
                && Objects.equals(code, product.code)
                && Objects.equals(description, product.description)
                && Objects.equals(price, product.price)
                && Objects.equals(currency, product.currency)
                && Objects.equals(imageUrl, product.imageUrl)
                && Objects.equals(priceHistory, product.priceHistory);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, code, description, price, currency, stock, imageUrl, priceHistory);
    }
}