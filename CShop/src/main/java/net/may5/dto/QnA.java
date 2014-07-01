package net.may5.dto;

import java.sql.Date;

public class QnA {

	private int boardCode;				// 번호
	private String cstCode;				// 고객정보.회원코드
	private String boardTitle;			// 제목
	private Date boardDate;				// 등록일자
	private String postPassword;		// 게시글 암호
	private String postContents;		// 게시판 본문
	private String fileName;			// 파일첨부될 이름
	private String fileAddress;			// 파일첨부경로
	private String replyOrder;			// 답변글의순서
	private String saveFolder;			// 저장폴더명
	private String systemFileName;		// 시스템파일명
	private String originalFileName;	// 원래파일명
	private int groupNumber;			// 그룹번호
	private String sequenceNumber;		// 시퀀스넘버
	
	public int getBoardCode() {
		return boardCode;
	}
	public void setBoardCode(int boardCode) {
		this.boardCode = boardCode;
	}
	public String getCstCode() {
		return cstCode;
	}
	public void setCstCode(String cstCode) {
		this.cstCode = cstCode;
	}
	public String getBoardTitle() {
		return boardTitle;
	}
	public void setBoardTitle(String boardTitle) {
		this.boardTitle = boardTitle;
	}
	public Date getBoardDate() {
		return boardDate;
	}
	public void setBoardDate(Date boardDate) {
		this.boardDate = boardDate;
	}
	public String getPostPassword() {
		return postPassword;
	}
	public void setPostPassword(String postPassword) {
		this.postPassword = postPassword;
	}
	public String getPostContents() {
		return postContents;
	}
	public void setPostContents(String postContents) {
		this.postContents = postContents;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public String getFileAddress() {
		return fileAddress;
	}
	public void setFileAddress(String fileAddress) {
		this.fileAddress = fileAddress;
	}
	public String getReplyOrder() {
		return replyOrder;
	}
	public void setReplyOrder(String replyOrder) {
		this.replyOrder = replyOrder;
	}
	public String getSaveFolder() {
		return saveFolder;
	}
	public void setSaveFolder(String saveFolder) {
		this.saveFolder = saveFolder;
	}
	public String getSystemFileName() {
		return systemFileName;
	}
	public void setSystemFileName(String systemFileName) {
		this.systemFileName = systemFileName;
	}
	public String getOriginalFileName() {
		return originalFileName;
	}
	public void setOriginalFileName(String originalFileName) {
		this.originalFileName = originalFileName;
	}
	public int getGroupNumber() {
		return groupNumber;
	}
	public void setGroupNumber(int groupNumber) {
		this.groupNumber = groupNumber;
	}
	public String getSequenceNumber() {
		return sequenceNumber;
	}
	public void setSequenceNumber(String sequenceNumber) {
		this.sequenceNumber = sequenceNumber;
	}
	@Override
	public String toString() {
		return "QnA [boardCode=" + boardCode + ", cstCode=" + cstCode
				+ ", boardTitle=" + boardTitle + ", boardDate=" + boardDate
				+ ", postPassword=" + postPassword + ", postContents="
				+ postContents + ", fileName=" + fileName + ", fileAddress="
				+ fileAddress + ", replyOrder=" + replyOrder + ", saveFolder="
				+ saveFolder + ", systemFileName=" + systemFileName
				+ ", originalFileName=" + originalFileName + ", groupNumber="
				+ groupNumber + ", sequenceNumber=" + sequenceNumber + "]";
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + boardCode;
		result = prime * result
				+ ((boardDate == null) ? 0 : boardDate.hashCode());
		result = prime * result
				+ ((boardTitle == null) ? 0 : boardTitle.hashCode());
		result = prime * result + ((cstCode == null) ? 0 : cstCode.hashCode());
		result = prime * result
				+ ((fileAddress == null) ? 0 : fileAddress.hashCode());
		result = prime * result
				+ ((fileName == null) ? 0 : fileName.hashCode());
		result = prime * result + groupNumber;
		result = prime
				* result
				+ ((originalFileName == null) ? 0 : originalFileName.hashCode());
		result = prime * result
				+ ((postContents == null) ? 0 : postContents.hashCode());
		result = prime * result
				+ ((postPassword == null) ? 0 : postPassword.hashCode());
		result = prime * result
				+ ((replyOrder == null) ? 0 : replyOrder.hashCode());
		result = prime * result
				+ ((saveFolder == null) ? 0 : saveFolder.hashCode());
		result = prime * result
				+ ((sequenceNumber == null) ? 0 : sequenceNumber.hashCode());
		result = prime * result
				+ ((systemFileName == null) ? 0 : systemFileName.hashCode());
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
		QnA other = (QnA) obj;
		if (boardCode != other.boardCode)
			return false;
		if (boardDate == null) {
			if (other.boardDate != null)
				return false;
		} else if (!boardDate.equals(other.boardDate))
			return false;
		if (boardTitle == null) {
			if (other.boardTitle != null)
				return false;
		} else if (!boardTitle.equals(other.boardTitle))
			return false;
		if (cstCode == null) {
			if (other.cstCode != null)
				return false;
		} else if (!cstCode.equals(other.cstCode))
			return false;
		if (fileAddress == null) {
			if (other.fileAddress != null)
				return false;
		} else if (!fileAddress.equals(other.fileAddress))
			return false;
		if (fileName == null) {
			if (other.fileName != null)
				return false;
		} else if (!fileName.equals(other.fileName))
			return false;
		if (groupNumber != other.groupNumber)
			return false;
		if (originalFileName == null) {
			if (other.originalFileName != null)
				return false;
		} else if (!originalFileName.equals(other.originalFileName))
			return false;
		if (postContents == null) {
			if (other.postContents != null)
				return false;
		} else if (!postContents.equals(other.postContents))
			return false;
		if (postPassword == null) {
			if (other.postPassword != null)
				return false;
		} else if (!postPassword.equals(other.postPassword))
			return false;
		if (replyOrder == null) {
			if (other.replyOrder != null)
				return false;
		} else if (!replyOrder.equals(other.replyOrder))
			return false;
		if (saveFolder == null) {
			if (other.saveFolder != null)
				return false;
		} else if (!saveFolder.equals(other.saveFolder))
			return false;
		if (sequenceNumber == null) {
			if (other.sequenceNumber != null)
				return false;
		} else if (!sequenceNumber.equals(other.sequenceNumber))
			return false;
		if (systemFileName == null) {
			if (other.systemFileName != null)
				return false;
		} else if (!systemFileName.equals(other.systemFileName))
			return false;
		return true;
	}
}
