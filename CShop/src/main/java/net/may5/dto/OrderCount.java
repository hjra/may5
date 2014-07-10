package net.may5.dto;

public class OrderCount {

	private String time;
	private String countPerHour;
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getCountPerHour() {
		return countPerHour;
	}
	public void setCountPerHour(String countPerHour) {
		this.countPerHour = countPerHour;
	}
	@Override
	public String toString() {
		return "OrderCount [time=" + time + ", countPerHour=" + countPerHour
				+ "]";
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result
				+ ((countPerHour == null) ? 0 : countPerHour.hashCode());
		result = prime * result + ((time == null) ? 0 : time.hashCode());
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
		OrderCount other = (OrderCount) obj;
		if (countPerHour == null) {
			if (other.countPerHour != null)
				return false;
		} else if (!countPerHour.equals(other.countPerHour))
			return false;
		if (time == null) {
			if (other.time != null)
				return false;
		} else if (!time.equals(other.time))
			return false;
		return true;
	}
	
	
}
