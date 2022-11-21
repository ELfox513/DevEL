package com.badlogic.gdx.pay;

import java.util.Date;
/* loaded from: classes.dex */
public final class Transaction {
    public static final String REVERSAL_TEXT_CANCELLED = "Cancelled";
    public static final String REVERSAL_TEXT_REFUNDED = "Refunded";

    /* renamed from: a */
    public String f5589a;

    /* renamed from: b */
    public String f5590b;

    /* renamed from: c */
    public String f5591c;

    /* renamed from: d */
    public String f5592d = null;

    /* renamed from: e */
    public String f5593e = null;

    /* renamed from: f */
    public Date f5594f;

    /* renamed from: g */
    public String f5595g;

    /* renamed from: h */
    public int f5596h;

    /* renamed from: i */
    public String f5597i;

    /* renamed from: j */
    public Date f5598j;

    /* renamed from: k */
    public String f5599k;

    /* renamed from: l */
    public String f5600l;

    /* renamed from: m */
    public String f5601m;

    public String getIdentifier() {
        return this.f5589a;
    }

    public String getOrderId() {
        return this.f5591c;
    }

    public int getPurchaseCost() {
        return this.f5596h;
    }

    public String getPurchaseCostCurrency() {
        return this.f5597i;
    }

    public String getPurchaseText() {
        return this.f5595g;
    }

    public Date getPurchaseTime() {
        return this.f5594f;
    }

    public String getRequestId() {
        return this.f5592d;
    }

    public String getReversalText() {
        return this.f5599k;
    }

    public Date getReversalTime() {
        return this.f5598j;
    }

    public String getStoreName() {
        return this.f5590b;
    }

    public String getTransactionData() {
        return this.f5600l;
    }

    public String getTransactionDataSignature() {
        return this.f5601m;
    }

    public String getUserId() {
        return this.f5593e;
    }

    public boolean isPurchased() {
        return this.f5598j == null;
    }

    public void setIdentifier(String str) {
        this.f5589a = str;
    }

    public void setOrderId(String str) {
        this.f5591c = str;
    }

    public void setPurchaseCost(int i) {
        this.f5596h = i;
    }

    public void setPurchaseCostCurrency(String str) {
        this.f5597i = str;
    }

    public void setPurchaseText(String str) {
        this.f5595g = str;
    }

    public void setPurchaseTime(Date date) {
        this.f5594f = date;
    }

    public void setRequestId(String str) {
        this.f5592d = str;
    }

    public void setReversalText(String str) {
        this.f5599k = str;
    }

    public void setReversalTime(Date date) {
        this.f5598j = date;
    }

    public void setStoreName(String str) {
        this.f5590b = str;
    }

    public void setTransactionData(String str) {
        this.f5600l = str;
    }

    public void setTransactionDataSignature(String str) {
        this.f5601m = str;
    }

    public void setUserId(String str) {
        this.f5593e = str;
    }

    public String toString() {
        return "Transaction{identifier='" + this.f5589a + "', storeName='" + this.f5590b + "', orderId='" + this.f5591c + "', requestId='" + this.f5592d + "', userId='" + this.f5593e + "', purchaseTime=" + this.f5594f + ", purchaseText='" + this.f5595g + "', purchaseCost=" + this.f5596h + ", purchaseCostCurrency='" + this.f5597i + "', reversalTime=" + this.f5598j + ", reversalText='" + this.f5599k + "', transactionData='" + this.f5600l + "', transactionDataSignature='" + this.f5601m + "'}";
    }
}
