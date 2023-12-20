package egovframework.example.test.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import egovframework.example.test.service.OrderService;
import egovframework.example.test.vo.OrderDetail;
import egovframework.example.test.vo.OrderVO;

@Controller
public class OrderController {

	@GetMapping("/check")
	public String showOrderPage() {
	    return "check"; // 이동할 HTML 파일명(주문 페이지)
	}

	
    @Autowired
    private OrderService orderService;

    @PostMapping("/check/test.do")
    public String testPage(@RequestParam(required=false) String orderType, HttpSession session) {
        if (orderType != null) {
            // 받은 주문 유형을 세션에 저장
            session.setAttribute("orderType", orderType);
        }
        return "test";
    }

    @PostMapping("/kiosk/check/test.do")
    public String handleOrder(@RequestParam String orderDetails, @RequestParam double total, HttpSession session) {
        // orderDetails 파싱하여 메뉴, 수량 추출
    	String[] orders = orderDetails.split("\n"); // 줄바꿈 문자로 주문항목 구분

        // OrderVO 객체 생성
        OrderVO orderVO = new OrderVO();
        orderVO.setOrderType((String) session.getAttribute("orderType"));

        List<OrderDetail> orderDetailList = new ArrayList<>();

        for (String order : orders) {
        	String[] detail = order.split(":"); // 콜론으로 메뉴 이름과 수량 구분
            String menuName = detail[0];
            int quantity = Integer.parseInt(detail[1]);

            // OrderDetail 객체 생성
            OrderDetail orderDetail = new OrderDetail();
            orderDetail.setMenuName(menuName);
            orderDetail.setQuantity(quantity);
            orderDetailList.add(orderDetail);
        }

        // OrderVO에 OrderDetail 리스트 설정
        orderVO.setOrderDetails(orderDetailList);

        // DB에 저장
        orderService.insertOrder(orderVO);

        return "redirect:/check";  // 주문 처리 후 리다이렉트할 페이지
    }
}
