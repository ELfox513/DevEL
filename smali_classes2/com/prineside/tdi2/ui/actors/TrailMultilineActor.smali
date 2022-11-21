.class public Lcom/prineside/tdi2/ui/actors/TrailMultilineActor;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# instance fields
.field public I:J

.field public J:Z

.field public K:Z

.field public final trail:Lcom/prineside/tdi2/shapes/TrailMultiLine;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;-><init>()V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->shapeManager:Lcom/prineside/tdi2/managers/ShapeManager;

    sget-object v1, Lcom/prineside/tdi2/enums/ShapeType;->TRAIL_MULTI_LINE:Lcom/prineside/tdi2/enums/ShapeType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/ShapeManager;->getFactory(Lcom/prineside/tdi2/enums/ShapeType;)Lcom/prineside/tdi2/Shape$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/Shape$Factory;->obtain()Lcom/prineside/tdi2/Shape;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/shapes/TrailMultiLine;

    iput-object v0, p0, Lcom/prineside/tdi2/ui/actors/TrailMultilineActor;->trail:Lcom/prineside/tdi2/shapes/TrailMultiLine;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v2, "bullet-trace-thin"

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/shapes/TrailMultiLine;->setTexture(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->shapeManager:Lcom/prineside/tdi2/managers/ShapeManager;

    sget-object v1, Lcom/prineside/tdi2/enums/ShapeType;->TRAIL_MULTI_LINE:Lcom/prineside/tdi2/enums/ShapeType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/ShapeManager;->getFactory(Lcom/prineside/tdi2/enums/ShapeType;)Lcom/prineside/tdi2/Shape$Factory;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/shapes/TrailMultiLine$TrailMultiLineFactory;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/actors/TrailMultilineActor;->trail:Lcom/prineside/tdi2/shapes/TrailMultiLine;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/Shape$Factory;->free(Lcom/prineside/tdi2/Shape;)V

    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V
    .locals 4

    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V

    iget-boolean p2, p0, Lcom/prineside/tdi2/ui/actors/TrailMultilineActor;->J:Z

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/prineside/tdi2/ui/actors/TrailMultilineActor;->I:J

    sub-long/2addr v0, v2

    long-to-float p2, v0

    const v0, 0x49742400    # 1000000.0f

    div-float/2addr p2, v0

    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float v1, p2, v0

    if-lez v1, :cond_1

    const/high16 p2, 0x3f000000    # 0.5f

    :cond_1
    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/prineside/tdi2/ui/actors/TrailMultilineActor;->I:J

    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/actors/TrailMultilineActor;->K:Z

    if-nez v0, :cond_2

    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/TrailMultilineActor;->trail:Lcom/prineside/tdi2/shapes/TrailMultiLine;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getX()F

    move-result p2

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getY()F

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/prineside/tdi2/shapes/TrailMultiLine;->setStartPoint(FF)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/prineside/tdi2/ui/actors/TrailMultilineActor;->K:Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/TrailMultilineActor;->trail:Lcom/prineside/tdi2/shapes/TrailMultiLine;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getY()F

    move-result v2

    invoke-virtual {v0, p2, v1, v2}, Lcom/prineside/tdi2/shapes/TrailMultiLine;->updateStartPos(FFF)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/TrailMultilineActor;->trail:Lcom/prineside/tdi2/shapes/TrailMultiLine;

    invoke-virtual {v0, p2}, Lcom/prineside/tdi2/shapes/TrailMultiLine;->update(F)V

    iget-object p2, p0, Lcom/prineside/tdi2/ui/actors/TrailMultilineActor;->trail:Lcom/prineside/tdi2/shapes/TrailMultiLine;

    invoke-virtual {p2, p1}, Lcom/prineside/tdi2/shapes/TrailMultiLine;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    :goto_0
    return-void
.end method

.method public setup(Lcom/badlogic/gdx/graphics/Color;IFF)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/TrailMultilineActor;->trail:Lcom/prineside/tdi2/shapes/TrailMultiLine;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/prineside/tdi2/shapes/TrailMultiLine;->setup(Lcom/badlogic/gdx/graphics/Color;IFF)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/prineside/tdi2/ui/actors/TrailMultilineActor;->J:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/prineside/tdi2/ui/actors/TrailMultilineActor;->K:Z

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prineside/tdi2/ui/actors/TrailMultilineActor;->K:Z

    return-void
.end method
