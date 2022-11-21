.class public Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine;
.super Lcom/prineside/tdi2/Shape;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/ProjectileTrail;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine$BulletSmokeMultiLineFactory;
    }
.end annotation


# static fields
.field public static y:I


# instance fields
.field public final a:Lcom/prineside/tdi2/shapes/MultiLine;

.field public b:I

.field public d:[F

.field public k:[F

.field public maxAlpha:F

.field public maxSegmentWidth:F

.field public nodesDisperseTime:F

.field public p:[F

.field public q:[F

.field public r:[F

.field public s:Z

.field public t:Z

.field public final u:Lcom/badlogic/gdx/graphics/Color;

.field public v:I

.field public final w:Lcom/badlogic/gdx/utils/FloatArray;

.field public final x:Lcom/badlogic/gdx/math/Vector2;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/prineside/tdi2/Shape;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine;->b:I

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    iput-object v0, p0, Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine;->u:Lcom/badlogic/gdx/graphics/Color;

    new-instance v0, Lcom/badlogic/gdx/utils/FloatArray;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/FloatArray;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine;->w:Lcom/badlogic/gdx/utils/FloatArray;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine;->x:Lcom/badlogic/gdx/math/Vector2;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->shapeManager:Lcom/prineside/tdi2/managers/ShapeManager;

    sget-object v1, Lcom/prineside/tdi2/enums/ShapeType;->MULTI_LINE:Lcom/prineside/tdi2/enums/ShapeType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/ShapeManager;->getFactory(Lcom/prineside/tdi2/enums/ShapeType;)Lcom/prineside/tdi2/Shape$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/Shape$Factory;->obtain()Lcom/prineside/tdi2/Shape;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/shapes/MultiLine;

    iput-object v0, p0, Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine;->a:Lcom/prineside/tdi2/shapes/MultiLine;

    invoke-virtual {p0}, Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine;->reset()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;)V
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine;->s:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine;->a:Lcom/prineside/tdi2/shapes/MultiLine;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/shapes/MultiLine;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    return-void
.end method

.method public free()V
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->shapeManager:Lcom/prineside/tdi2/managers/ShapeManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/ShapeManager;->F:Lcom/prineside/tdi2/managers/ShapeManager$Factories;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/ShapeManager$Factories;->BULLET_SMOKE_MULTI_LINE:Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine$BulletSmokeMultiLineFactory;

    invoke-virtual {v0, p0}, Lcom/prineside/tdi2/Shape$Factory;->free(Lcom/prineside/tdi2/Shape;)V

    return-void
.end method

.method public getUsageId()I
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine;->v:I

    return v0
.end method

.method public isFinished()Z
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine;->t:Z

    return v0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine;->s:Z

    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine;->nodesDisperseTime:F

    const/high16 v0, 0x42c00000    # 96.0f

    iput v0, p0, Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine;->maxSegmentWidth:F

    const v0, 0x3e0f5c29    # 0.14f

    iput v0, p0, Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine;->maxAlpha:F

    return-void
.end method

.method public setColor(Lcom/badlogic/gdx/graphics/Color;)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine;->u:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method public setTexture(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;ZZ)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine;->a:Lcom/prineside/tdi2/shapes/MultiLine;

    invoke-virtual {v0, p1, p2, p3}, Lcom/prineside/tdi2/shapes/MultiLine;->setTextureRegion(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;ZZ)V

    return-void
.end method

.method public setup(FFFF)V
    .locals 9

    invoke-static {p1, p2, p3, p4}, Lcom/prineside/tdi2/utils/PMath;->getDistanceBetweenPoints(FFFF)F

    move-result v0

    const/high16 v1, 0x42c00000    # 96.0f

    div-float v1, v0, v1

    float-to-int v1, v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    const/4 v1, 0x3

    :cond_0
    iget v2, p0, Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine;->b:I

    if-ge v2, v1, :cond_1

    mul-int/lit8 v2, v1, 0x4

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine;->d:[F

    new-array v2, v1, [F

    iput-object v2, p0, Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine;->k:[F

    new-array v2, v1, [F

    iput-object v2, p0, Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine;->p:[F

    new-array v2, v1, [F

    iput-object v2, p0, Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine;->q:[F

    new-array v2, v1, [F

    iput-object v2, p0, Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine;->r:[F

    :cond_1
    iput v1, p0, Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine;->b:I

    iget-object v2, p0, Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine;->w:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/FloatArray;->clear()V

    iget-object v2, p0, Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine;->w:Lcom/badlogic/gdx/utils/FloatArray;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    const/4 v2, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v1, :cond_4

    invoke-static {}, Lcom/prineside/tdi2/utils/FastRandom;->getFloat()F

    move-result v6

    const/high16 v7, 0x42800000    # 64.0f

    mul-float v6, v6, v7

    add-float/2addr v6, v7

    if-eq v4, v2, :cond_2

    add-int/lit8 v7, v1, -0x1

    if-ne v4, v7, :cond_3

    :cond_2
    const v7, 0x3dcccccd    # 0.1f

    mul-float v6, v6, v7

    :cond_3
    add-float/2addr v5, v6

    iget-object v7, p0, Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine;->w:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v7, v6}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    div-float/2addr v0, v5

    iget-object v1, p0, Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine;->x:Lcom/badlogic/gdx/math/Vector2;

    sub-float/2addr p3, p1

    sub-float/2addr p4, p2

    invoke-virtual {v1, p3, p4}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    iget-object p3, p0, Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine;->x:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p3}, Lcom/badlogic/gdx/math/Vector2;->nor()Lcom/badlogic/gdx/math/Vector2;

    const/4 p3, 0x0

    const/4 p4, 0x0

    const/4 v1, 0x0

    :goto_1
    iget v4, p0, Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine;->b:I

    if-ge p4, v4, :cond_5

    iget-object v4, p0, Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine;->w:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v4, p4}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v4

    mul-float v4, v4, v0

    iget-object v5, p0, Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine;->d:[F

    mul-int/lit8 v6, p4, 0x4

    iget-object v7, p0, Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine;->x:Lcom/badlogic/gdx/math/Vector2;

    iget v8, v7, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-float/2addr v1, v4

    mul-float v8, v8, v1

    add-float/2addr v8, p1

    aput v8, v5, v6

    add-int/2addr v6, v2

    iget v4, v7, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float v4, v4, v1

    add-float/2addr v4, p2

    aput v4, v5, v6

    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    const/4 p2, 0x0

    :goto_2
    iget p4, p0, Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine;->b:I

    if-ge p1, p4, :cond_6

    iget-object p4, p0, Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine;->p:[F

    aput v3, p4, p1

    iget-object p4, p0, Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine;->k:[F

    aput p2, p4, p1

    const p4, 0x3c8b4396    # 0.017f

    add-float/2addr p2, p4

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    iget p1, p0, Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine;->b:I

    if-ge p3, p1, :cond_7

    iget-object p1, p0, Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine;->q:[F

    invoke-static {}, Lcom/prineside/tdi2/utils/FastRandom;->getFloat()F

    move-result p2

    const/high16 p4, 0x3f000000    # 0.5f

    sub-float/2addr p2, p4

    const/high16 v0, 0x41a00000    # 20.0f

    mul-float p2, p2, v0

    aput p2, p1, p3

    iget-object p1, p0, Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine;->r:[F

    invoke-static {}, Lcom/prineside/tdi2/utils/FastRandom;->getFloat()F

    move-result p2

    sub-float/2addr p2, p4

    mul-float p2, p2, v0

    aput p2, p1, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_3

    :cond_7
    sget p1, Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine;->y:I

    add-int/lit8 p2, p1, 0x1

    sput p2, Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine;->y:I

    iput p1, p0, Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine;->v:I

    return-void
.end method

.method public update(F)V
    .locals 9

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine;->t:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine;->b:I

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine;->p:[F

    aget v4, v3, v2

    add-float/2addr v4, p1

    aput v4, v3, v2

    iget-object v3, p0, Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine;->k:[F

    aget v3, v3, v2

    sub-float/2addr v4, v3

    iget v3, p0, Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine;->nodesDisperseTime:F

    cmpg-float v3, v4, v3

    if-gez v3, :cond_0

    iput-boolean v1, p0, Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine;->t:Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-boolean v2, p0, Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine;->t:Z

    if-eqz v2, :cond_2

    return-void

    :cond_2
    :goto_1
    iget v2, p0, Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine;->b:I

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-ge v1, v2, :cond_5

    iget-object v2, p0, Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine;->p:[F

    aget v2, v2, v1

    iget-object v5, p0, Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine;->k:[F

    aget v5, v5, v1

    sub-float/2addr v2, v5

    iget v5, p0, Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine;->nodesDisperseTime:F

    div-float/2addr v2, v5

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v6, v2, v4

    if-lez v6, :cond_4

    cmpl-float v6, v2, v5

    if-ltz v6, :cond_3

    iget-object v2, p0, Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine;->u:Lcom/badlogic/gdx/graphics/Color;

    iput v4, v2, Lcom/badlogic/gdx/graphics/Color;->a:F

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_3
    iget-object v4, p0, Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine;->u:Lcom/badlogic/gdx/graphics/Color;

    sub-float/2addr v5, v2

    iget v6, p0, Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine;->maxAlpha:F

    mul-float v5, v5, v6

    iput v5, v4, Lcom/badlogic/gdx/graphics/Color;->a:F

    sget-object v4, Lcom/badlogic/gdx/math/Interpolation;->pow2:Lcom/badlogic/gdx/math/Interpolation$Pow;

    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/math/Interpolation$Pow;->apply(F)F

    move-result v4

    iget-object v2, p0, Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine;->d:[F

    mul-int/lit8 v5, v1, 0x4

    aget v6, v2, v5

    iget-object v7, p0, Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine;->q:[F

    aget v7, v7, v1

    mul-float v7, v7, p1

    add-float/2addr v6, v7

    aput v6, v2, v5

    add-int/2addr v5, v0

    aget v6, v2, v5

    iget-object v7, p0, Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine;->r:[F

    aget v7, v7, v1

    mul-float v7, v7, p1

    add-float/2addr v6, v7

    aput v6, v2, v5

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine;->u:Lcom/badlogic/gdx/graphics/Color;

    iput v4, v2, Lcom/badlogic/gdx/graphics/Color;->a:F

    :goto_2
    iget-object v2, p0, Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine;->d:[F

    mul-int/lit8 v5, v1, 0x4

    add-int/lit8 v6, v5, 0x2

    const v7, 0x3dcccccd    # 0.1f

    sget-object v8, Lcom/badlogic/gdx/math/Interpolation;->pow2Out:Lcom/badlogic/gdx/math/Interpolation$PowOut;

    invoke-virtual {v8, v4}, Lcom/badlogic/gdx/math/Interpolation$PowOut;->apply(F)F

    move-result v4

    add-float/2addr v4, v7

    iget v7, p0, Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine;->maxSegmentWidth:F

    mul-float v4, v4, v7

    aput v4, v2, v6

    iget-object v2, p0, Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine;->d:[F

    add-int/2addr v5, v3

    iget-object v3, p0, Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine;->u:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v3

    aput v3, v2, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine;->u:Lcom/badlogic/gdx/graphics/Color;

    iput v4, p1, Lcom/badlogic/gdx/graphics/Color;->a:F

    iget-object v1, p0, Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine;->d:[F

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result p1

    aput p1, v1, v3

    iget-object p1, p0, Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine;->d:[F

    iget v1, p0, Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine;->b:I

    sub-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v1, v3

    aget v2, p1, v3

    aput v2, p1, v1

    iget-object v1, p0, Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine;->a:Lcom/prineside/tdi2/shapes/MultiLine;

    invoke-virtual {v1, p1}, Lcom/prineside/tdi2/shapes/MultiLine;->setNodes([F)V

    iput-boolean v0, p0, Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine;->s:Z

    return-void
.end method
