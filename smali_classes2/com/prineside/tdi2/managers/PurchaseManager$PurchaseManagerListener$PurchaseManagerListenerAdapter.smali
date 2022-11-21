.class public abstract Lcom/prineside/tdi2/managers/PurchaseManager$PurchaseManagerListener$PurchaseManagerListenerAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/managers/PurchaseManager$PurchaseManagerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/managers/PurchaseManager$PurchaseManagerListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "PurchaseManagerListenerAdapter"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public gotResponse(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public purchased(Lcom/badlogic/gdx/pay/Transaction;)V
    .locals 0

    return-void
.end method
