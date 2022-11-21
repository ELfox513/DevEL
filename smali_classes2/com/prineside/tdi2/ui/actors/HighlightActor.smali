.class public Lcom/prineside/tdi2/ui/actors/HighlightActor;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;
.source "SourceFile"


# static fields
.field public static final U:Lcom/badlogic/gdx/math/Vector2;


# instance fields
.field public I:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public J:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public K:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public L:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public M:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public N:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public O:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public P:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public Q:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public R:J

.field public S:F

.field public T:Lcom/badlogic/gdx/scenes/scene2d/Actor;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/ui/actors/HighlightActor;->U:Lcom/badlogic/gdx/math/Vector2;

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 2

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/ui/actors/HighlightActor;->T:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v0, "blank"

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object p1

    iput-object p1, p0, Lcom/prineside/tdi2/ui/actors/HighlightActor;->I:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v0, "gradient-corner-bottom-left"

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object p1

    iput-object p1, p0, Lcom/prineside/tdi2/ui/actors/HighlightActor;->J:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v0, "gradient-corner-bottom-right"

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object p1

    iput-object p1, p0, Lcom/prineside/tdi2/ui/actors/HighlightActor;->K:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v0, "gradient-corner-top-right"

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object p1

    iput-object p1, p0, Lcom/prineside/tdi2/ui/actors/HighlightActor;->L:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v0, "gradient-corner-top-left"

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object p1

    iput-object p1, p0, Lcom/prineside/tdi2/ui/actors/HighlightActor;->M:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v0, "gradient-top"

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object p1

    iput-object p1, p0, Lcom/prineside/tdi2/ui/actors/HighlightActor;->P:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v0, "gradient-left"

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object p1

    iput-object p1, p0, Lcom/prineside/tdi2/ui/actors/HighlightActor;->N:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v0, "gradient-right"

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object p1

    iput-object p1, p0, Lcom/prineside/tdi2/ui/actors/HighlightActor;->O:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v0, "gradient-bottom"

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object p1

    iput-object p1, p0, Lcom/prineside/tdi2/ui/actors/HighlightActor;->Q:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/prineside/tdi2/ui/actors/HighlightActor;->R:J

    new-instance p1, Lcom/badlogic/gdx/graphics/Color;

    const v0, 0x4fc3f7aa

    invoke-direct {p1, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->validate()V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/actors/HighlightActor;->T:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->isVisible()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->hasParent()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getParent()Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_3

    sget-object v1, Lcom/prineside/tdi2/ui/actors/HighlightActor;->U:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v1}, Lcom/badlogic/gdx/math/Vector2;->setZero()Lcom/badlogic/gdx/math/Vector2;

    iget-object v2, v0, Lcom/prineside/tdi2/ui/actors/HighlightActor;->T:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->localToStageCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    iget v8, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v9, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v1, v0, Lcom/prineside/tdi2/ui/actors/HighlightActor;->T:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v10

    iget-object v1, v0, Lcom/prineside/tdi2/ui/actors/HighlightActor;->T:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v11

    iget v1, v0, Lcom/prineside/tdi2/ui/actors/HighlightActor;->S:F

    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/prineside/tdi2/ui/actors/HighlightActor;->R:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    const v3, 0x49742400    # 1000000.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lcom/prineside/tdi2/ui/actors/HighlightActor;->S:F

    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/prineside/tdi2/ui/actors/HighlightActor;->R:J

    sget-object v1, Lcom/badlogic/gdx/math/Interpolation;->sineOut:Lcom/badlogic/gdx/math/Interpolation;

    iget v2, v0, Lcom/prineside/tdi2/ui/actors/HighlightActor;->S:F

    const/high16 v3, 0x40400000    # 3.0f

    mul-float v2, v2, v3

    rem-float/2addr v2, v3

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Interpolation;->apply(F)F

    move-result v12

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v13, v1, v12

    const/high16 v14, 0x40800000    # 4.0f

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v15

    const v1, 0x3e8f5c29    # 0.28f

    iget v2, v15, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float v2, v2, v1

    mul-float v2, v2, p2

    const/4 v1, 0x0

    invoke-interface {v7, v1, v1, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setColor(FFFF)V

    const/high16 v16, 0x43800000    # 256.0f

    iget-object v2, v0, Lcom/prineside/tdi2/ui/actors/HighlightActor;->O:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sub-float v1, v8, v16

    sub-float v17, v1, v14

    sub-float v18, v9, v14

    const/high16 v19, 0x41000000    # 8.0f

    add-float v20, v11, v19

    const/high16 v5, 0x43800000    # 256.0f

    move-object/from16 v1, p1

    move/from16 v3, v17

    move/from16 v4, v18

    move/from16 v6, v20

    invoke-interface/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/Batch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/actors/HighlightActor;->N:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    add-float v1, v8, v10

    add-float v21, v1, v14

    move-object/from16 v1, p1

    move/from16 v3, v21

    invoke-interface/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/Batch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/actors/HighlightActor;->P:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sub-float v22, v8, v14

    sub-float v1, v9, v16

    sub-float v16, v1, v14

    add-float v23, v10, v19

    const/high16 v6, 0x43800000    # 256.0f

    move-object/from16 v1, p1

    move/from16 v3, v22

    move/from16 v4, v16

    move/from16 v5, v23

    invoke-interface/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/Batch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/actors/HighlightActor;->Q:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    add-float/2addr v11, v9

    add-float/2addr v11, v14

    move v4, v11

    invoke-interface/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/Batch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/actors/HighlightActor;->M:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move/from16 v3, v17

    move v5, v6

    invoke-interface/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/Batch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/actors/HighlightActor;->L:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move/from16 v3, v21

    invoke-interface/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/Batch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/actors/HighlightActor;->J:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move/from16 v3, v17

    move/from16 v4, v16

    invoke-interface/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/Batch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/actors/HighlightActor;->K:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move/from16 v3, v21

    invoke-interface/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/Batch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    iget v1, v15, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v2, v15, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v3, v15, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v4, v15, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float v4, v4, p2

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float v4, v4, v5

    mul-float v4, v4, v13

    invoke-interface {v7, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setColor(FFFF)V

    const/high16 v1, 0x41900000    # 18.0f

    mul-float v13, v12, v1

    iget-object v2, v0, Lcom/prineside/tdi2/ui/actors/HighlightActor;->I:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sub-float v1, v8, v13

    sub-float v16, v1, v14

    move-object/from16 v1, p1

    move/from16 v3, v16

    move/from16 v4, v18

    move v5, v13

    move/from16 v6, v20

    invoke-interface/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/Batch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/actors/HighlightActor;->I:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move/from16 v3, v21

    invoke-interface/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/Batch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/actors/HighlightActor;->I:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sub-float v1, v9, v13

    sub-float v4, v1, v14

    const/high16 v17, 0x40000000    # 2.0f

    mul-float v1, v13, v17

    add-float/2addr v1, v10

    add-float v24, v1, v19

    move-object/from16 v1, p1

    move/from16 v3, v16

    move/from16 v5, v24

    move v6, v13

    invoke-interface/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/Batch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/actors/HighlightActor;->I:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move v4, v11

    invoke-interface/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/Batch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    const/high16 v1, 0x42200000    # 40.0f

    mul-float v12, v12, v1

    iget-object v2, v0, Lcom/prineside/tdi2/ui/actors/HighlightActor;->I:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sub-float/2addr v8, v12

    sub-float/2addr v8, v14

    move-object/from16 v1, p1

    move v3, v8

    move/from16 v4, v18

    move v5, v12

    move/from16 v6, v20

    invoke-interface/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/Batch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/actors/HighlightActor;->I:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move/from16 v3, v21

    invoke-interface/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/Batch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/actors/HighlightActor;->I:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sub-float/2addr v9, v12

    sub-float v4, v9, v14

    mul-float v17, v17, v12

    add-float v10, v10, v17

    add-float v9, v10, v19

    move v3, v8

    move v5, v9

    move v6, v12

    invoke-interface/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/Batch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/actors/HighlightActor;->I:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move v4, v11

    invoke-interface/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/Batch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    const/high16 v8, 0x40800000    # 4.0f

    iget v1, v15, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v2, v15, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v3, v15, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v4, v15, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float v4, v4, p2

    invoke-interface {v7, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setColor(FFFF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/actors/HighlightActor;->I:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sub-float v9, v22, v14

    const/high16 v5, 0x40800000    # 4.0f

    move-object/from16 v1, p1

    move v3, v9

    move/from16 v4, v18

    move/from16 v6, v20

    invoke-interface/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/Batch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/actors/HighlightActor;->I:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move/from16 v3, v21

    invoke-interface/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/Batch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/actors/HighlightActor;->I:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sub-float v4, v18, v14

    add-float v10, v23, v19

    const/high16 v6, 0x40800000    # 4.0f

    move v3, v9

    move v5, v10

    invoke-interface/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/Batch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/actors/HighlightActor;->I:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move v4, v11

    move v6, v8

    invoke-interface/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/Batch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    :cond_3
    return-void
.end method
