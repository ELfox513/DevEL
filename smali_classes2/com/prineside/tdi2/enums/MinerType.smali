.class public final enum Lcom/prineside/tdi2/enums/MinerType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/prineside/tdi2/enums/MinerType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum INFIAR:Lcom/prineside/tdi2/enums/MinerType;

.field public static final enum MATRIX:Lcom/prineside/tdi2/enums/MinerType;

.field public static final enum SCALAR:Lcom/prineside/tdi2/enums/MinerType;

.field public static final enum TENSOR:Lcom/prineside/tdi2/enums/MinerType;

.field public static final enum VECTOR:Lcom/prineside/tdi2/enums/MinerType;

.field public static final synthetic a:[Lcom/prineside/tdi2/enums/MinerType;

.field public static final values:[Lcom/prineside/tdi2/enums/MinerType;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/prineside/tdi2/enums/MinerType;

    const-string v1, "SCALAR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/enums/MinerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/enums/MinerType;->SCALAR:Lcom/prineside/tdi2/enums/MinerType;

    new-instance v0, Lcom/prineside/tdi2/enums/MinerType;

    const-string v1, "VECTOR"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/enums/MinerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/enums/MinerType;->VECTOR:Lcom/prineside/tdi2/enums/MinerType;

    new-instance v0, Lcom/prineside/tdi2/enums/MinerType;

    const-string v1, "MATRIX"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/enums/MinerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/enums/MinerType;->MATRIX:Lcom/prineside/tdi2/enums/MinerType;

    new-instance v0, Lcom/prineside/tdi2/enums/MinerType;

    const-string v1, "TENSOR"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/enums/MinerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/enums/MinerType;->TENSOR:Lcom/prineside/tdi2/enums/MinerType;

    new-instance v0, Lcom/prineside/tdi2/enums/MinerType;

    const-string v1, "INFIAR"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/enums/MinerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/enums/MinerType;->INFIAR:Lcom/prineside/tdi2/enums/MinerType;

    invoke-static {}, Lcom/prineside/tdi2/enums/MinerType;->c()[Lcom/prineside/tdi2/enums/MinerType;

    move-result-object v0

    sput-object v0, Lcom/prineside/tdi2/enums/MinerType;->a:[Lcom/prineside/tdi2/enums/MinerType;

    invoke-static {}, Lcom/prineside/tdi2/enums/MinerType;->values()[Lcom/prineside/tdi2/enums/MinerType;

    move-result-object v0

    sput-object v0, Lcom/prineside/tdi2/enums/MinerType;->values:[Lcom/prineside/tdi2/enums/MinerType;

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

.method public static synthetic c()[Lcom/prineside/tdi2/enums/MinerType;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/prineside/tdi2/enums/MinerType;

    sget-object v1, Lcom/prineside/tdi2/enums/MinerType;->SCALAR:Lcom/prineside/tdi2/enums/MinerType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/MinerType;->VECTOR:Lcom/prineside/tdi2/enums/MinerType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/MinerType;->MATRIX:Lcom/prineside/tdi2/enums/MinerType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/MinerType;->TENSOR:Lcom/prineside/tdi2/enums/MinerType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/MinerType;->INFIAR:Lcom/prineside/tdi2/enums/MinerType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/enums/MinerType;
    .locals 1

    const-class v0, Lcom/prineside/tdi2/enums/MinerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/prineside/tdi2/enums/MinerType;

    return-object p0
.end method

.method public static values()[Lcom/prineside/tdi2/enums/MinerType;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/MinerType;->a:[Lcom/prineside/tdi2/enums/MinerType;

    invoke-virtual {v0}, [Lcom/prineside/tdi2/enums/MinerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/prineside/tdi2/enums/MinerType;

    return-object v0
.end method
