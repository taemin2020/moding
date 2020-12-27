package wawo.prototype.moding.dto;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@AllArgsConstructor // 자동으로 모든 먀갸변수를 받는 생성자를 생성
@Getter // Getter 생성
@Setter // Setter 생성
public @Data class GuestDTO {
	
	private int guestId;
	private int hostId;
	private String guestNm;
	private String relationCd;
	private String relationNm;
	private String detailRelation;
	private String phone;
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
	public int getGuestId() {
		return guestId;
	}
	public void setGuestId(int guestId) {
		this.guestId = guestId;
	}
	public int getHostId() {
		return hostId;
	}
	public void setHostId(int hostId) {
		this.hostId = hostId;
	}
	public String getGuestNm() {
		return guestNm;
	}
	public void setGuestNm(String guestNm) {
		this.guestNm = guestNm;
	}
	public String getRelationCd() {
		return relationCd;
	}
	public void setRelationCd(String relationCd) {
		this.relationCd = relationCd;
	}
	public String getRelationNm() {
		return relationNm;
	}
	public void setRelationNm(String relationNm) {
		this.relationNm = relationNm;
	}
	
	public String getDetailRelation() {
		return detailRelation;
	}
	public void setDetailRelation(String detailRelation) {
		this.detailRelation = detailRelation;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getPayYn() {
		return payYn;
	}
	public void setPayYn(String payYn) {
		this.payYn = payYn;
	}
 
		
	
}
