.class Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/managers/PurchaseManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RewardingAdConfig"
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/managers/PurchaseManager;

.field public maxViewsPerPeriod:I

.field public minViewDelay:I

.field public periodLength:I


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/managers/PurchaseManager;III)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdConfig;->a:Lcom/prineside/tdi2/managers/PurchaseManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    if-lt p3, p1, :cond_0

    iput p2, p0, Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdConfig;->periodLength:I

    iput p3, p0, Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdConfig;->maxViewsPerPeriod:I

    iput p4, p0, Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdConfig;->minViewDelay:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "maxViewsPerPeriod must be > 0: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
