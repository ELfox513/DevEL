.class public Lcom/prineside/tdi2/managers/ShapeManager;
.super Lcom/prineside/tdi2/Manager$ManagerAdapter;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
    serializer = Lcom/prineside/tdi2/managers/ShapeManager$Serializer;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/managers/ShapeManager$Factories;,
        Lcom/prineside/tdi2/managers/ShapeManager$Serializer;
    }
.end annotation


# instance fields
.field public final F:Lcom/prineside/tdi2/managers/ShapeManager$Factories;

.field public final a:[Lcom/prineside/tdi2/Shape$Factory;


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Lcom/prineside/tdi2/Manager$ManagerAdapter;-><init>()V

    sget-object v0, Lcom/prineside/tdi2/enums/ShapeType;->values:[Lcom/prineside/tdi2/enums/ShapeType;

    array-length v1, v0

    new-array v1, v1, [Lcom/prineside/tdi2/Shape$Factory;

    iput-object v1, p0, Lcom/prineside/tdi2/managers/ShapeManager;->a:[Lcom/prineside/tdi2/Shape$Factory;

    new-instance v2, Lcom/prineside/tdi2/managers/ShapeManager$Factories;

    invoke-direct {v2}, Lcom/prineside/tdi2/managers/ShapeManager$Factories;-><init>()V

    iput-object v2, p0, Lcom/prineside/tdi2/managers/ShapeManager;->F:Lcom/prineside/tdi2/managers/ShapeManager$Factories;

    sget-object v3, Lcom/prineside/tdi2/enums/ShapeType;->MULTI_LINE:Lcom/prineside/tdi2/enums/ShapeType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    new-instance v4, Lcom/prineside/tdi2/shapes/MultiLine$MultiLineFactory;

    invoke-direct {v4}, Lcom/prineside/tdi2/shapes/MultiLine$MultiLineFactory;-><init>()V

    iput-object v4, v2, Lcom/prineside/tdi2/managers/ShapeManager$Factories;->MULTI_LINE:Lcom/prineside/tdi2/shapes/MultiLine$MultiLineFactory;

    aput-object v4, v1, v3

    sget-object v3, Lcom/prineside/tdi2/enums/ShapeType;->TRAIL_MULTI_LINE:Lcom/prineside/tdi2/enums/ShapeType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    new-instance v4, Lcom/prineside/tdi2/shapes/TrailMultiLine$TrailMultiLineFactory;

    invoke-direct {v4}, Lcom/prineside/tdi2/shapes/TrailMultiLine$TrailMultiLineFactory;-><init>()V

    iput-object v4, v2, Lcom/prineside/tdi2/managers/ShapeManager$Factories;->TRAIL_MULTI_LINE:Lcom/prineside/tdi2/shapes/TrailMultiLine$TrailMultiLineFactory;

    aput-object v4, v1, v3

    sget-object v3, Lcom/prineside/tdi2/enums/ShapeType;->CIRCLE:Lcom/prineside/tdi2/enums/ShapeType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    new-instance v4, Lcom/prineside/tdi2/shapes/Circle$CircleFactory;

    invoke-direct {v4}, Lcom/prineside/tdi2/shapes/Circle$CircleFactory;-><init>()V

    iput-object v4, v2, Lcom/prineside/tdi2/managers/ShapeManager$Factories;->CIRCLE:Lcom/prineside/tdi2/shapes/Circle$CircleFactory;

    aput-object v4, v1, v3

    sget-object v3, Lcom/prineside/tdi2/enums/ShapeType;->RANGE_CIRCLE:Lcom/prineside/tdi2/enums/ShapeType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    new-instance v4, Lcom/prineside/tdi2/shapes/RangeCircle$RangeCircleFactory;

    invoke-direct {v4}, Lcom/prineside/tdi2/shapes/RangeCircle$RangeCircleFactory;-><init>()V

    iput-object v4, v2, Lcom/prineside/tdi2/managers/ShapeManager$Factories;->RANGE_CIRCLE:Lcom/prineside/tdi2/shapes/RangeCircle$RangeCircleFactory;

    aput-object v4, v1, v3

    sget-object v3, Lcom/prineside/tdi2/enums/ShapeType;->BULLET_SMOKE_MULTI_LINE:Lcom/prineside/tdi2/enums/ShapeType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    new-instance v4, Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine$BulletSmokeMultiLineFactory;

    invoke-direct {v4}, Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine$BulletSmokeMultiLineFactory;-><init>()V

    iput-object v4, v2, Lcom/prineside/tdi2/managers/ShapeManager$Factories;->BULLET_SMOKE_MULTI_LINE:Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine$BulletSmokeMultiLineFactory;

    aput-object v4, v1, v3

    sget-object v3, Lcom/prineside/tdi2/enums/ShapeType;->PIE_CHART:Lcom/prineside/tdi2/enums/ShapeType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    new-instance v4, Lcom/prineside/tdi2/shapes/PieChart$PieChartFactory;

    invoke-direct {v4}, Lcom/prineside/tdi2/shapes/PieChart$PieChartFactory;-><init>()V

    iput-object v4, v2, Lcom/prineside/tdi2/managers/ShapeManager$Factories;->PIE_CHART:Lcom/prineside/tdi2/shapes/PieChart$PieChartFactory;

    aput-object v4, v1, v3

    sget-object v3, Lcom/prineside/tdi2/enums/ShapeType;->CHAIN_LIGHTNING:Lcom/prineside/tdi2/enums/ShapeType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    new-instance v4, Lcom/prineside/tdi2/shapes/ChainLightning$ChainLightningFactory;

    invoke-direct {v4}, Lcom/prineside/tdi2/shapes/ChainLightning$ChainLightningFactory;-><init>()V

    iput-object v4, v2, Lcom/prineside/tdi2/managers/ShapeManager$Factories;->CHAIN_LIGHTNING:Lcom/prineside/tdi2/shapes/ChainLightning$ChainLightningFactory;

    aput-object v4, v1, v3

    sget-object v3, Lcom/prineside/tdi2/enums/ShapeType;->STRAIGHT_MULTI_LINE:Lcom/prineside/tdi2/enums/ShapeType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    new-instance v4, Lcom/prineside/tdi2/shapes/StraightMultiLine$StraightMultiLineFactory;

    invoke-direct {v4}, Lcom/prineside/tdi2/shapes/StraightMultiLine$StraightMultiLineFactory;-><init>()V

    iput-object v4, v2, Lcom/prineside/tdi2/managers/ShapeManager$Factories;->STRAIGHT_MULTI_LINE:Lcom/prineside/tdi2/shapes/StraightMultiLine$StraightMultiLineFactory;

    aput-object v4, v1, v3

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/prineside/tdi2/managers/ShapeManager;->a:[Lcom/prineside/tdi2/Shape$Factory;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget-object v3, v4, v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not all shape factories were created"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    return-void
.end method

.method public getFactory(Lcom/prineside/tdi2/enums/ShapeType;)Lcom/prineside/tdi2/Shape$Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/prineside/tdi2/enums/ShapeType;",
            ")",
            "Lcom/prineside/tdi2/Shape$Factory<",
            "+",
            "Lcom/prineside/tdi2/Shape;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/prineside/tdi2/managers/ShapeManager;->a:[Lcom/prineside/tdi2/Shape$Factory;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public setup()V
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/managers/ShapeManager;->a:[Lcom/prineside/tdi2/Shape$Factory;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/prineside/tdi2/Shape$Factory;->setup()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
