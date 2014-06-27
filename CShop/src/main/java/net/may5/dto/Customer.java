package net.may5.dto;

import java.sql.Date;

public class Customer {

	private String cstId;					// 회원아이디
	private String cstName;					// 이름
	private String cstPassword;				// 비밀번호
	private String zipCode;					// 우편정보.우편코드
	private String cstDetailAddress;		// 상세주소
	private String cstCP;					// 휴대폰번호
	private String cstEmail;				// E-mail
	private String cstGender;				// 성별
	private Date cstBirthday;				// 생일
	private String cstEmailAgreement;		// E-mail 수신 동의
	private String cstQnAPermission;		// Q&A 쓰기
	private String cstEvaluationPermission;	// 평가 쓰기
	private Date cstJoinDate;				// 가입일
	private Date cstLastVisitDate;			// 최종방문일
	private int cstPostCount;				// 게시글 수
	private String levelCode;				// 고객등급.등급코드
	private String cstCode;					// 회원코드
	
	public String getCstId() {
		return cstId;
	}
	public void setCstId(String cstId) {
		this.cstId = cstId;
	}
	public String getCstName() {
		return cstName;
	}
	public void setCstName(String cstName) {
		this.cstName = cstName;
	}
	public String getCstPassword() {
		return cstPassword;
	}
	public void setCstPassword(String cstPassword) {
		this.cstPassword = cstPassword;
	}
	public String getZipCode() {
		return zipCode;
	}
	public void setZipCode(String zipCode) {
		this.zipCode = zipCode;
	}
	public String getCstDetailAddress() {
		return cstDetailAddress;
	}
	public void setCstDetailAddress(String cstDetailAddress) {
		this.cstDetailAddress = cstDetailAddress;
	}
	public String getCstCP() {
		return cstCP;
	}
	public void setCstCP(String cstCP) {
		this.cstCP = cstCP;
	}
	public String getCstEmail() {
		return cstEmail;
	}
	public void setCstEmail(String cstEmail) {
		this.cstEmail = cstEmail;
	}
	public String getCstGender() {
		return cstGender;
	}
	public void setCstGender(String cstGender) {
		this.cstGender = cstGender;
	}
	public Date getCstBirthday() {
		return cstBirthday;
	}
	public void setCstBirthday(Date cstBirthday) {
		this.cstBirthday = cstBirthday;
	}
	public String getCstEmailAgreement() {
		return cstEmailAgreement;
	}
	public void setCstEmailAgreement(String cstEmailAgreement) {
		this.cstEmailAgreement = cstEmailAgreement;
	}
	public String getCstQnAPermission() {
		return cstQnAPermission;
	}
	public void setCstQnAPermission(String cstQnAPermission) {
		this.cstQnAPermission = cstQnAPermission;
	}
	public String getCstEvaluationPermission() {
		return cstEvaluationPermission;
	}
	public void setCstEvaluationPermission(String cstEvaluationPermission) {
		this.cstEvaluationPermission = cstEvaluationPermission;
	}
	public Date getCstJoinDate() {
		return cstJoinDate;
	}
	public void setCstJoinDate(Date cstJoinDate) {
		this.cstJoinDate = cstJoinDate;
	}
	public Date getCstLastVisitDate() {
		return cstLastVisitDate;
	}
	public void setCstLastVisitDate(Date cstLastVisitDate) {
		this.cstLastVisitDate = cstLastVisitDate;
	}
	public int getCstPostCount() {
		return cstPostCount;
	}
	public void setCstPostCount(int cstPostCount) {
		this.cstPostCount = cstPostCount;
	}
	public String getLevelCode() {
		return levelCode;
	}
	public void setLevelCode(String levelCode) {
		this.levelCode = levelCode;
	}
	public String getCstCode() {
		return cstCode;
	}
	public void setCstCode(String cstCode) {
		this.cstCode = cstCode;
	}
	@Override
	public String toString() {
		return "Customer [cstId=" + cstId + ", cstName=" + cstName
				+ ", cstPassword=" + cstPassword + ", zipCode=" + zipCode
				+ ", cstDetailAddress=" + cstDetailAddress + ", cstCP=" + cstCP
				+ ", cstEmail=" + cstEmail + ", cstGender=" + cstGender
				+ ", cstBirthday=" + cstBirthday + ", cstEmailAgreement="
				+ cstEmailAgreement + ", cstQnAPermission=" + cstQnAPermission
				+ ", cstEvaluationPermission=" + cstEvaluationPermission
				+ ", cstJoinDate=" + cstJoinDate + ", cstLastVisitDate="
				+ cstLastVisitDate + ", cstPostCount=" + cstPostCount
				+ ", levelCode=" + levelCode + ", cstCode=" + cstCode + "]";
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result
				+ ((cstBirthday == null) ? 0 : cstBirthday.hashCode());
		result = prime * result + ((cstCP == null) ? 0 : cstCP.hashCode());
		result = prime * result + ((cstCode == null) ? 0 : cstCode.hashCode());
		result = prime
				* result
				+ ((cstDetailAddress == null) ? 0 : cstDetailAddress.hashCode());
		result = prime * result
				+ ((cstEmail == null) ? 0 : cstEmail.hashCode());
		result = prime
				* result
				+ ((cstEmailAgreement == null) ? 0 : cstEmailAgreement
						.hashCode());
		result = prime
				* result
				+ ((cstEvaluationPermission == null) ? 0
						: cstEvaluationPermission.hashCode());
		result = prime * result
				+ ((cstGender == null) ? 0 : cstGender.hashCode());
		result = prime * result + ((cstId == null) ? 0 : cstId.hashCode());
		result = prime * result
				+ ((cstJoinDate == null) ? 0 : cstJoinDate.hashCode());
		result = prime
				* result
				+ ((cstLastVisitDate == null) ? 0 : cstLastVisitDate.hashCode());
		result = prime * result + ((cstName == null) ? 0 : cstName.hashCode());
		result = prime * result
				+ ((cstPassword == null) ? 0 : cstPassword.hashCode());
		result = prime * result + cstPostCount;
		result = prime
				* result
				+ ((cstQnAPermission == null) ? 0 : cstQnAPermission.hashCode());
		result = prime * result
				+ ((levelCode == null) ? 0 : levelCode.hashCode());
		result = prime * result + ((zipCode == null) ? 0 : zipCode.hashCode());
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Customer other = (Customer) obj;
		if (cstBirthday == null) {
			if (other.cstBirthday != null)
				return false;
		} else if (!cstBirthday.equals(other.cstBirthday))
			return false;
		if (cstCP == null) {
			if (other.cstCP != null)
				return false;
		} else if (!cstCP.equals(other.cstCP))
			return false;
		if (cstCode == null) {
			if (other.cstCode != null)
				return false;
		} else if (!cstCode.equals(other.cstCode))
			return false;
		if (cstDetailAddress == null) {
			if (other.cstDetailAddress != null)
				return false;
		} else if (!cstDetailAddress.equals(other.cstDetailAddress))
			return false;
		if (cstEmail == null) {
			if (other.cstEmail != null)
				return false;
		} else if (!cstEmail.equals(other.cstEmail))
			return false;
		if (cstEmailAgreement == null) {
			if (other.cstEmailAgreement != null)
				return false;
		} else if (!cstEmailAgreement.equals(other.cstEmailAgreement))
			return false;
		if (cstEvaluationPermission == null) {
			if (other.cstEvaluationPermission != null)
				return false;
		} else if (!cstEvaluationPermission
				.equals(other.cstEvaluationPermission))
			return false;
		if (cstGender == null) {
			if (other.cstGender != null)
				return false;
		} else if (!cstGender.equals(other.cstGender))
			return false;
		if (cstId == null) {
			if (other.cstId != null)
				return false;
		} else if (!cstId.equals(other.cstId))
			return false;
		if (cstJoinDate == null) {
			if (other.cstJoinDate != null)
				return false;
		} else if (!cstJoinDate.equals(other.cstJoinDate))
			return false;
		if (cstLastVisitDate == null) {
			if (other.cstLastVisitDate != null)
				return false;
		} else if (!cstLastVisitDate.equals(other.cstLastVisitDate))
			return false;
		if (cstName == null) {
			if (other.cstName != null)
				return false;
		} else if (!cstName.equals(other.cstName))
			return false;
		if (cstPassword == null) {
			if (other.cstPassword != null)
				return false;
		} else if (!cstPassword.equals(other.cstPassword))
			return false;
		if (cstPostCount != other.cstPostCount)
			return false;
		if (cstQnAPermission == null) {
			if (other.cstQnAPermission != null)
				return false;
		} else if (!cstQnAPermission.equals(other.cstQnAPermission))
			return false;
		if (levelCode == null) {
			if (other.levelCode != null)
				return false;
		} else if (!levelCode.equals(other.levelCode))
			return false;
		if (zipCode == null) {
			if (other.zipCode != null)
				return false;
		} else if (!zipCode.equals(other.zipCode))
			return false;
		return true;
	}
}
