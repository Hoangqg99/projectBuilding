package com.javaweb.model.response;


import com.javaweb.model.dto.AbstractDTO;

public class BuildingSearchResponse extends AbstractDTO {
	private Long id;
	private String name;
	private String address;
	private Long level;
	private Long areaFrom;
	private Long areaTo;
	private Long rentPriceFrom;
	private Long rentPriceTo;
	private String typeCode;
	private String district;
	private String staffId;
	private String ward;
	private Long numberOfBasement;
	private String managerName;
	private String managerPhone;
	private Long floorArea;
	private String rentArea;
    private String emptyArea;
    private Long rentPrice;
    private String serviceFee;
    private Double brokerageFee;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getManagerName() {
		return managerName;
	}
	public String getRentArea() {
		return rentArea;
	}
	public void setRentArea(String rentArea) {
		this.rentArea = rentArea;
	}
	public void setManagerName(String managerName) {
		this.managerName = managerName;
	}
	public String getManagerPhoneNumber() {
		return managerPhone;
	}
	public void setManagerPhoneNumber(String managerPhoneNumber) {
		this.managerPhone = managerPhoneNumber;
	}
	public Long getFloorArea() {
		return floorArea;
	}
	public void setFloorArea(Long floorArea) {
		this.floorArea = floorArea;
	}
	public String getEmptyArea() {
		return emptyArea;
	}
	public void setEmptyArea(String emptyArea) {
		this.emptyArea = emptyArea;
	}
	public Long getRentPrice() {
		return rentPrice;
	}
	public void setRentPrice(Long rentPrice) {
		this.rentPrice = rentPrice;
	}
	public String getServiceFee() {
		return serviceFee;
	}
	public void setServiceFee(String serviceFee) {
		this.serviceFee = serviceFee;
	}
	public Double getBrokerageFee() {
		return brokerageFee;
	}
	public void setBrokerageFee(Double brokerageFee) {
		this.brokerageFee = brokerageFee;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}

	public Long getNumberOfBasement() {
		return numberOfBasement;
	}

	public void setNumberOfBasement(Long numberOfBasement) {
		this.numberOfBasement = numberOfBasement;
	}

	public String getManagerPhone() {
		return managerPhone;
	}

	public void setManagerPhone(String managerPhone) {
		this.managerPhone = managerPhone;
	}

	public Long getLevel() {
		return level;
	}

	public void setLevel(Long level) {
		this.level = level;
	}

	public Long getAreaFrom() {
		return areaFrom;
	}

	public void setAreaFrom(Long areaFrom) {
		this.areaFrom = areaFrom;
	}

	public Long getAreaTo() {
		return areaTo;
	}

	public void setAreaTo(Long areaTo) {
		this.areaTo = areaTo;
	}

	public Long getRentPriceFrom() {
		return rentPriceFrom;
	}

	public void setRentPriceFrom(Long rentPriceFrom) {
		this.rentPriceFrom = rentPriceFrom;
	}

	public Long getRentPriceTo() {
		return rentPriceTo;
	}

	public void setRentPriceTo(Long rentPriceTo) {
		this.rentPriceTo = rentPriceTo;
	}

	public String getTypeCode() {
		return typeCode;
	}

	public void setTypeCode(String typeCode) {
		this.typeCode = typeCode;
	}

	public String getDistrict() {
		return district;
	}

	public void setDistrict(String district) {
		this.district = district;
	}

	public String getWard() {
		return ward;
	}

	public void setWard(String ward) {
		this.ward = ward;
	}

	public String getStaffId() {
		return staffId;
	}
	public void setStaffId(String staffId) {
		this.staffId = staffId;
	}
}
