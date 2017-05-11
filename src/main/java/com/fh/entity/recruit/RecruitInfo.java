package com.fh.entity.recruit;

public class RecruitInfo {
	
	public String recruitPosition;
	
	public String recruitCnt;
	
	public String positionRequire;

	public String recruitInfoId;

	

	public String getRecruitPosition() {
		return recruitPosition;
	}

	public void setRecruitPosition(String recruitPosition) {
		this.recruitPosition = recruitPosition;
	}

	public String getRecruitCnt() {
		return recruitCnt;
	}

	public void setRecruitCnt(String recruitCnt) {
		this.recruitCnt = recruitCnt;
	}

	public String getPositionRequire() {
		return positionRequire;
	}

	public void setPositionRequire(String positionRequire) {
		this.positionRequire = positionRequire;
	}

	public String getRecruitInfoId() {
		return recruitInfoId;
	}

	public void setRecruitInfoId(String recruitInfoId) {
		this.recruitInfoId = recruitInfoId;
	}

	@Override
	public String toString() {
		return "RecruitInfo [recruitPositon=" + recruitPosition
				+ ", recruitCnt=" + recruitCnt + ", positionRequire="
				+ positionRequire + "]";
	}
	
	

}
