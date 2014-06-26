package net.may5.dto;

import java.sql.Date;

public class Evaluation {

	private int evaluationIndex;		// 평가인덱스
	private String itemId;				// 상품정보.상품ID
	private int grade;					// 평점
	private String evaluationContents;	// 내용
	private String cstId;				// 고객정보.회원아이디
	private Date evaluationDate;		// 평가등록일
	
	public int getEvaluationIndex() {
		return evaluationIndex;
	}
	public void setEvaluationIndex(int evaluationIndex) {
		this.evaluationIndex = evaluationIndex;
	}
	public String getItemId() {
		return itemId;
	}
	public void setItemId(String itemId) {
		this.itemId = itemId;
	}
	public int getGrade() {
		return grade;
	}
	public void setGrade(int grade) {
		this.grade = grade;
	}
	public String getEvaluationContents() {
		return evaluationContents;
	}
	public void setEvaluationContents(String evaluationContents) {
		this.evaluationContents = evaluationContents;
	}
	public String getCstId() {
		return cstId;
	}
	public void setCstId(String cstId) {
		this.cstId = cstId;
	}
	public Date getEvaluationDate() {
		return evaluationDate;
	}
	public void setEvaluationDate(Date evaluationDate) {
		this.evaluationDate = evaluationDate;
	}
	@Override
	public String toString() {
		return "Evaluation [evaluationIndex=" + evaluationIndex + ", itemId="
				+ itemId + ", grade=" + grade + ", evaluationContents="
				+ evaluationContents + ", cstId=" + cstId + ", evaluationDate="
				+ evaluationDate + "]";
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((cstId == null) ? 0 : cstId.hashCode());
		result = prime
				* result
				+ ((evaluationContents == null) ? 0 : evaluationContents
						.hashCode());
		result = prime * result
				+ ((evaluationDate == null) ? 0 : evaluationDate.hashCode());
		result = prime * result + evaluationIndex;
		result = prime * result + grade;
		result = prime * result + ((itemId == null) ? 0 : itemId.hashCode());
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
		Evaluation other = (Evaluation) obj;
		if (cstId == null) {
			if (other.cstId != null)
				return false;
		} else if (!cstId.equals(other.cstId))
			return false;
		if (evaluationContents == null) {
			if (other.evaluationContents != null)
				return false;
		} else if (!evaluationContents.equals(other.evaluationContents))
			return false;
		if (evaluationDate == null) {
			if (other.evaluationDate != null)
				return false;
		} else if (!evaluationDate.equals(other.evaluationDate))
			return false;
		if (evaluationIndex != other.evaluationIndex)
			return false;
		if (grade != other.grade)
			return false;
		if (itemId == null) {
			if (other.itemId != null)
				return false;
		} else if (!itemId.equals(other.itemId))
			return false;
		return true;
	}
}
