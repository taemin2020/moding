package wawo.prototype.moding.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@AllArgsConstructor // 자동으로 모든 먀갸변수를 받는 생성자를 생성
@Getter // Getter 생성
@Setter // Setter 생성
public @Data class MainDTO {
	
	private String name;
	private String phone;
	private String terms;
	private String content;
	private String selectGroom;
	private String selectBride;
	private String relation;
	private String deRelation; 
		
	
	
	public String getName() {
	  return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
    
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getTerms() {
		return terms;
	}
	public void setTerms(String terms) {
		this.terms = terms;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getSelectGroom() {
		return selectGroom;
	}
	public void setSelectGroom(String selectGroom) {
		this.selectGroom = selectGroom;
	}
	public String getSelectBride() {
		return selectBride;
	}
	public void setSelectBride(String selectBride) {
		this.selectBride = selectBride;
	}
	public String getRelation() {
		return relation;
	}
	public void setRelation(String relation) {
		this.relation = relation;
	}
	public String getDeRelation() {
		return deRelation;
	}
	public void setDeRelation(String deRelation) {
		this.deRelation = deRelation;
	}
}
