.class public final enum Lcom/prineside/tdi2/enums/ModifierType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/prineside/tdi2/enums/ModifierType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ATTACK_SPEED:Lcom/prineside/tdi2/enums/ModifierType;

.field public static final enum BALANCE:Lcom/prineside/tdi2/enums/ModifierType;

.field public static final enum BOUNTY:Lcom/prineside/tdi2/enums/ModifierType;

.field public static final enum DAMAGE:Lcom/prineside/tdi2/enums/ModifierType;

.field public static final enum EXPERIENCE:Lcom/prineside/tdi2/enums/ModifierType;

.field public static final enum MINING_SPEED:Lcom/prineside/tdi2/enums/ModifierType;

.field public static final enum POWER:Lcom/prineside/tdi2/enums/ModifierType;

.field public static final enum SEARCH:Lcom/prineside/tdi2/enums/ModifierType;

.field public static final synthetic a:[Lcom/prineside/tdi2/enums/ModifierType;

.field public static values:[Lcom/prineside/tdi2/enums/ModifierType;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/prineside/tdi2/enums/ModifierType;

    const-string v1, "BALANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/enums/ModifierType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/enums/ModifierType;->BALANCE:Lcom/prineside/tdi2/enums/ModifierType;

    new-instance v0, Lcom/prineside/tdi2/enums/ModifierType;

    const-string v1, "SEARCH"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/enums/ModifierType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/enums/ModifierType;->SEARCH:Lcom/prineside/tdi2/enums/ModifierType;

    new-instance v0, Lcom/prineside/tdi2/enums/ModifierType;

    const-string v1, "POWER"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/enums/ModifierType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/enums/ModifierType;->POWER:Lcom/prineside/tdi2/enums/ModifierType;

    new-instance v0, Lcom/prineside/tdi2/enums/ModifierType;

    const-string v1, "DAMAGE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/enums/ModifierType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/enums/ModifierType;->DAMAGE:Lcom/prineside/tdi2/enums/ModifierType;

    new-instance v0, Lcom/prineside/tdi2/enums/ModifierType;

    const-string v1, "ATTACK_SPEED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/enums/ModifierType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/enums/ModifierType;->ATTACK_SPEED:Lcom/prineside/tdi2/enums/ModifierType;

    new-instance v0, Lcom/prineside/tdi2/enums/ModifierType;

    const-string v1, "MINING_SPEED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/enums/ModifierType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/enums/ModifierType;->MINING_SPEED:Lcom/prineside/tdi2/enums/ModifierType;

    new-instance v0, Lcom/prineside/tdi2/enums/ModifierType;

    const-string v1, "BOUNTY"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/enums/ModifierType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/enums/ModifierType;->BOUNTY:Lcom/prineside/tdi2/enums/ModifierType;

    new-instance v0, Lcom/prineside/tdi2/enums/ModifierType;

    const-string v1, "EXPERIENCE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/enums/ModifierType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/enums/ModifierType;->EXPERIENCE:Lcom/prineside/tdi2/enums/ModifierType;

    invoke-static {}, Lcom/prineside/tdi2/enums/ModifierType;->c()[Lcom/prineside/tdi2/enums/ModifierType;

    move-result-object v0

    sput-object v0, Lcom/prineside/tdi2/enums/ModifierType;->a:[Lcom/prineside/tdi2/enums/ModifierType;

    invoke-static {}, Lcom/prineside/tdi2/enums/ModifierType;->values()[Lcom/prineside/tdi2/enums/ModifierType;

    move-result-object v0

    sput-object v0, Lcom/prineside/tdi2/enums/ModifierType;->values:[Lcom/prineside/tdi2/enums/ModifierType;

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

.method public static synthetic c()[Lcom/prineside/tdi2/enums/ModifierType;
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/prineside/tdi2/enums/ModifierType;

    sget-object v1, Lcom/prineside/tdi2/enums/ModifierType;->BALANCE:Lcom/prineside/tdi2/enums/ModifierType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/ModifierType;->SEARCH:Lcom/prineside/tdi2/enums/ModifierType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/ModifierType;->POWER:Lcom/prineside/tdi2/enums/ModifierType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/ModifierType;->DAMAGE:Lcom/prineside/tdi2/enums/ModifierType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/ModifierType;->ATTACK_SPEED:Lcom/prineside/tdi2/enums/ModifierType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/ModifierType;->MINING_SPEED:Lcom/prineside/tdi2/enums/ModifierType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/ModifierType;->BOUNTY:Lcom/prineside/tdi2/enums/ModifierType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/ModifierType;->EXPERIENCE:Lcom/prineside/tdi2/enums/ModifierType;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/enums/ModifierType;
    .locals 1

    const-class v0, Lcom/prineside/tdi2/enums/ModifierType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/prineside/tdi2/enums/ModifierType;

    return-object p0
.end method

.method public static values()[Lcom/prineside/tdi2/enums/ModifierType;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/ModifierType;->a:[Lcom/prineside/tdi2/enums/ModifierType;

    invoke-virtual {v0}, [Lcom/prineside/tdi2/enums/ModifierType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/prineside/tdi2/enums/ModifierType;

    return-object v0
.end method
