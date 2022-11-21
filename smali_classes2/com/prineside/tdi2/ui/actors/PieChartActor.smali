.class public Lcom/prineside/tdi2/ui/actors/PieChartActor;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# instance fields
.field public I:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;",
            ">;"
        }
    .end annotation
.end field

.field public J:F

.field public K:F

.field public L:F

.field public M:I

.field public final chart:Lcom/prineside/tdi2/shapes/PieChart;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/prineside/tdi2/ui/actors/PieChartActor;->L:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/prineside/tdi2/ui/actors/PieChartActor;->M:I

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->shapeManager:Lcom/prineside/tdi2/managers/ShapeManager;

    sget-object v1, Lcom/prineside/tdi2/enums/ShapeType;->PIE_CHART:Lcom/prineside/tdi2/enums/ShapeType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/ShapeManager;->getFactory(Lcom/prineside/tdi2/enums/ShapeType;)Lcom/prineside/tdi2/Shape$Factory;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/shapes/PieChart$PieChartFactory;

    invoke-virtual {v0}, Lcom/prineside/tdi2/Shape$Factory;->obtain()Lcom/prineside/tdi2/Shape;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/shapes/PieChart;

    iput-object v0, p0, Lcom/prineside/tdi2/ui/actors/PieChartActor;->chart:Lcom/prineside/tdi2/shapes/PieChart;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->shapeManager:Lcom/prineside/tdi2/managers/ShapeManager;

    sget-object v1, Lcom/prineside/tdi2/enums/ShapeType;->PIE_CHART:Lcom/prineside/tdi2/enums/ShapeType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/ShapeManager;->getFactory(Lcom/prineside/tdi2/enums/ShapeType;)Lcom/prineside/tdi2/Shape$Factory;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/shapes/PieChart$PieChartFactory;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/actors/PieChartActor;->chart:Lcom/prineside/tdi2/shapes/PieChart;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/Shape$Factory;->free(Lcom/prineside/tdi2/Shape;)V

    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V
    .locals 9

    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V

    iget-object p2, p0, Lcom/prineside/tdi2/ui/actors/PieChartActor;->I:Lcom/badlogic/gdx/utils/Array;

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getX()F

    move-result p2

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    add-float/2addr p2, v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getY()F

    move-result v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v2

    div-float/2addr v2, v1

    add-float/2addr v0, v2

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v2

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v2

    :goto_0
    div-float/2addr v2, v1

    move v8, v2

    iget v2, p0, Lcom/prineside/tdi2/ui/actors/PieChartActor;->J:F

    cmpl-float v2, p2, v2

    if-nez v2, :cond_2

    iget v2, p0, Lcom/prineside/tdi2/ui/actors/PieChartActor;->K:F

    cmpl-float v2, v0, v2

    if-nez v2, :cond_2

    iget v2, p0, Lcom/prineside/tdi2/ui/actors/PieChartActor;->L:F

    cmpl-float v2, v8, v2

    if-eqz v2, :cond_4

    :cond_2
    iget v2, p0, Lcom/prineside/tdi2/ui/actors/PieChartActor;->M:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    mul-float v1, v1, v8

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v1, v2}, Ljava/lang/StrictMath;->max(FF)F

    move-result v1

    float-to-int v1, v1

    move v6, v1

    goto :goto_1

    :cond_3
    move v6, v2

    :goto_1
    iget-object v2, p0, Lcom/prineside/tdi2/ui/actors/PieChartActor;->chart:Lcom/prineside/tdi2/shapes/PieChart;

    iget-object v7, p0, Lcom/prineside/tdi2/ui/actors/PieChartActor;->I:Lcom/badlogic/gdx/utils/Array;

    move v3, p2

    move v4, v0

    move v5, v8

    invoke-virtual/range {v2 .. v7}, Lcom/prineside/tdi2/shapes/PieChart;->setup(FFFILcom/badlogic/gdx/utils/Array;)V

    iput p2, p0, Lcom/prineside/tdi2/ui/actors/PieChartActor;->J:F

    iput v0, p0, Lcom/prineside/tdi2/ui/actors/PieChartActor;->K:F

    iput v8, p0, Lcom/prineside/tdi2/ui/actors/PieChartActor;->L:F

    :cond_4
    iget-object p2, p0, Lcom/prineside/tdi2/ui/actors/PieChartActor;->chart:Lcom/prineside/tdi2/shapes/PieChart;

    invoke-virtual {p2, p1}, Lcom/prineside/tdi2/shapes/PieChart;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    return-void
.end method

.method public getConfigs()Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/PieChartActor;->I:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public setConfigs(Lcom/badlogic/gdx/utils/Array;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prineside/tdi2/ui/actors/PieChartActor;->I:Lcom/badlogic/gdx/utils/Array;

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lcom/prineside/tdi2/ui/actors/PieChartActor;->L:F

    return-void
.end method

.method public setSegmentCount(I)V
    .locals 0

    iput p1, p0, Lcom/prineside/tdi2/ui/actors/PieChartActor;->M:I

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lcom/prineside/tdi2/ui/actors/PieChartActor;->L:F

    return-void
.end method
