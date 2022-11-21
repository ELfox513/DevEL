.class public final enum Lcom/prineside/tdi2/enums/PredefinedCoreTileType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/prineside/tdi2/enums/PredefinedCoreTileType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ALPHA:Lcom/prineside/tdi2/enums/PredefinedCoreTileType;

.field public static final enum BETA:Lcom/prineside/tdi2/enums/PredefinedCoreTileType;

.field public static final enum DELTA:Lcom/prineside/tdi2/enums/PredefinedCoreTileType;

.field public static final enum THETA:Lcom/prineside/tdi2/enums/PredefinedCoreTileType;

.field public static final enum XI:Lcom/prineside/tdi2/enums/PredefinedCoreTileType;

.field public static final enum ZETA:Lcom/prineside/tdi2/enums/PredefinedCoreTileType;

.field public static final synthetic a:[Lcom/prineside/tdi2/enums/PredefinedCoreTileType;

.field public static final values:[Lcom/prineside/tdi2/enums/PredefinedCoreTileType;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/prineside/tdi2/enums/PredefinedCoreTileType;

    const-string v1, "ALPHA"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/enums/PredefinedCoreTileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/enums/PredefinedCoreTileType;->ALPHA:Lcom/prineside/tdi2/enums/PredefinedCoreTileType;

    new-instance v0, Lcom/prineside/tdi2/enums/PredefinedCoreTileType;

    const-string v1, "BETA"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/enums/PredefinedCoreTileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/enums/PredefinedCoreTileType;->BETA:Lcom/prineside/tdi2/enums/PredefinedCoreTileType;

    new-instance v0, Lcom/prineside/tdi2/enums/PredefinedCoreTileType;

    const-string v1, "DELTA"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/enums/PredefinedCoreTileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/enums/PredefinedCoreTileType;->DELTA:Lcom/prineside/tdi2/enums/PredefinedCoreTileType;

    new-instance v0, Lcom/prineside/tdi2/enums/PredefinedCoreTileType;

    const-string v1, "THETA"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/enums/PredefinedCoreTileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/enums/PredefinedCoreTileType;->THETA:Lcom/prineside/tdi2/enums/PredefinedCoreTileType;

    new-instance v0, Lcom/prineside/tdi2/enums/PredefinedCoreTileType;

    const-string v1, "ZETA"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/enums/PredefinedCoreTileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/enums/PredefinedCoreTileType;->ZETA:Lcom/prineside/tdi2/enums/PredefinedCoreTileType;

    new-instance v0, Lcom/prineside/tdi2/enums/PredefinedCoreTileType;

    const-string v1, "XI"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/enums/PredefinedCoreTileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/enums/PredefinedCoreTileType;->XI:Lcom/prineside/tdi2/enums/PredefinedCoreTileType;

    invoke-static {}, Lcom/prineside/tdi2/enums/PredefinedCoreTileType;->c()[Lcom/prineside/tdi2/enums/PredefinedCoreTileType;

    move-result-object v0

    sput-object v0, Lcom/prineside/tdi2/enums/PredefinedCoreTileType;->a:[Lcom/prineside/tdi2/enums/PredefinedCoreTileType;

    invoke-static {}, Lcom/prineside/tdi2/enums/PredefinedCoreTileType;->values()[Lcom/prineside/tdi2/enums/PredefinedCoreTileType;

    move-result-object v0

    sput-object v0, Lcom/prineside/tdi2/enums/PredefinedCoreTileType;->values:[Lcom/prineside/tdi2/enums/PredefinedCoreTileType;

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

.method public static synthetic c()[Lcom/prineside/tdi2/enums/PredefinedCoreTileType;
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/prineside/tdi2/enums/PredefinedCoreTileType;

    sget-object v1, Lcom/prineside/tdi2/enums/PredefinedCoreTileType;->ALPHA:Lcom/prineside/tdi2/enums/PredefinedCoreTileType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/PredefinedCoreTileType;->BETA:Lcom/prineside/tdi2/enums/PredefinedCoreTileType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/PredefinedCoreTileType;->DELTA:Lcom/prineside/tdi2/enums/PredefinedCoreTileType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/PredefinedCoreTileType;->THETA:Lcom/prineside/tdi2/enums/PredefinedCoreTileType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/PredefinedCoreTileType;->ZETA:Lcom/prineside/tdi2/enums/PredefinedCoreTileType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/PredefinedCoreTileType;->XI:Lcom/prineside/tdi2/enums/PredefinedCoreTileType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/enums/PredefinedCoreTileType;
    .locals 1

    const-class v0, Lcom/prineside/tdi2/enums/PredefinedCoreTileType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/prineside/tdi2/enums/PredefinedCoreTileType;

    return-object p0
.end method

.method public static values()[Lcom/prineside/tdi2/enums/PredefinedCoreTileType;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/PredefinedCoreTileType;->a:[Lcom/prineside/tdi2/enums/PredefinedCoreTileType;

    invoke-virtual {v0}, [Lcom/prineside/tdi2/enums/PredefinedCoreTileType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/prineside/tdi2/enums/PredefinedCoreTileType;

    return-object v0
.end method
