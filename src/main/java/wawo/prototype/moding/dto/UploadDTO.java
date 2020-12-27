package wawo.prototype.moding.dto;


import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class UploadDTO {
	
	private String extraField;
	private String customField;
	private MultipartFile[] files;
    
}
