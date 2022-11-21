.class public interface abstract Lcom/badlogic/gdx/pay/PurchaseObserver;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract handleInstall()V
.end method

.method public abstract handleInstallError(Ljava/lang/Throwable;)V
.end method

.method public abstract handlePurchase(Lcom/badlogic/gdx/pay/Transaction;)V
.end method

.method public abstract handlePurchaseCanceled()V
.end method

.method public abstract handlePurchaseError(Ljava/lang/Throwable;)V
.end method

.method public abstract handleRestore([Lcom/badlogic/gdx/pay/Transaction;)V
.end method

.method public abstract handleRestoreError(Ljava/lang/Throwable;)V
.end method
