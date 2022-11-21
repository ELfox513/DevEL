.class public Lcom/prineside/tdi2/ui/actors/ButtonHoldHint;
.super Lcom/prineside/tdi2/ui/actors/PieChartActor;
.source "SourceFile"


# instance fields
.field public N:F

.field public O:F

.field public final P:Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;

.field public final Q:Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;

.field public final R:F

.field public final S:F

.field public final T:F

.field public disappearing:Z


# direct methods
.method public constructor <init>(FFF)V
    .locals 5

    invoke-direct {p0}, Lcom/prineside/tdi2/ui/actors/PieChartActor;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prineside/tdi2/ui/actors/ButtonHoldHint;->disappearing:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/prineside/tdi2/ui/actors/ButtonHoldHint;->N:F

    iput v0, p0, Lcom/prineside/tdi2/ui/actors/ButtonHoldHint;->O:F

    iput p3, p0, Lcom/prineside/tdi2/ui/actors/ButtonHoldHint;->T:F

    iput p1, p0, Lcom/prineside/tdi2/ui/actors/ButtonHoldHint;->R:F

    iput p2, p0, Lcom/prineside/tdi2/ui/actors/ButtonHoldHint;->S:F

    new-instance p3, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {p3}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    new-instance v1, Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;

    sget-object v2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    invoke-direct {v1, v2, v0, v0}, Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;-><init>(Lcom/badlogic/gdx/graphics/Color;FF)V

    iput-object v1, p0, Lcom/prineside/tdi2/ui/actors/ButtonHoldHint;->P:Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;

    new-instance v2, Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;

    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v3, v0, v0, v0, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-direct {v2, v3, v4, v0}, Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;-><init>(Lcom/badlogic/gdx/graphics/Color;FF)V

    iput-object v2, p0, Lcom/prineside/tdi2/ui/actors/ButtonHoldHint;->Q:Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;

    invoke-virtual {p3, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    invoke-virtual {p3, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/actors/PieChartActor;->chart:Lcom/prineside/tdi2/shapes/PieChart;

    sget-object v2, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v2}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v2

    sget-object v3, Lcom/badlogic/gdx/Application$ApplicationType;->Desktop:Lcom/badlogic/gdx/Application$ApplicationType;

    if-ne v2, v3, :cond_0

    const/high16 v2, 0x41400000    # 12.0f

    goto :goto_0

    :cond_0
    const/high16 v2, 0x41900000    # 18.0f

    :goto_0
    iput v2, v1, Lcom/prineside/tdi2/shapes/PieChart;->innerRadius:F

    iget-object v1, p0, Lcom/prineside/tdi2/ui/actors/PieChartActor;->chart:Lcom/prineside/tdi2/shapes/PieChart;

    const/high16 v2, -0x40800000    # -1.0f

    iput v2, v1, Lcom/prineside/tdi2/shapes/PieChart;->rotationDirection:F

    const v2, 0x3f490fdb

    iput v2, v1, Lcom/prineside/tdi2/shapes/PieChart;->angleShiftRad:F

    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v1}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v1

    if-ne v1, v3, :cond_1

    const/high16 v1, 0x42400000    # 48.0f

    goto :goto_1

    :cond_1
    const/high16 v1, 0x42900000    # 72.0f

    :goto_1
    invoke-virtual {p0, v1, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v1, v1, v2

    sub-float/2addr p1, v1

    sub-float/2addr p2, v1

    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v1}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v1

    if-ne v1, v3, :cond_2

    goto :goto_2

    :cond_2
    const/high16 v0, 0x43200000    # 160.0f

    :goto_2
    add-float/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {p0, p3}, Lcom/prineside/tdi2/ui/actors/PieChartActor;->setConfigs(Lcom/badlogic/gdx/utils/Array;)V

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V
    .locals 6

    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/actors/ButtonHoldHint;->disappearing:Z

    const v1, 0x3e4ccccd    # 0.2f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-nez v0, :cond_4

    iget v0, p0, Lcom/prineside/tdi2/ui/actors/ButtonHoldHint;->N:F

    sget-object v4, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v4}, Lcom/badlogic/gdx/Graphics;->getDeltaTime()F

    move-result v4

    add-float/2addr v0, v4

    iput v0, p0, Lcom/prineside/tdi2/ui/actors/ButtonHoldHint;->N:F

    const v4, 0x3dcccccd    # 0.1f

    iget v5, p0, Lcom/prineside/tdi2/ui/actors/ButtonHoldHint;->T:F

    cmpg-float v1, v5, v1

    if-gez v1, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f000000    # 0.5f

    cmpg-float v1, v5, v1

    if-gez v1, :cond_1

    const v4, 0x3d4ccccd    # 0.05f

    :cond_1
    :goto_0
    sub-float/2addr v0, v4

    sub-float/2addr v5, v4

    div-float/2addr v0, v5

    cmpl-float v1, v0, v3

    if-lez v1, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_2
    cmpg-float v1, v0, v2

    if-gez v1, :cond_3

    goto :goto_1

    :cond_3
    move v2, v0

    :goto_1
    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ButtonHoldHint;->P:Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;

    iget-object v1, v0, Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;->color:Lcom/badlogic/gdx/graphics/Color;

    const/high16 v4, 0x3e800000    # 0.25f

    mul-float v4, v4, v2

    iput v4, v1, Lcom/badlogic/gdx/graphics/Color;->a:F

    iput v2, v0, Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;->value:F

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ButtonHoldHint;->Q:Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;

    sub-float/2addr v3, v2

    iput v3, v0, Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;->value:F

    iget-object v0, v0, Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;->color:Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3e0f5c29    # 0.14f

    mul-float v2, v2, v1

    iput v2, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    goto :goto_3

    :cond_4
    iget v0, p0, Lcom/prineside/tdi2/ui/actors/ButtonHoldHint;->O:F

    const/high16 v4, -0x40800000    # -1.0f

    cmpg-float v4, v0, v4

    if-gtz v4, :cond_5

    return-void

    :cond_5
    sget-object v4, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v4}, Lcom/badlogic/gdx/Graphics;->getDeltaTime()F

    move-result v4

    add-float/2addr v0, v4

    iput v0, p0, Lcom/prineside/tdi2/ui/actors/ButtonHoldHint;->O:F

    iget-object v4, p0, Lcom/prineside/tdi2/ui/actors/ButtonHoldHint;->P:Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;

    iget-object v5, v4, Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;->color:Lcom/badlogic/gdx/graphics/Color;

    iput v3, v5, Lcom/badlogic/gdx/graphics/Color;->a:F

    iput v3, v4, Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;->value:F

    iget-object v3, p0, Lcom/prineside/tdi2/ui/actors/ButtonHoldHint;->Q:Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;

    iput v2, v3, Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;->value:F

    cmpg-float v2, v0, v1

    if-gtz v2, :cond_7

    div-float/2addr v0, v1

    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v1}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v1

    sget-object v2, Lcom/badlogic/gdx/Application$ApplicationType;->Desktop:Lcom/badlogic/gdx/Application$ApplicationType;

    if-ne v1, v2, :cond_6

    const/high16 v1, 0x41400000    # 12.0f

    goto :goto_2

    :cond_6
    const/high16 v1, 0x41900000    # 18.0f

    :goto_2
    iget-object v2, p0, Lcom/prineside/tdi2/ui/actors/PieChartActor;->chart:Lcom/prineside/tdi2/shapes/PieChart;

    mul-float v0, v0, v1

    add-float/2addr v1, v0

    iput v1, v2, Lcom/prineside/tdi2/shapes/PieChart;->innerRadius:F

    :goto_3
    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/PieChartActor;->chart:Lcom/prineside/tdi2/shapes/PieChart;

    invoke-virtual {v0}, Lcom/prineside/tdi2/shapes/PieChart;->requestVerticesRebuild()V

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/ui/actors/PieChartActor;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V

    return-void

    :cond_7
    const/high16 p1, -0x40000000    # -2.0f

    iput p1, p0, Lcom/prineside/tdi2/ui/actors/ButtonHoldHint;->O:F

    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance p2, Lcom/prineside/tdi2/ui/actors/a;

    invoke-direct {p2, p0}, Lcom/prineside/tdi2/ui/actors/a;-><init>(Lcom/prineside/tdi2/ui/actors/ButtonHoldHint;)V

    invoke-interface {p1, p2}, Lcom/badlogic/gdx/Application;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method
