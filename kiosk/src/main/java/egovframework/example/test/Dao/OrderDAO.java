package egovframework.example.test.Dao;

import egovframework.example.test.vo.OrderVO;

public interface OrderDAO {
	void updateOrderType(String orderId, String orderType);
    void insertOrder(OrderVO order);
    void updateOrderPrice(String orderId, int price);
}
