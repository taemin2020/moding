package wawo.prototype.moding.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import wawo.prototype.moding.dao.MainDAO;
import wawo.prototype.moding.dto.MainDTO;
import wawo.prototype.moding.service.MainService;

@Controller
@MapperScan(basePackages="wawo.prototype.moding.dao")//탐색할 패키시 설정
public class MainController {
	
	@Autowired
	private MainService mainService;//MainService bean을 자동으로 주입
	
	//welcome page 설정하는 부분	
	@RequestMapping("/")
	public ModelAndView goIndex(ModelAndView mv) throws Exception{
		mv.setViewName("input");
	
		return mv;
	}
	
	@RequestMapping(value = "/checkHost")
	@ResponseBody
	public Map<String,Object>  checkHost(@RequestParam Map<String, Object> param) throws Exception {
		Map<String,Object> resultMap=new HashMap<String,Object>();
		boolean result = mainService.checkHost(param);		
		
		if(result) {
            resultMap.put("result", "success");
        }else {
            resultMap.put("result", "fail");
        }
	   	
		return resultMap;
	}
	
	@RequestMapping(value = "/index")
	public String index(Model model, HttpServletRequest request, @RequestParam Map<String, Object> param) throws Exception {
		
		
		Map<String, Object> weddingInfo = mainService.getWeddingInfo(param);   	
	   	List<Map<String, Object>> slidePic = mainService.getSlidePic(weddingInfo.get("weddingId"));
	   	
	   	model.addAttribute("weddingInfo", weddingInfo);
	   	model.addAttribute("slidePic", slidePic);
	   	

		return "index";
	}
	
	@RequestMapping(value = "/goMain")
	public String goMain(Model model, HttpServletRequest request, @RequestParam Map<String, Object> param) throws Exception {
		
		
		Map<String, Object> weddingInfo = mainService.getWeddingInfo(param);   	
	   	List<Map<String, Object>> slidePic = mainService.getSlidePic(weddingInfo.get("weddingId"));
	   	
	   	model.addAttribute("weddingInfo", weddingInfo);
	   	model.addAttribute("slidePic", slidePic);
	   	
		System.out.println(param);
		return "main";
	}
	
	
	
	/*
	 * @RequestMapping("/main") public ModelAndView main(ModelAndView mv) throws
	 * Exception { mv.setViewName("main");
	 * 
	 * Map<String, Object> weddingInfo = mainService.getWeddingInfo(); Map<String,
	 * Object> groomInfo = mainService.getGroomInfo(); Map<String, Object> brideInfo
	 * = mainService.getBrideInfo();
	 * 
	 * List<Map<String, Object>> slidePic = mainService.getSlidePic();
	 * 
	 * 
	 * mv.addObject("weddingInfo", weddingInfo); mv.addObject("groomInfo",
	 * groomInfo); mv.addObject("brideInfo", brideInfo); mv.addObject("slidePic",
	 * slidePic);
	 * 
	 * return mv; }
	 */
	
	@RequestMapping("/detail")
	public String detail(Model model, HttpServletRequest request, @RequestParam Map<String, Object> param) throws Exception { 
	   	
	   	Map<String, Object> groomInfo = mainService.getGroomInfo(param);
	   	Map<String, Object> brideInfo = mainService.getBrideInfo(param);
	   	
	   	
	   	model.addAttribute("groomInfo", groomInfo);
	   	model.addAttribute("brideInfo", brideInfo);
		System.out.println(param);
		return "detail";
	}
	
	private ModelAndView handleException(){
        return new ModelAndView("error.jsp");
	}
	
	@RequestMapping(value = "/submit")
    @ResponseBody
	public Map<String,Object> submit(@RequestParam Map<String, Object> param) throws Exception {
		
		Map<String,Object> resultMap=new HashMap<String,Object>();
         int a = mainService.insertGuestInfo(param);
        
         resultMap.put("weddingId", param.get("weddingId"));
         resultMap.put("guestId", Integer.toString(a));

        return resultMap;
    }
	
	
	@RequestMapping("/fileUpload")
	@ResponseBody
    public Map<String,Object> uploadFiles(MultipartHttpServletRequest req, MultipartFile[] uploadFiles, @RequestParam Map<String, Object> param) throws IOException{
    
        Map<String,Object> resultMap=new HashMap<String,Object>();       
        boolean fileUpload= mainService.uploadFile(uploadFiles, param);

        if(fileUpload) {
            resultMap.put("weddingId", param.get("weddingId"));
            resultMap.put("result", "success");
        }else {
            resultMap.put("result", "fail");
        }
        
        return resultMap;
        
    }
	
	
	@RequestMapping("/result")
	public String result(Model model, HttpServletRequest request, @RequestParam Map<String, Object> param) throws Exception { 
	   	
	   	return "result";
	}
	
	
	
	
}