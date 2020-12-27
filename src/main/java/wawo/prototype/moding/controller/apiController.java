package wawo.prototype.moding.controller;

import java.util.List;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import wawo.prototype.moding.dao.MainDAO;
import wawo.prototype.moding.dto.MainDTO;

@RestController
@RequestMapping("/api")
public class apiController extends HttpServlet {
	
	@Autowired
	private MainDAO mainDAO;//MainDAO bean을 자동으로 주입
	
	@PostMapping("/ip")
	public ResponseEntity<String> ip (HttpServletRequest request) {
		// 요청을 보낸 클라이언트의 IP주소를 반환합니다.
		return ResponseEntity.ok(request.getRemoteAddr());
	}
	
	/*
	 * @RequestMapping(value="/summit", method=RequestMethod.POST) public void
	 * summit (HttpServletRequest request) { System.out.println("request : " +
	 * request);
	 * 
	 * }
	 */
	
	


	
	
	
}