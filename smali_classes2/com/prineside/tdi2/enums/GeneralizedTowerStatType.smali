.class public final enum Lcom/prineside/tdi2/enums/GeneralizedTowerStatType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/prineside/tdi2/enums/GeneralizedTowerStatType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AGILITY:Lcom/prineside/tdi2/enums/GeneralizedTowerStatType;

.field public static final enum ATTACK_SPEED:Lcom/prineside/tdi2/enums/GeneralizedTowerStatType;

.field public static final enum CROWD_DAMAGE:Lcom/prineside/tdi2/enums/GeneralizedTowerStatType;

.field public static final enum DAMAGE:Lcom/prineside/tdi2/enums/GeneralizedTowerStatType;

.field public static final enum RANGE:Lcom/prineside/tdi2/enums/GeneralizedTowerStatType;

.field public static final synthetic a:[Lcom/prineside/tdi2/enums/GeneralizedTowerStatType;

.field public static final values:[Lcom/prineside/tdi2/enums/GeneralizedTowerStatType;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/prineside/tdi2/enums/GeneralizedTowerStatType;

    const-string v1, "RANGE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/enums/GeneralizedTowerStatType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/enums/GeneralizedTowerStatType;->RANGE:Lcom/prineside/tdi2/enums/GeneralizedTowerStatType;

    new-instance v0, Lcom/prineside/tdi2/enums/GeneralizedTowerStatType;

    const-string v1, "ATTACK_SPEED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/enums/GeneralizedTowerStatType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/enums/GeneralizedTowerStatType;->ATTACK_SPEED:Lcom/prineside/tdi2/enums/GeneralizedTowerStatType;

    new-instance v0, Lcom/prineside/tdi2/enums/GeneralizedTowerStatType;

    const-string v1, "DAMAGE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/enums/GeneralizedTowerStatType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/enums/GeneralizedTowerStatType;->DAMAGE:Lcom/prineside/tdi2/enums/GeneralizedTowerStatType;

    new-instance v0, Lcom/prineside/tdi2/enums/GeneralizedTowerStatType;

    const-string v1, "CROWD_DAMAGE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/enums/GeneralizedTowerStatType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/enums/GeneralizedTowerStatType;->CROWD_DAMAGE:Lcom/prineside/tdi2/enums/GeneralizedTowerStatType;

    new-instance v0, Lcom/prineside/tdi2/enums/GeneralizedTowerStatType;

    const-string v1, "AGILITY"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/enums/GeneralizedTowerStatType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/enums/GeneralizedTowerStatType;->AGILITY:Lcom/prineside/tdi2/enums/GeneralizedTowerStatType;

    invoke-static {}, Lcom/prineside/tdi2/enums/GeneralizedTowerStatType;->c()[Lcom/prineside/tdi2/enums/GeneralizedTowerStatType;

    move-result-object v0

    sput-object v0, Lcom/prineside/tdi2/enums/GeneralizedTowerStatType;->a:[Lcom/prineside/tdi2/enums/GeneralizedTowerStatType;

    invoke-static {}, Lcom/prineside/tdi2/enums/GeneralizedTowerStatType;->values()[Lcom/prineside/tdi2/enums/GeneralizedTowerStatType;

    move-result-object v0

    sput-object v0, Lcom/prineside/tdi2/enums/GeneralizedTowerStatType;->values:[Lcom/prineside/tdi2/enums/GeneralizedTowerStatType;

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

.method public static synthetic c()[Lcom/prineside/tdi2/enums/GeneralizedTowerStatType;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/prineside/tdi2/enums/GeneralizedTowerStatType;

    sget-object v1, Lcom/prineside/tdi2/enums/GeneralizedTowerStatType;->RANGE:Lcom/prineside/tdi2/enums/GeneralizedTowerStatType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/GeneralizedTowerStatType;->ATTACK_SPEED:Lcom/prineside/tdi2/enums/GeneralizedTowerStatType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/GeneralizedTowerStatType;->DAMAGE:Lcom/prineside/tdi2/enums/GeneralizedTowerStatType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/GeneralizedTowerStatType;->CROWD_DAMAGE:Lcom/prineside/tdi2/enums/GeneralizedTowerStatType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/GeneralizedTowerStatType;->AGILITY:Lcom/prineside/tdi2/enums/GeneralizedTowerStatType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/enums/GeneralizedTowerStatType;
    .locals 1

    const-class v0, Lcom/prineside/tdi2/enums/GeneralizedTowerStatType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/prineside/tdi2/enums/GeneralizedTowerStatType;

    return-object p0
.end method

.method public static values()[Lcom/prineside/tdi2/enums/GeneralizedTowerStatType;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/GeneralizedTowerStatType;->a:[Lcom/prineside/tdi2/enums/GeneralizedTowerStatType;

    invoke-virtual {v0}, [Lcom/prineside/tdi2/enums/GeneralizedTowerStatType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/prineside/tdi2/enums/GeneralizedTowerStatType;

    return-object v0
.end method
