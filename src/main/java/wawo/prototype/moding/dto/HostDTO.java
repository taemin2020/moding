package wawo.prototype.moding.dto;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@AllArgsConstructor // 자동으로 모든 먀갸변수를 받는 생성자를 생성
@Getter // Getter 생성
@Setter // Setter 생성
public @Data class HostDTO {
	
	private int hostId;
	private int weddingId;
	private String hostNm;
	private String hostType;
	private String fatherNm;
	private String motherNm;
	private String orderNm;
	private String profileAtt;
	private Date createDtm;
	private Date updateDtm;
	private String status;
	
	
	
	public String getHostNm() {
		return hostNm;
	}
	public void setHostNm(String hostNm) {
		this.hostNm = hostNm;
	}
	public String getHostType() {
		return hostType;
	}
	public void setHostType(String hostType) {
		this.hostType = hostType;
	}
	public String getMotherNm() {
		return motherNm;
	}
	public void setMotherNm(String motherNm) {
		this.motherNm = motherNm;
	}
	public String getFatherNm() {
		return fatherNm;
	}
	public void setFatherNm(String fatherNm) {
		this.fatherNm = fatherNm;
	}
	public String getOrderNm() {
		return orderNm;
	}
	public void setOrderNm(String orderNm) {
		this.orderNm = orderNm;
	}
	public String getProfileAtt() {
		return profileAtt;
	}
	public void setProfileAtt(String profileAtt) {
		this.profileAtt = profileAtt;
	}
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
	public int getHostId() {
		return hostId;
	}
	public void setHostId(int hostId) {
		this.hostId = hostId;
	}
	public int getWeddingId() {
		return weddingId;
	}
	public void setWeddingId(int weddingId) {
		this.weddingId = weddingId;
	} 
		
	
}
