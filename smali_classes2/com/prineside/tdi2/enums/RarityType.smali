.class public final enum Lcom/prineside/tdi2/enums/RarityType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/prineside/tdi2/enums/RarityType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum COMMON:Lcom/prineside/tdi2/enums/RarityType;

.field public static final enum EPIC:Lcom/prineside/tdi2/enums/RarityType;

.field public static final enum LEGENDARY:Lcom/prineside/tdi2/enums/RarityType;

.field public static final enum RARE:Lcom/prineside/tdi2/enums/RarityType;

.field public static final enum VERY_RARE:Lcom/prineside/tdi2/enums/RarityType;

.field public static final synthetic a:[Lcom/prineside/tdi2/enums/RarityType;

.field public static final values:[Lcom/prineside/tdi2/enums/RarityType;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/prineside/tdi2/enums/RarityType;

    const-string v1, "COMMON"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/enums/RarityType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/enums/RarityType;->COMMON:Lcom/prineside/tdi2/enums/RarityType;

    new-instance v0, Lcom/prineside/tdi2/enums/RarityType;

    const-string v1, "RARE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/enums/RarityType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/enums/RarityType;->RARE:Lcom/prineside/tdi2/enums/RarityType;

    new-instance v0, Lcom/prineside/tdi2/enums/RarityType;

    const-string v1, "VERY_RARE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/enums/RarityType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/enums/RarityType;->VERY_RARE:Lcom/prineside/tdi2/enums/RarityType;

    new-instance v0, Lcom/prineside/tdi2/enums/RarityType;

    const-string v1, "EPIC"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/enums/RarityType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/enums/RarityType;->EPIC:Lcom/prineside/tdi2/enums/RarityType;

    new-instance v0, Lcom/prineside/tdi2/enums/RarityType;

    const-string v1, "LEGENDARY"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/enums/RarityType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/enums/RarityType;->LEGENDARY:Lcom/prineside/tdi2/enums/RarityType;

    invoke-static {}, Lcom/prineside/tdi2/enums/RarityType;->c()[Lcom/prineside/tdi2/enums/RarityType;

    move-result-object v0

    sput-object v0, Lcom/prineside/tdi2/enums/RarityType;->a:[Lcom/prineside/tdi2/enums/RarityType;

    invoke-static {}, Lcom/prineside/tdi2/enums/RarityType;->values()[Lcom/prineside/tdi2/enums/RarityType;

    move-result-object v0

    sput-object v0, Lcom/prineside/tdi2/enums/RarityType;->values:[Lcom/prineside/tdi2/enums/RarityType;

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

.method public static synthetic c()[Lcom/prineside/tdi2/enums/RarityType;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/prineside/tdi2/enums/RarityType;

    sget-object v1, Lcom/prineside/tdi2/enums/RarityType;->COMMON:Lcom/prineside/tdi2/enums/RarityType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/RarityType;->RARE:Lcom/prineside/tdi2/enums/RarityType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/RarityType;->VERY_RARE:Lcom/prineside/tdi2/enums/RarityType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/RarityType;->EPIC:Lcom/prineside/tdi2/enums/RarityType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/RarityType;->LEGENDARY:Lcom/prineside/tdi2/enums/RarityType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/enums/RarityType;
    .locals 1

    const-class v0, Lcom/prineside/tdi2/enums/RarityType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/prineside/tdi2/enums/RarityType;

    return-object p0
.end method

.method public static values()[Lcom/prineside/tdi2/enums/RarityType;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/RarityType;->a:[Lcom/prineside/tdi2/enums/RarityType;

    invoke-virtual {v0}, [Lcom/prineside/tdi2/enums/RarityType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/prineside/tdi2/enums/RarityType;

    return-object v0
.end method
