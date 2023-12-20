package egovframework.example.test.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import egovframework.example.test.Dao.OrderDAO;
import egovframework.example.test.vo.OrderVO;
import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;

@Service("orderService")
public class OrderService extends EgovAbstractServiceImpl{
    @Resource
    private OrderDAO orderDAO;

    public void insertOrder(OrderVO order) {
    	orderDAO.insertOrder(order);
    }
    
    public void updateOrderType(String orderType, String orderId) {
        orderDAO.updateOrderType(orderType, orderId);
    }

    public void updateOrderPrice(String orderId, int price) {
        orderDAO.updateOrderPrice(orderId, price);
    }
}
