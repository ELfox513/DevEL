.class public final enum Lcom/prineside/tdi2/enums/BossType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
    arrayLevels = 0x1
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/prineside/tdi2/enums/BossType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BROOT:Lcom/prineside/tdi2/enums/BossType;

.field public static final enum CONSTRUCTOR:Lcom/prineside/tdi2/enums/BossType;

.field public static final enum METAPHOR:Lcom/prineside/tdi2/enums/BossType;

.field public static final enum MOBCHAIN:Lcom/prineside/tdi2/enums/BossType;

.field public static final enum SNAKE:Lcom/prineside/tdi2/enums/BossType;

.field public static final synthetic a:[Lcom/prineside/tdi2/enums/BossType;

.field public static final values:[Lcom/prineside/tdi2/enums/BossType;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/prineside/tdi2/enums/BossType;

    const-string v1, "BROOT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/enums/BossType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/enums/BossType;->BROOT:Lcom/prineside/tdi2/enums/BossType;

    new-instance v0, Lcom/prineside/tdi2/enums/BossType;

    const-string v1, "SNAKE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/enums/BossType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/enums/BossType;->SNAKE:Lcom/prineside/tdi2/enums/BossType;

    new-instance v0, Lcom/prineside/tdi2/enums/BossType;

    const-string v1, "CONSTRUCTOR"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/enums/BossType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/enums/BossType;->CONSTRUCTOR:Lcom/prineside/tdi2/enums/BossType;

    new-instance v0, Lcom/prineside/tdi2/enums/BossType;

    const-string v1, "MOBCHAIN"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/enums/BossType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/enums/BossType;->MOBCHAIN:Lcom/prineside/tdi2/enums/BossType;

    new-instance v0, Lcom/prineside/tdi2/enums/BossType;

    const-string v1, "METAPHOR"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/enums/BossType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/enums/BossType;->METAPHOR:Lcom/prineside/tdi2/enums/BossType;

    invoke-static {}, Lcom/prineside/tdi2/enums/BossType;->c()[Lcom/prineside/tdi2/enums/BossType;

    move-result-object v0

    sput-object v0, Lcom/prineside/tdi2/enums/BossType;->a:[Lcom/prineside/tdi2/enums/BossType;

    invoke-static {}, Lcom/prineside/tdi2/enums/BossType;->values()[Lcom/prineside/tdi2/enums/BossType;

    move-result-object v0

    sput-object v0, Lcom/prineside/tdi2/enums/BossType;->values:[Lcom/prineside/tdi2/enums/BossType;

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

.method public static synthetic c()[Lcom/prineside/tdi2/enums/BossType;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/prineside/tdi2/enums/BossType;

    sget-object v1, Lcom/prineside/tdi2/enums/BossType;->BROOT:Lcom/prineside/tdi2/enums/BossType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/BossType;->SNAKE:Lcom/prineside/tdi2/enums/BossType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/BossType;->CONSTRUCTOR:Lcom/prineside/tdi2/enums/BossType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/BossType;->MOBCHAIN:Lcom/prineside/tdi2/enums/BossType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/BossType;->METAPHOR:Lcom/prineside/tdi2/enums/BossType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/enums/BossType;
    .locals 1

    const-class v0, Lcom/prineside/tdi2/enums/BossType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/prineside/tdi2/enums/BossType;

    return-object p0
.end method

.method public static values()[Lcom/prineside/tdi2/enums/BossType;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/BossType;->a:[Lcom/prineside/tdi2/enums/BossType;

    invoke-virtual {v0}, [Lcom/prineside/tdi2/enums/BossType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/prineside/tdi2/enums/BossType;

    return-object v0
.end method
