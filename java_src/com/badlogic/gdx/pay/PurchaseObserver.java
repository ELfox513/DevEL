package com.badlogic.gdx.pay;
/* loaded from: classes.dex */
public interface PurchaseObserver {
    void handleInstall();

    void handleInstallError(Throwable th);

    void handlePurchase(Transaction transaction);

    void handlePurchaseCanceled();

    void handlePurchaseError(Throwable th);

    void handleRestore(Transaction[] transactionArr);

    void handleRestoreError(Throwable th);
}
