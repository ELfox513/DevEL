.class Lcom/prineside/tdi2/ui/shared/MainMenuUiScene$4;
.super Lcom/badlogic/gdx/scenes/scene2d/Actor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/shared/MainMenuUiScene;->rebuildIfNeeded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic F:[F

.field public final synthetic G:Lcom/badlogic/gdx/utils/Array;

.field public final synthetic H:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public final synthetic I:Lcom/badlogic/gdx/utils/Array;

.field public final synthetic J:Lcom/prineside/tdi2/Research;

.field public final synthetic K:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public final synthetic L:Lcom/prineside/tdi2/ui/shared/MainMenuUiScene;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/shared/MainMenuUiScene;[FLcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/utils/Array;Lcom/prineside/tdi2/Research;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/MainMenuUiScene$4;->L:Lcom/prineside/tdi2/ui/shared/MainMenuUiScene;

    iput-object p2, p0, Lcom/prineside/tdi2/ui/shared/MainMenuUiScene$4;->F:[F

    iput-object p3, p0, Lcom/prineside/tdi2/ui/shared/MainMenuUiScene$4;->G:Lcom/badlogic/gdx/utils/Array;

    iput-object p4, p0, Lcom/prineside/tdi2/ui/shared/MainMenuUiScene$4;->H:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iput-object p5, p0, Lcom/prineside/tdi2/ui/shared/MainMenuUiScene$4;->I:Lcom/badlogic/gdx/utils/Array;

    iput-object p6, p0, Lcom/prineside/tdi2/ui/shared/MainMenuUiScene$4;->J:Lcom/prineside/tdi2/Research;

    iput-object p7, p0, Lcom/prineside/tdi2/ui/shared/MainMenuUiScene$4;->K:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/MainMenuUiScene$4;->F:[F

    const/4 v8, 0x0

    aget v2, v1, v8

    sget-object v3, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v3}, Lcom/badlogic/gdx/Graphics;->getDeltaTime()F

    move-result v3

    add-float/2addr v2, v3

    aput v2, v1, v8

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->researchManager:Lcom/prineside/tdi2/managers/ResearchManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/ResearchManager;->getMapMinX()I

    move-result v9

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->researchManager:Lcom/prineside/tdi2/managers/ResearchManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/ResearchManager;->getMapMinY()I

    move-result v10

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->researchManager:Lcom/prineside/tdi2/managers/ResearchManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/ResearchManager;->getMapWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x44200000    # 640.0f

    div-float v1, v2, v1

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->researchManager:Lcom/prineside/tdi2/managers/ResearchManager;

    invoke-virtual {v3}, Lcom/prineside/tdi2/managers/ResearchManager;->getMapHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/StrictMath;->min(FF)F

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getX()F

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getY()F

    move-result v13

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/MainMenuUiScene$4;->G:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/high16 v14, 0x40000000    # 2.0f

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/Research$ResearchLink;

    sget-object v3, Lcom/badlogic/gdx/graphics/Color;->BLACK:Lcom/badlogic/gdx/graphics/Color;

    iget-object v4, v2, Lcom/prineside/tdi2/Research$ResearchLink;->parent:Lcom/prineside/tdi2/Research;

    iget v4, v4, Lcom/prineside/tdi2/Research;->installedLevel:I

    if-lez v4, :cond_0

    iget-object v4, v2, Lcom/prineside/tdi2/Research$ResearchLink;->child:Lcom/prineside/tdi2/Research;

    iget v4, v4, Lcom/prineside/tdi2/Research;->installedLevel:I

    if-lez v4, :cond_0

    sget-object v3, Lcom/prineside/tdi2/utils/MaterialColor$CYAN;->P900:Lcom/badlogic/gdx/graphics/Color;

    :cond_0
    invoke-static {}, Lcom/prineside/tdi2/ui/shared/MainMenuUiScene;->a()[F

    move-result-object v4

    iget-object v5, v2, Lcom/prineside/tdi2/Research$ResearchLink;->parent:Lcom/prineside/tdi2/Research;

    iget v5, v5, Lcom/prineside/tdi2/Research;->x:I

    sub-int/2addr v5, v9

    int-to-float v5, v5

    mul-float v5, v5, v11

    add-float/2addr v5, v12

    aput v5, v4, v8

    invoke-static {}, Lcom/prineside/tdi2/ui/shared/MainMenuUiScene;->a()[F

    move-result-object v4

    iget-object v5, v2, Lcom/prineside/tdi2/Research$ResearchLink;->parent:Lcom/prineside/tdi2/Research;

    iget v5, v5, Lcom/prineside/tdi2/Research;->y:I

    sub-int/2addr v5, v10

    int-to-float v5, v5

    mul-float v5, v5, v11

    add-float/2addr v5, v13

    const/4 v6, 0x1

    aput v5, v4, v6

    invoke-static {}, Lcom/prineside/tdi2/ui/shared/MainMenuUiScene;->a()[F

    move-result-object v4

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v3

    const/4 v5, 0x2

    aput v3, v4, v5

    invoke-static {}, Lcom/prineside/tdi2/ui/shared/MainMenuUiScene;->a()[F

    move-result-object v3

    const/4 v4, 0x3

    iget v6, v2, Lcom/prineside/tdi2/Research$ResearchLink;->pivotX:I

    sub-int/2addr v6, v9

    int-to-float v6, v6

    mul-float v6, v6, v11

    add-float/2addr v6, v12

    aput v6, v3, v4

    invoke-static {}, Lcom/prineside/tdi2/ui/shared/MainMenuUiScene;->a()[F

    move-result-object v3

    const/4 v4, 0x4

    iget v6, v2, Lcom/prineside/tdi2/Research$ResearchLink;->pivotY:I

    sub-int/2addr v6, v10

    int-to-float v6, v6

    mul-float v6, v6, v11

    add-float/2addr v6, v13

    aput v6, v3, v4

    invoke-static {}, Lcom/prineside/tdi2/ui/shared/MainMenuUiScene;->a()[F

    move-result-object v3

    const/4 v4, 0x5

    invoke-static {}, Lcom/prineside/tdi2/ui/shared/MainMenuUiScene;->a()[F

    move-result-object v6

    aget v6, v6, v5

    aput v6, v3, v4

    invoke-static {}, Lcom/prineside/tdi2/ui/shared/MainMenuUiScene;->a()[F

    move-result-object v3

    const/4 v4, 0x6

    iget-object v6, v2, Lcom/prineside/tdi2/Research$ResearchLink;->child:Lcom/prineside/tdi2/Research;

    iget v6, v6, Lcom/prineside/tdi2/Research;->x:I

    sub-int/2addr v6, v9

    int-to-float v6, v6

    mul-float v6, v6, v11

    add-float/2addr v6, v12

    aput v6, v3, v4

    invoke-static {}, Lcom/prineside/tdi2/ui/shared/MainMenuUiScene;->a()[F

    move-result-object v3

    const/4 v4, 0x7

    iget-object v2, v2, Lcom/prineside/tdi2/Research$ResearchLink;->child:Lcom/prineside/tdi2/Research;

    iget v2, v2, Lcom/prineside/tdi2/Research;->y:I

    sub-int/2addr v2, v10

    int-to-float v2, v2

    mul-float v2, v2, v11

    add-float/2addr v2, v13

    aput v2, v3, v4

    invoke-static {}, Lcom/prineside/tdi2/ui/shared/MainMenuUiScene;->a()[F

    move-result-object v2

    const/16 v3, 0x8

    invoke-static {}, Lcom/prineside/tdi2/ui/shared/MainMenuUiScene;->a()[F

    move-result-object v4

    aget v4, v4, v5

    aput v4, v2, v3

    move-object v2, v7

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    iget-object v3, v0, Lcom/prineside/tdi2/ui/shared/MainMenuUiScene$4;->H:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-static {}, Lcom/prineside/tdi2/ui/shared/MainMenuUiScene;->a()[F

    move-result-object v4

    invoke-static {v2, v14, v3, v4}, Lcom/prineside/tdi2/utils/DrawUtils;->texturedMultiLine(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FLcom/badlogic/gdx/graphics/g2d/TextureRegion;[F)V

    goto/16 :goto_0

    :cond_1
    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/MainMenuUiScene$4;->I:Lcom/badlogic/gdx/utils/Array;

    iget v15, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v15, :cond_5

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/MainMenuUiScene$4;->I:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v6}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/Research;

    iget v2, v1, Lcom/prineside/tdi2/Research;->x:I

    sub-int v3, v2, v9

    int-to-float v3, v3

    mul-float v3, v3, v11

    add-float/2addr v3, v12

    iget v4, v1, Lcom/prineside/tdi2/Research;->y:I

    sub-int v5, v4, v10

    int-to-float v5, v5

    mul-float v5, v5, v11

    add-float/2addr v5, v13

    iget v1, v1, Lcom/prineside/tdi2/Research;->installedLevel:I

    const/high16 v16, 0x40800000    # 4.0f

    if-lez v1, :cond_4

    int-to-float v1, v2

    int-to-float v2, v4

    iget-object v4, v0, Lcom/prineside/tdi2/ui/shared/MainMenuUiScene$4;->J:Lcom/prineside/tdi2/Research;

    iget v14, v4, Lcom/prineside/tdi2/Research;->x:I

    int-to-float v14, v14

    iget v4, v4, Lcom/prineside/tdi2/Research;->y:I

    int-to-float v4, v4

    invoke-static {v1, v2, v14, v4}, Lcom/prineside/tdi2/utils/PMath;->getSquareDistanceBetweenPoints(FFFF)F

    move-result v1

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/MainMenuUiScene$4;->F:[F

    aget v2, v2, v8

    neg-float v2, v2

    const v4, 0x3ecccccd    # 0.4f

    mul-float v2, v2, v4

    const v4, 0x33d6bf95    # 1.0E-7f

    mul-float v1, v1, v4

    add-float/2addr v2, v1

    const/high16 v1, 0x3f800000    # 1.0f

    rem-float/2addr v2, v1

    add-float/2addr v2, v1

    const/high16 v4, 0x3f000000    # 0.5f

    cmpg-float v14, v2, v4

    if-gez v14, :cond_2

    const/4 v2, 0x0

    const/high16 v14, 0x40000000    # 2.0f

    goto :goto_2

    :cond_2
    sub-float/2addr v2, v4

    const/high16 v14, 0x40000000    # 2.0f

    mul-float v2, v2, v14

    :goto_2
    const v4, 0x3f59999a    # 0.85f

    cmpg-float v17, v2, v4

    if-gez v17, :cond_3

    div-float/2addr v2, v4

    goto :goto_3

    :cond_3
    sub-float/2addr v2, v4

    const v4, 0x3e19999a    # 0.15f

    div-float/2addr v2, v4

    sub-float v2, v1, v2

    :goto_3
    invoke-static {}, Lcom/prineside/tdi2/ui/shared/MainMenuUiScene;->b()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    sget-object v4, Lcom/prineside/tdi2/utils/MaterialColor$CYAN;->P900:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    invoke-static {}, Lcom/prineside/tdi2/ui/shared/MainMenuUiScene;->b()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    sget-object v4, Lcom/prineside/tdi2/utils/MaterialColor$CYAN;->P400:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v1, v4, v2}, Lcom/badlogic/gdx/graphics/Color;->lerp(Lcom/badlogic/gdx/graphics/Color;F)Lcom/badlogic/gdx/graphics/Color;

    invoke-static {}, Lcom/prineside/tdi2/ui/shared/MainMenuUiScene;->b()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    invoke-interface {v7, v1}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/MainMenuUiScene$4;->K:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sub-float v3, v3, v16

    sub-float v4, v5, v16

    const/high16 v16, 0x41000000    # 8.0f

    move-object/from16 v1, p1

    move/from16 v5, v16

    move/from16 v17, v6

    move/from16 v6, v16

    invoke-interface/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/Batch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    goto :goto_4

    :cond_4
    move/from16 v17, v6

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->BLACK:Lcom/badlogic/gdx/graphics/Color;

    invoke-interface {v7, v1}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/MainMenuUiScene$4;->K:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sub-float v3, v3, v16

    sub-float v4, v5, v16

    const/high16 v6, 0x41000000    # 8.0f

    move-object/from16 v1, p1

    move v5, v6

    invoke-interface/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/Batch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    :goto_4
    add-int/lit8 v6, v17, 0x1

    goto/16 :goto_1

    :cond_5
    return-void
.end method
