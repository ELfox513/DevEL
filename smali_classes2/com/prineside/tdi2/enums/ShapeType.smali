.class public final enum Lcom/prineside/tdi2/enums/ShapeType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/prineside/tdi2/enums/ShapeType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BULLET_SMOKE_MULTI_LINE:Lcom/prineside/tdi2/enums/ShapeType;

.field public static final enum CHAIN_LIGHTNING:Lcom/prineside/tdi2/enums/ShapeType;

.field public static final enum CIRCLE:Lcom/prineside/tdi2/enums/ShapeType;

.field public static final enum MULTI_LINE:Lcom/prineside/tdi2/enums/ShapeType;

.field public static final enum PIE_CHART:Lcom/prineside/tdi2/enums/ShapeType;

.field public static final enum RANGE_CIRCLE:Lcom/prineside/tdi2/enums/ShapeType;

.field public static final enum STRAIGHT_MULTI_LINE:Lcom/prineside/tdi2/enums/ShapeType;

.field public static final enum TRAIL_MULTI_LINE:Lcom/prineside/tdi2/enums/ShapeType;

.field public static final synthetic a:[Lcom/prineside/tdi2/enums/ShapeType;

.field public static final values:[Lcom/prineside/tdi2/enums/ShapeType;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/prineside/tdi2/enums/ShapeType;

    const-string v1, "MULTI_LINE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/enums/ShapeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/enums/ShapeType;->MULTI_LINE:Lcom/prineside/tdi2/enums/ShapeType;

    new-instance v0, Lcom/prineside/tdi2/enums/ShapeType;

    const-string v1, "STRAIGHT_MULTI_LINE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/enums/ShapeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/enums/ShapeType;->STRAIGHT_MULTI_LINE:Lcom/prineside/tdi2/enums/ShapeType;

    new-instance v0, Lcom/prineside/tdi2/enums/ShapeType;

    const-string v1, "TRAIL_MULTI_LINE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/enums/ShapeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/enums/ShapeType;->TRAIL_MULTI_LINE:Lcom/prineside/tdi2/enums/ShapeType;

    new-instance v0, Lcom/prineside/tdi2/enums/ShapeType;

    const-string v1, "BULLET_SMOKE_MULTI_LINE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/enums/ShapeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/enums/ShapeType;->BULLET_SMOKE_MULTI_LINE:Lcom/prineside/tdi2/enums/ShapeType;

    new-instance v0, Lcom/prineside/tdi2/enums/ShapeType;

    const-string v1, "CIRCLE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/enums/ShapeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/enums/ShapeType;->CIRCLE:Lcom/prineside/tdi2/enums/ShapeType;

    new-instance v0, Lcom/prineside/tdi2/enums/ShapeType;

    const-string v1, "PIE_CHART"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/enums/ShapeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/enums/ShapeType;->PIE_CHART:Lcom/prineside/tdi2/enums/ShapeType;

    new-instance v0, Lcom/prineside/tdi2/enums/ShapeType;

    const-string v1, "CHAIN_LIGHTNING"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/enums/ShapeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/enums/ShapeType;->CHAIN_LIGHTNING:Lcom/prineside/tdi2/enums/ShapeType;

    new-instance v0, Lcom/prineside/tdi2/enums/ShapeType;

    const-string v1, "RANGE_CIRCLE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/enums/ShapeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/enums/ShapeType;->RANGE_CIRCLE:Lcom/prineside/tdi2/enums/ShapeType;

    invoke-static {}, Lcom/prineside/tdi2/enums/ShapeType;->c()[Lcom/prineside/tdi2/enums/ShapeType;

    move-result-object v0

    sput-object v0, Lcom/prineside/tdi2/enums/ShapeType;->a:[Lcom/prineside/tdi2/enums/ShapeType;

    invoke-static {}, Lcom/prineside/tdi2/enums/ShapeType;->values()[Lcom/prineside/tdi2/enums/ShapeType;

    move-result-object v0

    sput-object v0, Lcom/prineside/tdi2/enums/ShapeType;->values:[Lcom/prineside/tdi2/enums/ShapeType;

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

.method public static synthetic c()[Lcom/prineside/tdi2/enums/ShapeType;
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/prineside/tdi2/enums/ShapeType;

    sget-object v1, Lcom/prineside/tdi2/enums/ShapeType;->MULTI_LINE:Lcom/prineside/tdi2/enums/ShapeType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/ShapeType;->STRAIGHT_MULTI_LINE:Lcom/prineside/tdi2/enums/ShapeType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/ShapeType;->TRAIL_MULTI_LINE:Lcom/prineside/tdi2/enums/ShapeType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/ShapeType;->BULLET_SMOKE_MULTI_LINE:Lcom/prineside/tdi2/enums/ShapeType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/ShapeType;->CIRCLE:Lcom/prineside/tdi2/enums/ShapeType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/ShapeType;->PIE_CHART:Lcom/prineside/tdi2/enums/ShapeType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/ShapeType;->CHAIN_LIGHTNING:Lcom/prineside/tdi2/enums/ShapeType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/ShapeType;->RANGE_CIRCLE:Lcom/prineside/tdi2/enums/ShapeType;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/enums/ShapeType;
    .locals 1

    const-class v0, Lcom/prineside/tdi2/enums/ShapeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/prineside/tdi2/enums/ShapeType;

    return-object p0
.end method

.method public static values()[Lcom/prineside/tdi2/enums/ShapeType;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/ShapeType;->a:[Lcom/prineside/tdi2/enums/ShapeType;

    invoke-virtual {v0}, [Lcom/prineside/tdi2/enums/ShapeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/prineside/tdi2/enums/ShapeType;

    return-object v0
.end method
