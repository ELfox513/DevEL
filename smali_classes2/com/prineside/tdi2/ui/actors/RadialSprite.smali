.class public Lcom/prineside/tdi2/ui/actors/RadialSprite;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;


# instance fields
.field public a:Lcom/badlogic/gdx/graphics/Texture;

.field public final b:[F

.field public c:F

.field public d:F

.field public e:F

.field public f:F

.field public g:F

.field public h:F

.field public i:F

.field public j:F

.field public k:F

.field public l:F

.field public m:F

.field public n:Z

.field public o:I

.field public p:F

.field public q:F

.field public r:F

.field public s:F

.field public t:F

.field public u:F

.field public v:F

.field public w:F

.field public x:F

.field public y:F

.field public z:F


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3c

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->b:[F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->n:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->o:I

    const/high16 v0, 0x43870000    # 270.0f

    iput v0, p0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->p:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->s:F

    iput v0, p0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->t:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->u:F

    iput v0, p0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->v:F

    iput v0, p0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->w:F

    iput v0, p0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->x:F

    iput v0, p0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->y:F

    iput v0, p0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->z:F

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->a:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->h:F

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->j:F

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU2()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->i:F

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV2()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->k:F

    iget v1, p0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->i:F

    iget v2, p0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->h:F

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->l:F

    iget v1, p0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->j:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->m:F

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->f:F

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->g:F

    sget-object p1, Lcom/prineside/tdi2/Config;->WHITE_COLOR_CACHED_FLOAT_BITS:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/ui/actors/RadialSprite;->b(F)V

    return-void
.end method


# virtual methods
.method public a(FFFFFFFFF)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p8

    move/from16 v8, p9

    iget-boolean v9, v0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->n:Z

    if-nez v9, :cond_0

    iget v9, v0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->c:F

    cmpl-float v9, v9, v1

    if-nez v9, :cond_0

    iget v9, v0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->d:F

    cmpl-float v9, v9, v2

    if-nez v9, :cond_0

    iget v9, v0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->e:F

    cmpl-float v9, v9, v5

    if-nez v9, :cond_0

    iget v9, v0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->f:F

    cmpl-float v9, v9, v3

    if-nez v9, :cond_0

    iget v9, v0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->g:F

    cmpl-float v9, v9, v4

    if-nez v9, :cond_0

    iget v9, v0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->h:F

    cmpl-float v9, v9, v6

    if-nez v9, :cond_0

    iget v9, v0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->k:F

    cmpl-float v10, v9, v8

    if-nez v10, :cond_0

    iget v10, v0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->i:F

    cmpl-float v10, v10, v7

    if-nez v10, :cond_0

    cmpl-float v9, v9, v8

    if-nez v9, :cond_0

    return-void

    :cond_0
    iput v1, v0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->c:F

    iput v2, v0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->d:F

    iput v3, v0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->f:F

    iput v4, v0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->g:F

    iput v5, v0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->e:F

    iput v6, v0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->h:F

    move/from16 v6, p7

    iput v6, v0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->j:F

    iput v7, v0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->i:F

    iput v8, v0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->k:F

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float v7, v3, v6

    mul-float v8, v4, v6

    add-float/2addr v3, v1

    add-float/2addr v4, v2

    add-float v9, v1, v7

    add-float v10, v2, v8

    iget v11, v0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->p:F

    add-float/2addr v11, v5

    invoke-static {v11}, Lcom/badlogic/gdx/math/MathUtils;->cosDeg(F)F

    move-result v11

    iget v12, v0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->p:F

    add-float/2addr v5, v12

    invoke-static {v5}, Lcom/badlogic/gdx/math/MathUtils;->sinDeg(F)F

    move-result v5

    const v12, 0x4cbebc20    # 1.0E8f

    const/4 v13, 0x0

    cmpl-float v14, v11, v13

    if-eqz v14, :cond_1

    div-float/2addr v7, v11

    invoke-static {v7}, Ljava/lang/StrictMath;->abs(F)F

    move-result v7

    goto :goto_0

    :cond_1
    const v7, 0x4cbebc20    # 1.0E8f

    :goto_0
    cmpl-float v14, v5, v13

    if-eqz v14, :cond_2

    div-float/2addr v8, v5

    invoke-static {v8}, Ljava/lang/StrictMath;->abs(F)F

    move-result v12

    :cond_2
    invoke-static {v7, v12}, Ljava/lang/StrictMath;->min(FF)F

    move-result v8

    mul-float v14, v8, v11

    mul-float v8, v8, v5

    iget-object v15, v0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->b:[F

    const/4 v6, 0x5

    invoke-virtual {v0, v15, v6, v9, v2}, Lcom/prineside/tdi2/ui/actors/RadialSprite;->c([FIFF)V

    const/4 v6, 0x0

    const/16 v15, 0xf

    cmpl-float v11, v11, v13

    if-ltz v11, :cond_5

    iget-object v11, v0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->b:[F

    invoke-virtual {v0, v11, v15, v1, v4}, Lcom/prineside/tdi2/ui/actors/RadialSprite;->c([FIFF)V

    iget-object v11, v0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->b:[F

    invoke-virtual {v0, v11, v6, v9, v4}, Lcom/prineside/tdi2/ui/actors/RadialSprite;->c([FIFF)V

    iget-object v11, v0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->b:[F

    const/16 v15, 0xa

    invoke-virtual {v0, v11, v15, v1, v2}, Lcom/prineside/tdi2/ui/actors/RadialSprite;->c([FIFF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->b:[F

    const/16 v11, 0x1e

    invoke-virtual {v0, v1, v11, v9, v10}, Lcom/prineside/tdi2/ui/actors/RadialSprite;->c([FIFF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->b:[F

    const/16 v11, 0x23

    invoke-virtual {v0, v1, v11, v9, v4}, Lcom/prineside/tdi2/ui/actors/RadialSprite;->c([FIFF)V

    cmpg-float v1, v7, v12

    if-gez v1, :cond_3

    iget-object v1, v0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->b:[F

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/prineside/tdi2/ui/actors/RadialSprite;->c([FIFF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->b:[F

    add-float/2addr v10, v8

    const/16 v7, 0x19

    invoke-virtual {v0, v1, v7, v3, v10}, Lcom/prineside/tdi2/ui/actors/RadialSprite;->c([FIFF)V

    const/4 v1, 0x2

    iput v1, v0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->o:I

    goto/16 :goto_1

    :cond_3
    const/4 v1, 0x2

    const/16 v7, 0x19

    cmpl-float v5, v5, v13

    if-lez v5, :cond_4

    iget-object v2, v0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->b:[F

    add-float v3, v9, v14

    invoke-virtual {v0, v2, v7, v3, v4}, Lcom/prineside/tdi2/ui/actors/RadialSprite;->c([FIFF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->b:[F

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v14, v14, v3

    add-float/2addr v9, v14

    const/16 v5, 0x14

    invoke-virtual {v0, v2, v5, v9, v4}, Lcom/prineside/tdi2/ui/actors/RadialSprite;->c([FIFF)V

    iput v1, v0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->o:I

    goto/16 :goto_1

    :cond_4
    const/16 v5, 0x14

    iget-object v1, v0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->b:[F

    invoke-virtual {v0, v1, v5, v3, v4}, Lcom/prineside/tdi2/ui/actors/RadialSprite;->c([FIFF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->b:[F

    invoke-virtual {v0, v1, v7, v3, v2}, Lcom/prineside/tdi2/ui/actors/RadialSprite;->c([FIFF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->b:[F

    const/16 v4, 0x37

    invoke-virtual {v0, v1, v4, v9, v10}, Lcom/prineside/tdi2/ui/actors/RadialSprite;->c([FIFF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->b:[F

    const/16 v4, 0x28

    invoke-virtual {v0, v1, v4, v3, v2}, Lcom/prineside/tdi2/ui/actors/RadialSprite;->c([FIFF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->b:[F

    const/16 v3, 0x32

    add-float v4, v9, v14

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/prineside/tdi2/ui/actors/RadialSprite;->c([FIFF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->b:[F

    const/16 v3, 0x2d

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float v14, v14, v4

    add-float/2addr v9, v14

    invoke-virtual {v0, v1, v3, v9, v2}, Lcom/prineside/tdi2/ui/actors/RadialSprite;->c([FIFF)V

    const/4 v1, 0x3

    iput v1, v0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->o:I

    goto :goto_1

    :cond_5
    iget-object v3, v0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->b:[F

    invoke-virtual {v0, v3, v6, v9, v10}, Lcom/prineside/tdi2/ui/actors/RadialSprite;->c([FIFF)V

    const/4 v3, 0x1

    cmpg-float v7, v7, v12

    if-gez v7, :cond_6

    iget-object v4, v0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->b:[F

    const/16 v5, 0xa

    invoke-virtual {v0, v4, v5, v1, v2}, Lcom/prineside/tdi2/ui/actors/RadialSprite;->c([FIFF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->b:[F

    add-float/2addr v10, v8

    invoke-virtual {v0, v2, v15, v1, v10}, Lcom/prineside/tdi2/ui/actors/RadialSprite;->c([FIFF)V

    iput v3, v0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->o:I

    goto :goto_1

    :cond_6
    cmpg-float v5, v5, v13

    if-gez v5, :cond_7

    iget-object v1, v0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->b:[F

    add-float v4, v9, v14

    invoke-virtual {v0, v1, v15, v4, v2}, Lcom/prineside/tdi2/ui/actors/RadialSprite;->c([FIFF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->b:[F

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float v14, v14, v4

    add-float/2addr v9, v14

    const/16 v5, 0xa

    invoke-virtual {v0, v1, v5, v9, v2}, Lcom/prineside/tdi2/ui/actors/RadialSprite;->c([FIFF)V

    iput v3, v0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->o:I

    goto :goto_1

    :cond_7
    const/16 v5, 0xa

    iget-object v3, v0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->b:[F

    invoke-virtual {v0, v3, v15, v1, v4}, Lcom/prineside/tdi2/ui/actors/RadialSprite;->c([FIFF)V

    iget-object v3, v0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->b:[F

    invoke-virtual {v0, v3, v5, v1, v2}, Lcom/prineside/tdi2/ui/actors/RadialSprite;->c([FIFF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->b:[F

    const/16 v3, 0x19

    invoke-virtual {v0, v2, v3, v9, v10}, Lcom/prineside/tdi2/ui/actors/RadialSprite;->c([FIFF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->b:[F

    const/16 v3, 0x1e

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/prineside/tdi2/ui/actors/RadialSprite;->c([FIFF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->b:[F

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v2, v2, v14

    add-float/2addr v2, v9

    const/16 v3, 0x23

    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/prineside/tdi2/ui/actors/RadialSprite;->c([FIFF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->b:[F

    add-float/2addr v9, v14

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2, v9, v4}, Lcom/prineside/tdi2/ui/actors/RadialSprite;->c([FIFF)V

    const/4 v1, 0x2

    iput v1, v0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->o:I

    :goto_1
    iput-boolean v6, v0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->n:Z

    return-void
.end method

.method public final b(F)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xc

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->b:[F

    mul-int/lit8 v2, v0, 0x5

    add-int/lit8 v2, v2, 0x2

    aput p1, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final c([FIFF)V
    .locals 9

    iget v0, p0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->h:F

    iget v1, p0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->l:F

    iget v2, p0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->c:F

    sub-float v2, p3, v2

    iget v3, p0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->f:F

    div-float/2addr v2, v3

    mul-float v1, v1, v2

    add-float v7, v0, v1

    iget v0, p0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->j:F

    iget v1, p0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->m:F

    iget v2, p0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->d:F

    sub-float v2, p4, v2

    iget v3, p0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->g:F

    div-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v2

    mul-float v1, v1, v3

    add-float v8, v0, v1

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v2 .. v8}, Lcom/prineside/tdi2/ui/actors/RadialSprite;->d([FIFFFF)V

    return-void
.end method

.method public final d([FIFFFF)V
    .locals 3

    iget v0, p0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->c:F

    iget v1, p0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->q:F

    add-float v2, v0, v1

    sub-float/2addr p3, v0

    sub-float/2addr p3, v1

    iget v0, p0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->s:F

    mul-float p3, p3, v0

    add-float/2addr v2, p3

    aput v2, p1, p2

    add-int/lit8 p3, p2, 0x1

    iget v0, p0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->d:F

    iget v1, p0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->r:F

    add-float v2, v0, v1

    sub-float/2addr p4, v0

    sub-float/2addr p4, v1

    iget v0, p0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->t:F

    mul-float p4, p4, v0

    add-float/2addr v2, p4

    aput v2, p1, p3

    add-int/lit8 p3, p2, 0x3

    aput p5, p1, p3

    add-int/lit8 p2, p2, 0x4

    aput p6, p1, p2

    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V
    .locals 7

    move-object v1, p1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    iget v6, p0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->e:F

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/prineside/tdi2/ui/actors/RadialSprite;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFFF)V

    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFF)V
    .locals 7

    iget v4, p0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->f:F

    iget v5, p0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->g:F

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/prineside/tdi2/ui/actors/RadialSprite;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFFF)V

    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFFF)V
    .locals 11

    move-object v10, p0

    move v0, p4

    move/from16 v1, p5

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v3, 0x0

    cmpg-float v4, v0, v3

    if-gez v4, :cond_0

    iput v2, v10, Lcom/prineside/tdi2/ui/actors/RadialSprite;->s:F

    neg-float v0, v0

    :cond_0
    move v4, v0

    cmpg-float v0, v1, v3

    if-gez v0, :cond_1

    iput v2, v10, Lcom/prineside/tdi2/ui/actors/RadialSprite;->t:F

    neg-float v0, v1

    move v5, v0

    goto :goto_0

    :cond_1
    move v5, v1

    :goto_0
    iget v6, v10, Lcom/prineside/tdi2/ui/actors/RadialSprite;->h:F

    iget v7, v10, Lcom/prineside/tdi2/ui/actors/RadialSprite;->j:F

    iget v8, v10, Lcom/prineside/tdi2/ui/actors/RadialSprite;->i:F

    iget v9, v10, Lcom/prineside/tdi2/ui/actors/RadialSprite;->k:F

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, v4

    move v4, v5

    move/from16 v5, p6

    invoke-virtual/range {v0 .. v9}, Lcom/prineside/tdi2/ui/actors/RadialSprite;->a(FFFFFFFFF)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->getPackedColor()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/ui/actors/RadialSprite;->b(F)V

    iget-object v0, v10, Lcom/prineside/tdi2/ui/actors/RadialSprite;->a:Lcom/badlogic/gdx/graphics/Texture;

    iget-object v1, v10, Lcom/prineside/tdi2/ui/actors/RadialSprite;->b:[F

    const/4 v2, 0x0

    iget v3, v10, Lcom/prineside/tdi2/ui/actors/RadialSprite;->o:I

    mul-int/lit8 v3, v3, 0x14

    move-object v4, p1

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    return-void
.end method

.method public getAngle()F
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->e:F

    return v0
.end method

.method public getBottomHeight()F
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->x:F

    return v0
.end method

.method public getLeftWidth()F
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->u:F

    return v0
.end method

.method public getMinHeight()F
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->z:F

    return v0
.end method

.method public getMinWidth()F
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->y:F

    return v0
.end method

.method public getRightWidth()F
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->v:F

    return v0
.end method

.method public getTexture()Lcom/badlogic/gdx/graphics/Texture;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->a:Lcom/badlogic/gdx/graphics/Texture;

    return-object v0
.end method

.method public getTopHeight()F
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->w:F

    return v0
.end method

.method public setAngle(F)V
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->e:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->e:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->n:Z

    return-void
.end method

.method public setBottomHeight(F)V
    .locals 0

    iput p1, p0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->x:F

    return-void
.end method

.method public setLeftWidth(F)V
    .locals 0

    iput p1, p0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->u:F

    return-void
.end method

.method public setMinHeight(F)V
    .locals 0

    iput p1, p0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->z:F

    return-void
.end method

.method public setMinWidth(F)V
    .locals 0

    iput p1, p0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->y:F

    return-void
.end method

.method public setOrigin(FF)V
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->q:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->r:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->q:F

    iput p2, p0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->r:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->n:Z

    return-void
.end method

.method public setRightWidth(F)V
    .locals 0

    iput p1, p0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->v:F

    return-void
.end method

.method public setScale(FF)V
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->s:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->t:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->s:F

    iput p2, p0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->t:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->n:Z

    return-void
.end method

.method public setTextureRegion(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .locals 1

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->a:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->h:F

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->j:F

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU2()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->i:F

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV2()F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->k:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->n:Z

    return-void
.end method

.method public setTopHeight(F)V
    .locals 0

    iput p1, p0, Lcom/prineside/tdi2/ui/actors/RadialSprite;->w:F

    return-void
.end method
