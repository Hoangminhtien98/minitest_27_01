package service;

import model.Product;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.Properties;

public class ProductService {
    private final static ArrayList<Product> products;

    static {
        products = new ArrayList<>();
        products.add(new Product(1, "Coca", 10000, 1, "Nuoc Ngot"));
        products.add(new Product(2, "Aqua", 5000, 1, "Nuoc loc"));
        products.add(new Product(3, "Orange", 10000, 1, "Hoa Qua"));
        products.add(new Product(4, "Chocolate", 15000, 1, "Keo"));
    }

    public Product getProduct(int id) {
        for (Product product : products) {
            if (product.getId() == id) {
                return product;
            }
        }
        return null;
    }

    public void createProduct(Product product) {
        products.add(product);
    }

    public void deleteProduct(Product product) {
        products.remove(product);
    }

    public void editProduct(int index, Product product) {
        products.set(index, product);
    }

    public ArrayList<Product> getProducts(){
        return products;
    }
    public ArrayList<Product> searchProductByName(String name) {
        ArrayList<Product> productList = new ArrayList<>();
        for (Product product: products) {
            if (product.getName().equals(name)) {
                productList.add(product);
            }
        }
        return productList;
    }
    public ArrayList<Product> sortIncrease() {
        ArrayList<Product> sortIncreaseList = new ArrayList<>(products);
        sortIncreaseList.sort(Comparator.comparingDouble(Product::getPrice));
        return sortIncreaseList;
    }
    public ArrayList<Product> sortDecrease() {
        ArrayList<Product> sortDecreaseList = new ArrayList<>(products);
        sortDecreaseList.sort(Comparator.comparing(Product::getPrice).reversed());
        return sortDecreaseList;
    }
}
