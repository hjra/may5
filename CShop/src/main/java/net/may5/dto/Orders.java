package net.may5.dto;

import java.sql.Date;

public class Orders {
	
	private String orderCode;			// 주문코드
	private Date orderDate;				// 주문날짜(sysdate)
	private String itemId;				// 상품정보.상품ID
	private String sameTimeCount;		// 동시간대카운트
	private int payCode;				// 결제구분.결제코드
	private int optionCode;				// 옵션가.옵션코드
	private int dlvChargeCode;			// 배송비.배송비코드
	private int noticeCode;				// 알리미.알리미코드
	private int orderAmount;			// 주문수량
	private int pointCode;				// 적립정보.적립코드
	private String zipCode;				// 우편정보.우편코드
	private String orderDetailAddress;	// 상세주소
	private String receiverName;		// 수령자
	private String receiverCP;			// 수령자 휴대폰번호
	private int stockAmount;			// 입고수량
	private String receiverPhone;		// 수령자 전화번호
	private Date dlvEndDate;			// 배송완료일
	private String sizeCode;			// 크기정보.크기ID
	private String cstId;				// 고객정보.회원아이디
	private String noticeComment;		// 코멘트
	private String noticeImg;			// 촬영이미지
	
	public String getOrderCode() {
		return orderCode;
	}
	public void setOrderCode(String orderCode) {
		this.orderCode = orderCode;
	}
	public Date getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}
	public String getItemId() {
		return itemId;
	}
	public void setItemId(String itemId) {
		this.itemId = itemId;
	}
	public String getSameTimeCount() {
		return sameTimeCount;
	}
	public void setSameTimeCount(String sameTimeCount) {
		this.sameTimeCount = sameTimeCount;
	}
	public int getPayCode() {
		return payCode;
	}
	public void setPayCode(int payCode) {
		this.payCode = payCode;
	}
	public int getOptionCode() {
		return optionCode;
	}
	public void setOptionCode(int optionCode) {
		this.optionCode = optionCode;
	}
	public int getDlvChargeCode() {
		return dlvChargeCode;
	}
	public void setDlvChargeCode(int dlvChargeCode) {
		this.dlvChargeCode = dlvChargeCode;
	}
	public int getNoticeCode() {
		return noticeCode;
	}
	public void setNoticeCode(int noticeCode) {
		this.noticeCode = noticeCode;
	}
	public int getOrderAmount() {
		return orderAmount;
	}
	public void setOrderAmount(int orderAmount) {
		this.orderAmount = orderAmount;
	}
	public int getPointCode() {
		return pointCode;
	}
	public void setPointCode(int pointCode) {
		this.pointCode = pointCode;
	}
	public String getZipCode() {
		return zipCode;
	}
	public void setZipCode(String zipCode) {
		this.zipCode = zipCode;
	}
	public String getOrderDetailAddress() {
		return orderDetailAddress;
	}
	public void setOrderDetailAddress(String orderDetailAddress) {
		this.orderDetailAddress = orderDetailAddress;
	}
	public String getReceiverName() {
		return receiverName;
	}
	public void setReceiverName(String receiverName) {
		this.receiverName = receiverName;
	}
	public String getReceiverCP() {
		return receiverCP;
	}
	public void setReceiverCP(String receiverCP) {
		this.receiverCP = receiverCP;
	}
	public int getStockAmount() {
		return stockAmount;
	}
	public void setStockAmount(int stockAmount) {
		this.stockAmount = stockAmount;
	}
	public String getReceiverPhone() {
		return receiverPhone;
	}
	public void setReceiverPhone(String receiverPhone) {
		this.receiverPhone = receiverPhone;
	}
	public Date getDlvEndDate() {
		return dlvEndDate;
	}
	public void setDlvEndDate(Date dlvEndDate) {
		this.dlvEndDate = dlvEndDate;
	}
	public String getSizeCode() {
		return sizeCode;
	}
	public void setSizeCode(String sizeCode) {
		this.sizeCode = sizeCode;
	}
	public String getCstId() {
		return cstId;
	}
	public void setCstId(String cstId) {
		this.cstId = cstId;
	}
	public String getNoticeComment() {
		return noticeComment;
	}
	public void setNoticeComment(String noticeComment) {
		this.noticeComment = noticeComment;
	}
	public String getNoticeImg() {
		return noticeImg;
	}
	public void setNoticeImg(String noticeImg) {
		this.noticeImg = noticeImg;
	}
	@Override
	public String toString() {
		return "Orders [orderCode=" + orderCode + ", orderDate=" + orderDate
				+ ", itemId=" + itemId + ", sameTimeCount=" + sameTimeCount
				+ ", payCode=" + payCode + ", optionCode=" + optionCode
				+ ", dlvChargeCode=" + dlvChargeCode + ", noticeCode="
				+ noticeCode + ", orderAmount=" + orderAmount + ", pointCode="
				+ pointCode + ", zipCode=" + zipCode + ", orderDetailAddress="
				+ orderDetailAddress + ", receiverName=" + receiverName
				+ ", receiverCP=" + receiverCP + ", stockAmount=" + stockAmount
				+ ", receiverPhone=" + receiverPhone + ", dlvEndDate="
				+ dlvEndDate + ", sizeCode=" + sizeCode + ", cstId=" + cstId
				+ ", noticeComment=" + noticeComment + ", noticeImg="
				+ noticeImg + "]";
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((cstId == null) ? 0 : cstId.hashCode());
		result = prime * result + dlvChargeCode;
		result = prime * result
				+ ((dlvEndDate == null) ? 0 : dlvEndDate.hashCode());
		result = prime * result + ((itemId == null) ? 0 : itemId.hashCode());
		result = prime * result + noticeCode;
		result = prime * result
				+ ((noticeComment == null) ? 0 : noticeComment.hashCode());
		result = prime * result
				+ ((noticeImg == null) ? 0 : noticeImg.hashCode());
		result = prime * result + optionCode;
		result = prime * result + orderAmount;
		result = prime * result
				+ ((orderCode == null) ? 0 : orderCode.hashCode());
		result = prime * result
				+ ((orderDate == null) ? 0 : orderDate.hashCode());
		result = prime
				* result
				+ ((orderDetailAddress == null) ? 0 : orderDetailAddress
						.hashCode());
		result = prime * result + payCode;
		result = prime * result + pointCode;
		result = prime * result
				+ ((receiverCP == null) ? 0 : receiverCP.hashCode());
		result = prime * result
				+ ((receiverName == null) ? 0 : receiverName.hashCode());
		result = prime * result
				+ ((receiverPhone == null) ? 0 : receiverPhone.hashCode());
		result = prime * result
				+ ((sameTimeCount == null) ? 0 : sameTimeCount.hashCode());
		result = prime * result
				+ ((sizeCode == null) ? 0 : sizeCode.hashCode());
		result = prime * result + stockAmount;
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
		Orders other = (Orders) obj;
		if (cstId == null) {
			if (other.cstId != null)
				return false;
		} else if (!cstId.equals(other.cstId))
			return false;
		if (dlvChargeCode != other.dlvChargeCode)
			return false;
		if (dlvEndDate == null) {
			if (other.dlvEndDate != null)
				return false;
		} else if (!dlvEndDate.equals(other.dlvEndDate))
			return false;
		if (itemId == null) {
			if (other.itemId != null)
				return false;
		} else if (!itemId.equals(other.itemId))
			return false;
		if (noticeCode != other.noticeCode)
			return false;
		if (noticeComment == null) {
			if (other.noticeComment != null)
				return false;
		} else if (!noticeComment.equals(other.noticeComment))
			return false;
		if (noticeImg == null) {
			if (other.noticeImg != null)
				return false;
		} else if (!noticeImg.equals(other.noticeImg))
			return false;
		if (optionCode != other.optionCode)
			return false;
		if (orderAmount != other.orderAmount)
			return false;
		if (orderCode == null) {
			if (other.orderCode != null)
				return false;
		} else if (!orderCode.equals(other.orderCode))
			return false;
		if (orderDate == null) {
			if (other.orderDate != null)
				return false;
		} else if (!orderDate.equals(other.orderDate))
			return false;
		if (orderDetailAddress == null) {
			if (other.orderDetailAddress != null)
				return false;
		} else if (!orderDetailAddress.equals(other.orderDetailAddress))
			return false;
		if (payCode != other.payCode)
			return false;
		if (pointCode != other.pointCode)
			return false;
		if (receiverCP == null) {
			if (other.receiverCP != null)
				return false;
		} else if (!receiverCP.equals(other.receiverCP))
			return false;
		if (receiverName == null) {
			if (other.receiverName != null)
				return false;
		} else if (!receiverName.equals(other.receiverName))
			return false;
		if (receiverPhone == null) {
			if (other.receiverPhone != null)
				return false;
		} else if (!receiverPhone.equals(other.receiverPhone))
			return false;
		if (sameTimeCount == null) {
			if (other.sameTimeCount != null)
				return false;
		} else if (!sameTimeCount.equals(other.sameTimeCount))
			return false;
		if (sizeCode == null) {
			if (other.sizeCode != null)
				return false;
		} else if (!sizeCode.equals(other.sizeCode))
			return false;
		if (stockAmount != other.stockAmount)
			return false;
		if (zipCode == null) {
			if (other.zipCode != null)
				return false;
		} else if (!zipCode.equals(other.zipCode))
			return false;
		return true;
	}
}
