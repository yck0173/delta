package egovframework.example.test.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;
import org.springframework.jdbc.core.PreparedStatementCreator;
import org.springframework.stereotype.Repository;

import egovframework.example.test.vo.OrderDetail;
import egovframework.example.test.vo.OrderVO;

@Repository
public class OrderDAOImpl implements OrderDAO {

    private final JdbcTemplate jdbcTemplate;

    public OrderDAOImpl(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    @Transactional
    @Override
    public void insertOrder(OrderVO order) {
        String sql = "INSERT INTO orders (order_type) VALUES (?)";
        KeyHolder keyHolder = new GeneratedKeyHolder();

        jdbcTemplate.update(
            new PreparedStatementCreator() {
                public PreparedStatement createPreparedStatement(Connection connection) throws SQLException {
                    PreparedStatement ps = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
                    ps.setString(1, order.getOrderType());
                    return ps;
                }
            },
            keyHolder);

        int orderId = keyHolder.getKey().intValue();

        List<OrderDetail> orderDetails = order.getOrderDetails();
        for (OrderDetail orderDetail : orderDetails) {
            String detailSql = "INSERT INTO order_details (order_id, menu_name, size, quantity) VALUES (?, ?, ?, ?)";
            jdbcTemplate.update(detailSql, orderId, orderDetail.getMenuName(), orderDetail.getSize(), orderDetail.getQuantity());
        }
    }

    @Override
    public void updateOrderType(String id, String orderType) {
        String sql = "UPDATE orders SET order_type = ? WHERE id = ?";
        jdbcTemplate.update(sql, orderType, id);
    }

    @Override
    public void updateOrderPrice(String id, int price) {
        String sql = "UPDATE orders SET price = ? WHERE id = ?";
        jdbcTemplate.update(sql, price, id);
    }
}
