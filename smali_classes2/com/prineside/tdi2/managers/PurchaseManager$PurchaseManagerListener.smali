.class public interface abstract Lcom/prineside/tdi2/managers/PurchaseManager$PurchaseManagerListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/managers/PurchaseManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PurchaseManagerListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/managers/PurchaseManager$PurchaseManagerListener$PurchaseManagerListenerAdapter;
    }
.end annotation


# virtual methods
.method public abstract gotResponse(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract purchased(Lcom/badlogic/gdx/pay/Transaction;)V
.end method
