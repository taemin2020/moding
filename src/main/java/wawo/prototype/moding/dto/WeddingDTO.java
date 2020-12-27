package wawo.prototype.moding.dto;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@AllArgsConstructor // 자동으로 모든 먀갸변수를 받는 생성자를 생성
@Getter // Getter 생성
@Setter // Setter 생성
public @Data class WeddingDTO {
	
	private int weddingId;
	private String location;
	private Date weddingDtm;
	private String payYn;
	private Date createDtm;
	private Date updateDtm;
	private String status;
	
	
	
	
	
	public Date getCreateDtm() {
		return createDtm;
	}
	public void setCreateDtm(Date createDtm) {
		this.createDtm = createDtm;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public Date getUpdateDtm() {
		return updateDtm;
	}
	public void setUpdateDtm(Date updateDtm) {
		this.updateDtm = updateDtm;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public Date getWeddingDtm() {
		return weddingDtm;
	}
	public void setWeddingDtm(Date weddingDtm) {
		this.weddingDtm = weddingDtm;
	}
	public String getPayYn() {
		return payYn;
	}
	public void setPayYn(String payYn) {
		this.payYn = payYn;
	}
	public int getWeddingId() {
		return weddingId;
	}
	public void setWeddingId(int weddingId) {
		this.weddingId = weddingId;
	} 
		
	
}
