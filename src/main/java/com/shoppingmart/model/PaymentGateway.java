package com.shoppingmart.model;

public class PaymentGateway {

	private String payUMoney;
	private String visaMasterCard;
	private String netBanking;
	private String cashOnDelivery;

	public String getPayUMoney() {
		return payUMoney;
	}

	public void setPayUMoney(String payUMoney) {
		this.payUMoney = payUMoney;
	}

	public String getVisaMasterCard() {
		return visaMasterCard;
	}

	public void setVisaMasterCard(String visaMasterCard) {
		this.visaMasterCard = visaMasterCard;
	}

	public String getNetBanking() {
		return netBanking;
	}

	public void setNetBanking(String netBanking) {
		this.netBanking = netBanking;
	}

	public String getCashOnDelivery() {
		return cashOnDelivery;
	}

	public void setCashOnDelivery(String cashOnDelivery) {
		this.cashOnDelivery = cashOnDelivery;
	}
}
