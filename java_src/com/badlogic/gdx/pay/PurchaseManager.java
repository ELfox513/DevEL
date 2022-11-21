package com.badlogic.gdx.pay;
/* loaded from: classes.dex */
public interface PurchaseManager extends InformationFinder {
    void dispose();

    void install(PurchaseObserver purchaseObserver, PurchaseManagerConfig purchaseManagerConfig, boolean z);

    boolean installed();

    void purchase(String str);

    void purchaseRestore();

    String storeName();
}
