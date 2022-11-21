.class public Lcom/prineside/tdi2/ui/actors/LinearChartActor;
.super Lcom/badlogic/gdx/scenes/scene2d/Actor;
.source "SourceFile"


# static fields
.field public static O:Lcom/badlogic/gdx/math/Vector2;


# instance fields
.field public F:Lcom/prineside/tdi2/shapes/MultiLine;

.field public G:F

.field public H:Lcom/badlogic/gdx/graphics/Color;

.field public I:Lcom/badlogic/gdx/utils/FloatArray;

.field public J:F

.field public K:F

.field public L:F

.field public M:F

.field public N:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/ui/actors/LinearChartActor;->O:Lcom/badlogic/gdx/math/Vector2;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;-><init>()V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/ui/actors/LinearChartActor;->G:F

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Lcom/prineside/tdi2/ui/actors/LinearChartActor;->H:Lcom/badlogic/gdx/graphics/Color;

    new-instance v0, Lcom/badlogic/gdx/utils/FloatArray;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/FloatArray;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/ui/actors/LinearChartActor;->I:Lcom/badlogic/gdx/utils/FloatArray;

    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Lcom/prineside/tdi2/ui/actors/LinearChartActor;->J:F

    return-void
.end method


# virtual methods
.method public act(F)V
    .locals 13

    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->act(F)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/LinearChartActor;->I:Lcom/badlogic/gdx/utils/FloatArray;

    iget p1, p1, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    const/4 v0, 0x2

    if-ge p1, v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/LinearChartActor;->N:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    if-nez p1, :cond_1

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v0, "blank"

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object p1

    iput-object p1, p0, Lcom/prineside/tdi2/ui/actors/LinearChartActor;->N:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    :cond_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result p1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v0

    sget-object v1, Lcom/prineside/tdi2/ui/actors/LinearChartActor;->O:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v1}, Lcom/badlogic/gdx/math/Vector2;->setZero()Lcom/badlogic/gdx/math/Vector2;

    sget-object v1, Lcom/prineside/tdi2/ui/actors/LinearChartActor;->O:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->localToStageCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    sget-object v1, Lcom/prineside/tdi2/ui/actors/LinearChartActor;->O:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, p0, Lcom/prineside/tdi2/ui/actors/LinearChartActor;->J:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v2, p0, Lcom/prineside/tdi2/ui/actors/LinearChartActor;->K:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    iget v1, p0, Lcom/prineside/tdi2/ui/actors/LinearChartActor;->L:F

    cmpl-float v1, p1, v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/prineside/tdi2/ui/actors/LinearChartActor;->M:F

    cmpl-float v1, v0, v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/prineside/tdi2/ui/actors/LinearChartActor;->F:Lcom/prineside/tdi2/shapes/MultiLine;

    if-nez v1, :cond_5

    :cond_2
    iget-object v1, p0, Lcom/prineside/tdi2/ui/actors/LinearChartActor;->F:Lcom/prineside/tdi2/shapes/MultiLine;

    if-nez v1, :cond_3

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->shapeManager:Lcom/prineside/tdi2/managers/ShapeManager;

    sget-object v2, Lcom/prineside/tdi2/enums/ShapeType;->MULTI_LINE:Lcom/prineside/tdi2/enums/ShapeType;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/ShapeManager;->getFactory(Lcom/prineside/tdi2/enums/ShapeType;)Lcom/prineside/tdi2/Shape$Factory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/prineside/tdi2/Shape$Factory;->obtain()Lcom/prineside/tdi2/Shape;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/shapes/MultiLine;

    iput-object v1, p0, Lcom/prineside/tdi2/ui/actors/LinearChartActor;->F:Lcom/prineside/tdi2/shapes/MultiLine;

    :cond_3
    iget-object v1, p0, Lcom/prineside/tdi2/ui/actors/LinearChartActor;->F:Lcom/prineside/tdi2/shapes/MultiLine;

    invoke-virtual {v1}, Lcom/prineside/tdi2/shapes/MultiLine;->reset()V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/actors/LinearChartActor;->F:Lcom/prineside/tdi2/shapes/MultiLine;

    iget-object v2, p0, Lcom/prineside/tdi2/ui/actors/LinearChartActor;->N:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3}, Lcom/prineside/tdi2/shapes/MultiLine;->setTextureRegion(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;ZZ)V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/actors/LinearChartActor;->I:Lcom/badlogic/gdx/utils/FloatArray;

    iget v1, v1, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    div-float v1, p1, v1

    :goto_0
    iget-object v2, p0, Lcom/prineside/tdi2/ui/actors/LinearChartActor;->I:Lcom/badlogic/gdx/utils/FloatArray;

    iget v4, v2, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    if-ge v3, v4, :cond_4

    iget-object v2, v2, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    aget v2, v2, v3

    sget-object v4, Lcom/prineside/tdi2/ui/actors/LinearChartActor;->O:Lcom/badlogic/gdx/math/Vector2;

    iget v5, v4, Lcom/badlogic/gdx/math/Vector2;->x:F

    int-to-float v6, v3

    mul-float v6, v6, v1

    add-float v8, v5, v6

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float v2, v2, v0

    add-float v9, v4, v2

    iget-object v7, p0, Lcom/prineside/tdi2/ui/actors/LinearChartActor;->F:Lcom/prineside/tdi2/shapes/MultiLine;

    const/high16 v10, 0x40000000    # 2.0f

    iget v11, p0, Lcom/prineside/tdi2/ui/actors/LinearChartActor;->G:F

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Lcom/prineside/tdi2/shapes/MultiLine;->appendNode(FFFFZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/prineside/tdi2/ui/actors/LinearChartActor;->F:Lcom/prineside/tdi2/shapes/MultiLine;

    invoke-virtual {v1}, Lcom/prineside/tdi2/shapes/MultiLine;->updateAllNodes()V

    sget-object v1, Lcom/prineside/tdi2/ui/actors/LinearChartActor;->O:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iput v2, p0, Lcom/prineside/tdi2/ui/actors/LinearChartActor;->J:F

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iput v1, p0, Lcom/prineside/tdi2/ui/actors/LinearChartActor;->K:F

    iput p1, p0, Lcom/prineside/tdi2/ui/actors/LinearChartActor;->L:F

    iput v0, p0, Lcom/prineside/tdi2/ui/actors/LinearChartActor;->M:F

    :cond_5
    :goto_1
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V
    .locals 6

    iget-object p2, p0, Lcom/prineside/tdi2/ui/actors/LinearChartActor;->N:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/prineside/tdi2/ui/actors/LinearChartActor;->H:Lcom/badlogic/gdx/graphics/Color;

    invoke-interface {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/actors/LinearChartActor;->N:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getX()F

    move-result v2

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getY()F

    move-result v3

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v4

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v5

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/Batch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    sget-object p2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-interface {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/LinearChartActor;->F:Lcom/prineside/tdi2/shapes/MultiLine;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/shapes/MultiLine;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    :cond_1
    invoke-interface {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public setChart(Lcom/badlogic/gdx/utils/FloatArray;)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/LinearChartActor;->I:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/FloatArray;->clear()V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/LinearChartActor;->I:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/FloatArray;->addAll(Lcom/badlogic/gdx/utils/FloatArray;)V

    const/high16 p1, 0x7fc00000    # Float.NaN

    iput p1, p0, Lcom/prineside/tdi2/ui/actors/LinearChartActor;->J:F

    return-void
.end method

.method public setChart(Lcom/prineside/tdi2/enums/InterpolationType;)V
    .locals 5

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/LinearChartActor;->I:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/FloatArray;->clear()V

    invoke-static {p1}, Lcom/prineside/tdi2/enums/InterpolationType;->getObject(Lcom/prineside/tdi2/enums/InterpolationType;)Lcom/badlogic/gdx/math/Interpolation;

    move-result-object p1

    const-wide/16 v0, 0x0

    :goto_0
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_0

    iget-object v2, p0, Lcom/prineside/tdi2/ui/actors/LinearChartActor;->I:Lcom/badlogic/gdx/utils/FloatArray;

    double-to-float v3, v0

    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/math/Interpolation;->apply(F)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    const-wide v2, 0x3fa999999999999aL    # 0.05

    add-double/2addr v0, v2

    goto :goto_0

    :cond_0
    const/high16 p1, 0x7fc00000    # Float.NaN

    iput p1, p0, Lcom/prineside/tdi2/ui/actors/LinearChartActor;->J:F

    return-void
.end method

.method public setColor(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 1

    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Lcom/prineside/tdi2/ui/actors/LinearChartActor;->J:F

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/ui/actors/LinearChartActor;->G:F

    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/LinearChartActor;->H:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method
