.class public final enum Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdsType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/managers/PurchaseManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RewardingAdsType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdsType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CASE_DECRYPTION:Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdsType;

.field public static final enum END_GAME:Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdsType;

.field public static final enum LOOT_MULTIPLIER:Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdsType;

.field public static final enum REGULAR:Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdsType;

.field public static final synthetic a:[Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdsType;

.field public static final values:[Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdsType;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdsType;

    const-string v1, "END_GAME"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdsType;->END_GAME:Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdsType;

    new-instance v0, Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdsType;

    const-string v1, "REGULAR"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdsType;->REGULAR:Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdsType;

    new-instance v0, Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdsType;

    const-string v1, "CASE_DECRYPTION"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdsType;->CASE_DECRYPTION:Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdsType;

    new-instance v0, Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdsType;

    const-string v1, "LOOT_MULTIPLIER"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdsType;->LOOT_MULTIPLIER:Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdsType;

    invoke-static {}, Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdsType;->c()[Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdsType;

    move-result-object v0

    sput-object v0, Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdsType;->a:[Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdsType;

    invoke-static {}, Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdsType;->values()[Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdsType;

    move-result-object v0

    sput-object v0, Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdsType;->values:[Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdsType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic c()[Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdsType;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdsType;

    sget-object v1, Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdsType;->END_GAME:Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdsType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdsType;->REGULAR:Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdsType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdsType;->CASE_DECRYPTION:Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdsType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdsType;->LOOT_MULTIPLIER:Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdsType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdsType;
    .locals 1

    const-class v0, Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdsType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdsType;

    return-object p0
.end method

.method public static values()[Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdsType;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdsType;->a:[Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdsType;

    invoke-virtual {v0}, [Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdsType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdsType;

    return-object v0
.end method
