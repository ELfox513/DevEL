.class public final enum Lcom/prineside/tdi2/enums/BossTileType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/prineside/tdi2/enums/BossTileType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CUSTOM:Lcom/prineside/tdi2/enums/BossTileType;

.field public static final enum HARD:Lcom/prineside/tdi2/enums/BossTileType;

.field public static final enum NO:Lcom/prineside/tdi2/enums/BossTileType;

.field public static final enum ONE:Lcom/prineside/tdi2/enums/BossTileType;

.field public static final enum RARE:Lcom/prineside/tdi2/enums/BossTileType;

.field public static final synthetic a:[Lcom/prineside/tdi2/enums/BossTileType;

.field public static final values:[Lcom/prineside/tdi2/enums/BossTileType;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/prineside/tdi2/enums/BossTileType;

    const-string v1, "NO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/enums/BossTileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/enums/BossTileType;->NO:Lcom/prineside/tdi2/enums/BossTileType;

    new-instance v0, Lcom/prineside/tdi2/enums/BossTileType;

    const-string v1, "RARE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/enums/BossTileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/enums/BossTileType;->RARE:Lcom/prineside/tdi2/enums/BossTileType;

    new-instance v0, Lcom/prineside/tdi2/enums/BossTileType;

    const-string v1, "ONE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/enums/BossTileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/enums/BossTileType;->ONE:Lcom/prineside/tdi2/enums/BossTileType;

    new-instance v0, Lcom/prineside/tdi2/enums/BossTileType;

    const-string v1, "HARD"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/enums/BossTileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/enums/BossTileType;->HARD:Lcom/prineside/tdi2/enums/BossTileType;

    new-instance v0, Lcom/prineside/tdi2/enums/BossTileType;

    const-string v1, "CUSTOM"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/enums/BossTileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/enums/BossTileType;->CUSTOM:Lcom/prineside/tdi2/enums/BossTileType;

    invoke-static {}, Lcom/prineside/tdi2/enums/BossTileType;->c()[Lcom/prineside/tdi2/enums/BossTileType;

    move-result-object v0

    sput-object v0, Lcom/prineside/tdi2/enums/BossTileType;->a:[Lcom/prineside/tdi2/enums/BossTileType;

    invoke-static {}, Lcom/prineside/tdi2/enums/BossTileType;->values()[Lcom/prineside/tdi2/enums/BossTileType;

    move-result-object v0

    sput-object v0, Lcom/prineside/tdi2/enums/BossTileType;->values:[Lcom/prineside/tdi2/enums/BossTileType;

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

.method public static synthetic c()[Lcom/prineside/tdi2/enums/BossTileType;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/prineside/tdi2/enums/BossTileType;

    sget-object v1, Lcom/prineside/tdi2/enums/BossTileType;->NO:Lcom/prineside/tdi2/enums/BossTileType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/BossTileType;->RARE:Lcom/prineside/tdi2/enums/BossTileType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/BossTileType;->ONE:Lcom/prineside/tdi2/enums/BossTileType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/BossTileType;->HARD:Lcom/prineside/tdi2/enums/BossTileType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/BossTileType;->CUSTOM:Lcom/prineside/tdi2/enums/BossTileType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/enums/BossTileType;
    .locals 1

    const-class v0, Lcom/prineside/tdi2/enums/BossTileType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/prineside/tdi2/enums/BossTileType;

    return-object p0
.end method

.method public static values()[Lcom/prineside/tdi2/enums/BossTileType;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/BossTileType;->a:[Lcom/prineside/tdi2/enums/BossTileType;

    invoke-virtual {v0}, [Lcom/prineside/tdi2/enums/BossTileType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/prineside/tdi2/enums/BossTileType;

    return-object v0
.end method
