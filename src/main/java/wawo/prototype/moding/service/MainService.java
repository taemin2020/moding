package wawo.prototype.moding.service;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import lombok.extern.slf4j.Slf4j;
import wawo.prototype.moding.dao.MainDAO;

@Service
@Slf4j
public class MainService {
	/*
	 * private String uploadPath = "/modingFile/";
	 */
	
	private String uploadPath = "C:\\upload\\";
	 
	@Autowired
	private MainDAO mainDAO;//MainDAO bean을 자동으로 주입
    
    
    
    public boolean uploadFile(MultipartFile[] uploadFiles, Map<String, Object> param) throws IOException {
        
        Map<String,Object>fileMap=new HashMap<String,Object>();
        
        for(MultipartFile multipartFile : uploadFiles) {
            try {
                String fileName=generateFileName(multipartFile);
            
                File tmp=new File(uploadPath+fileName);
                multipartFile.getResource();
                fileMap.put("guestId", param.get("guestId"));
                fileMap.put("attachNm", fileName);
                fileMap.put("type", multipartFile.getContentType());
                fileMap.put("size", multipartFile.getSize());

                
                
                System.out.println("fileMap :"+fileMap);
                multipartFile.transferTo(tmp);
                mainDAO.insertFiles(fileMap);
            }
            catch(Exception e){
                return false;
            }
        }
        return true;
 
    }
    
    private String generateFileName(MultipartFile multipartFile) {
        Calendar cal=Calendar.getInstance();
        Date date=cal.getTime();
        String fileName=new SimpleDateFormat("yyyyMMdd").format(date)+"_"+multipartFile.getOriginalFilename();
        return fileName;
    }

	public Map<String, Object> getWeddingInfo(Map<String, Object> param) {
		// TODO Auto-generated method stub
		
		return mainDAO.getWeddingInfo(param);
	}

	public Map<String, Object> getGroomInfo(Map<String, Object> param) {
		// TODO Auto-generated method stub
		return mainDAO.getGroomInfo(param);
	}
	
	public Map<String, Object> getBrideInfo(Map<String, Object> param) {
		// TODO Auto-generated method stub
		return mainDAO.getBrideInfo(param);
	}

	public List<Map<String, Object>> getSlidePic(String weddingId) {
		// TODO Auto-generated method stub
		return mainDAO.getSlidePic(weddingId);
	}

	public int insertGuestInfo(Map<String, Object> param) {
		Map<String, Object> retMap = new HashMap();
		
		mainDAO.insertGuestInfo(param);
		//마지막 게스트 id를 가져와서 방금 인서트한 값의 키 값을 가지고온다
		int a = mainDAO.getGuestId();
		
		
		return a;
	}

	public boolean checkHost(Map<String, Object> param) {
		// TODO Auto-generated method stub
		int a = mainDAO.checkHost(param);
		if(a == 1) {
			return true;			
		}else {
			return false;
		}
	}

	public Map<String, Object> getAccountInfo(Map<String, Object> param) {
		// TODO Auto-generated method stub
		if(param.get("selectGroom").equals("Y")) {
			return mainDAO.getGroomAccountInfo(param);
		}else {
			return mainDAO.getBrideAccountInfo(param);
		}
		
		
	}

	public List<Map<String, Object>> getSharePic(String weddingId) {
		// TODO Auto-generated method stub
	return mainDAO.getSharePic(weddingId);
	}

   
    
    
}
