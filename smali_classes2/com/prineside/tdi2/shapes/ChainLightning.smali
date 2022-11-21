.class public Lcom/prineside/tdi2/shapes/ChainLightning;
.super Lcom/prineside/tdi2/Shape;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/shapes/ChainLightning$ChainLightningFactory;
    }
.end annotation


# static fields
.field public static final AVERAGE_SEGMENT_LENGTH:F = 16.0f

.field public static final G:Lcom/badlogic/gdx/graphics/Color;

.field public static final H:Lcom/badlogic/gdx/math/Vector2;

.field public static final I:Lcom/badlogic/gdx/graphics/Color;

.field public static final MAX_SEGMENT_WIDTH:F = 44.8f

.field public static final MIN_SEGMENT_WIDTH:F = 8.96f


# instance fields
.field public A:F

.field public B:Z

.field public C:Z

.field public D:F

.field public final E:Lcom/badlogic/gdx/graphics/Color;

.field public final F:Lcom/badlogic/gdx/utils/FloatArray;

.field public a:F

.field public b:F

.field public d:F

.field public k:F

.field public p:F

.field public q:F

.field public final r:Lcom/badlogic/gdx/math/Vector2;

.field public final s:Lcom/badlogic/gdx/math/Vector2;

.field public t:F

.field public final u:Lcom/prineside/tdi2/shapes/MultiLine;

.field public v:I

.field public w:[F

.field public x:Z

.field public y:F

.field public z:F


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    sput-object v0, Lcom/prineside/tdi2/shapes/ChainLightning;->G:Lcom/badlogic/gdx/graphics/Color;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/shapes/ChainLightning;->H:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    sput-object v0, Lcom/prineside/tdi2/shapes/ChainLightning;->I:Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/prineside/tdi2/Shape;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/shapes/ChainLightning;->r:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/shapes/ChainLightning;->s:Lcom/badlogic/gdx/math/Vector2;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/prineside/tdi2/shapes/ChainLightning;->t:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/prineside/tdi2/shapes/ChainLightning;->v:I

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    iput-object v0, p0, Lcom/prineside/tdi2/shapes/ChainLightning;->E:Lcom/badlogic/gdx/graphics/Color;

    new-instance v0, Lcom/badlogic/gdx/utils/FloatArray;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/FloatArray;-><init>(I)V

    iput-object v0, p0, Lcom/prineside/tdi2/shapes/ChainLightning;->F:Lcom/badlogic/gdx/utils/FloatArray;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->shapeManager:Lcom/prineside/tdi2/managers/ShapeManager;

    sget-object v1, Lcom/prineside/tdi2/enums/ShapeType;->MULTI_LINE:Lcom/prineside/tdi2/enums/ShapeType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/ShapeManager;->getFactory(Lcom/prineside/tdi2/enums/ShapeType;)Lcom/prineside/tdi2/Shape$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/Shape$Factory;->obtain()Lcom/prineside/tdi2/Shape;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/shapes/MultiLine;

    iput-object v0, p0, Lcom/prineside/tdi2/shapes/ChainLightning;->u:Lcom/prineside/tdi2/shapes/MultiLine;

    invoke-virtual {p0}, Lcom/prineside/tdi2/shapes/ChainLightning;->reset()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/shapes/ChainLightning$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/shapes/ChainLightning;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 13

    iget-object v0, p0, Lcom/prineside/tdi2/shapes/ChainLightning;->F:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/FloatArray;->clear()V

    iget-object v0, p0, Lcom/prineside/tdi2/shapes/ChainLightning;->F:Lcom/badlogic/gdx/utils/FloatArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    iget-object v0, p0, Lcom/prineside/tdi2/shapes/ChainLightning;->F:Lcom/badlogic/gdx/utils/FloatArray;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    iget v0, p0, Lcom/prineside/tdi2/shapes/ChainLightning;->v:I

    const/4 v3, 0x2

    :goto_0
    if-ge v3, v0, :cond_0

    iget-object v4, p0, Lcom/prineside/tdi2/shapes/ChainLightning;->F:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-static {}, Lcom/prineside/tdi2/utils/FastRandom;->getFloat()F

    move-result v5

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/shapes/ChainLightning;->F:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/FloatArray;->sort()V

    sget-object v0, Lcom/prineside/tdi2/shapes/ChainLightning;->H:Lcom/badlogic/gdx/math/Vector2;

    iget-object v3, p0, Lcom/prineside/tdi2/shapes/ChainLightning;->r:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    neg-float v3, v3

    invoke-virtual {v0, v4, v3}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector2;->nor()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    const/high16 v3, 0x42a00000    # 80.0f

    iget v4, p0, Lcom/prineside/tdi2/shapes/ChainLightning;->t:F

    mul-float v4, v4, v3

    div-float v3, v2, v4

    iget-object v5, p0, Lcom/prineside/tdi2/shapes/ChainLightning;->w:[F

    const/4 v6, 0x0

    iget v7, p0, Lcom/prineside/tdi2/shapes/ChainLightning;->k:F

    aput v7, v5, v6

    iget v6, p0, Lcom/prineside/tdi2/shapes/ChainLightning;->p:F

    const/4 v7, 0x1

    aput v6, v5, v7

    const/4 v5, 0x1

    :goto_1
    iget v6, p0, Lcom/prineside/tdi2/shapes/ChainLightning;->v:I

    if-ge v5, v6, :cond_2

    iget-object v6, p0, Lcom/prineside/tdi2/shapes/ChainLightning;->F:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v6, v6, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    aget v8, v6, v5

    iget v9, p0, Lcom/prineside/tdi2/shapes/ChainLightning;->q:F

    mul-float v9, v9, v3

    add-int/lit8 v10, v5, -0x1

    aget v6, v6, v10

    sub-float v6, v8, v6

    mul-float v9, v9, v6

    const v6, 0x3f733333    # 0.95f

    cmpl-float v6, v8, v6

    if-lez v6, :cond_1

    const/high16 v6, 0x41a00000    # 20.0f

    sub-float v10, v2, v8

    mul-float v10, v10, v6

    goto :goto_2

    :cond_1
    const/high16 v10, 0x3f800000    # 1.0f

    :goto_2
    neg-float v6, v4

    invoke-static {}, Lcom/prineside/tdi2/utils/FastRandom;->getFloat()F

    move-result v11

    const/high16 v12, 0x40000000    # 2.0f

    mul-float v12, v12, v4

    mul-float v11, v11, v12

    add-float/2addr v6, v11

    sub-float v1, v6, v1

    sub-float v9, v2, v9

    mul-float v1, v1, v9

    sub-float/2addr v6, v1

    mul-float v1, v6, v10

    iget-object v6, p0, Lcom/prineside/tdi2/shapes/ChainLightning;->w:[F

    mul-int/lit8 v9, v5, 0x4

    iget v10, p0, Lcom/prineside/tdi2/shapes/ChainLightning;->k:F

    iget-object v11, p0, Lcom/prineside/tdi2/shapes/ChainLightning;->r:Lcom/badlogic/gdx/math/Vector2;

    iget v12, v11, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float v12, v12, v8

    add-float/2addr v10, v12

    iget v12, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float v12, v12, v1

    add-float/2addr v10, v12

    aput v10, v6, v9

    add-int/2addr v9, v7

    iget v10, p0, Lcom/prineside/tdi2/shapes/ChainLightning;->p:F

    iget v11, v11, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float v8, v8, v11

    add-float/2addr v10, v8

    iget v8, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float v8, v8, v1

    add-float/2addr v10, v8

    aput v10, v6, v9

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/prineside/tdi2/shapes/ChainLightning;->u:Lcom/prineside/tdi2/shapes/MultiLine;

    iget-object v1, p0, Lcom/prineside/tdi2/shapes/ChainLightning;->w:[F

    invoke-virtual {v0, v1, v6}, Lcom/prineside/tdi2/shapes/MultiLine;->setNodes([FI)V

    sget-object v0, Lcom/prineside/tdi2/shapes/ChainLightning;->G:Lcom/badlogic/gdx/graphics/Color;

    iput v2, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    iget-object v1, p0, Lcom/prineside/tdi2/shapes/ChainLightning;->u:Lcom/prineside/tdi2/shapes/MultiLine;

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/shapes/MultiLine;->setTint(Lcom/badlogic/gdx/graphics/Color;)V

    iput-boolean v7, p0, Lcom/prineside/tdi2/shapes/ChainLightning;->x:Z

    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;)V
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/shapes/ChainLightning;->x:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/shapes/ChainLightning;->u:Lcom/prineside/tdi2/shapes/MultiLine;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/shapes/MultiLine;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    return-void
.end method

.method public free()V
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->shapeManager:Lcom/prineside/tdi2/managers/ShapeManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/ShapeManager;->F:Lcom/prineside/tdi2/managers/ShapeManager$Factories;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/ShapeManager$Factories;->CHAIN_LIGHTNING:Lcom/prineside/tdi2/shapes/ChainLightning$ChainLightningFactory;

    invoke-virtual {v0, p0}, Lcom/prineside/tdi2/Shape$Factory;->free(Lcom/prineside/tdi2/Shape;)V

    return-void
.end method

.method public getColor()Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/shapes/ChainLightning;->E:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public getExistsTime()F
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/shapes/ChainLightning;->D:F

    return v0
.end method

.method public getStartX()F
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/shapes/ChainLightning;->k:F

    return v0
.end method

.method public getStartY()F
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/shapes/ChainLightning;->p:F

    return v0
.end method

.method public isFinished()Z
    .locals 2

    iget v0, p0, Lcom/prineside/tdi2/shapes/ChainLightning;->D:F

    iget v1, p0, Lcom/prineside/tdi2/shapes/ChainLightning;->A:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prineside/tdi2/shapes/ChainLightning;->x:Z

    iput-boolean v0, p0, Lcom/prineside/tdi2/shapes/ChainLightning;->C:Z

    return-void
.end method

.method public setColor(Lcom/badlogic/gdx/graphics/Color;)V
    .locals 6

    iget-object v0, p0, Lcom/prineside/tdi2/shapes/ChainLightning;->E:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    iget-boolean v0, p0, Lcom/prineside/tdi2/shapes/ChainLightning;->C:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/prineside/tdi2/shapes/ChainLightning;->I:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    :goto_0
    iget v0, p0, Lcom/prineside/tdi2/shapes/ChainLightning;->v:I

    if-ge v1, v0, :cond_1

    sget-object v2, Lcom/prineside/tdi2/shapes/ChainLightning;->I:Lcom/badlogic/gdx/graphics/Color;

    iget v3, p1, Lcom/badlogic/gdx/graphics/Color;->a:F

    const/high16 v4, 0x3f800000    # 1.0f

    int-to-float v5, v1

    int-to-float v0, v0

    div-float/2addr v5, v0

    sub-float/2addr v4, v5

    mul-float v3, v3, v4

    iput v3, v2, Lcom/badlogic/gdx/graphics/Color;->a:F

    iget-object v0, p0, Lcom/prineside/tdi2/shapes/ChainLightning;->w:[F

    mul-int/lit8 v3, v1, 0x4

    add-int/lit8 v3, v3, 0x3

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v2

    aput v2, v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result p1

    :goto_1
    iget v0, p0, Lcom/prineside/tdi2/shapes/ChainLightning;->v:I

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/shapes/ChainLightning;->w:[F

    mul-int/lit8 v2, v1, 0x4

    add-int/lit8 v2, v2, 0x3

    aput p1, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public setFadingToEnd(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/prineside/tdi2/shapes/ChainLightning;->C:Z

    return-void
.end method

.method public setPosition(FFFF)V
    .locals 2

    iput p1, p0, Lcom/prineside/tdi2/shapes/ChainLightning;->k:F

    iput p2, p0, Lcom/prineside/tdi2/shapes/ChainLightning;->p:F

    invoke-static {p1, p2, p3, p4}, Lcom/prineside/tdi2/utils/PMath;->getDistanceBetweenPoints(FFFF)F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/shapes/ChainLightning;->q:F

    iget-object v0, p0, Lcom/prineside/tdi2/shapes/ChainLightning;->r:Lcom/badlogic/gdx/math/Vector2;

    sub-float/2addr p3, p1

    sub-float/2addr p4, p2

    invoke-virtual {v0, p3, p4}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    iget-object p1, p0, Lcom/prineside/tdi2/shapes/ChainLightning;->s:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p1, p3, p4}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    iget-object p1, p0, Lcom/prineside/tdi2/shapes/ChainLightning;->s:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Vector2;->nor()Lcom/badlogic/gdx/math/Vector2;

    iget p1, p0, Lcom/prineside/tdi2/shapes/ChainLightning;->q:F

    iget p2, p0, Lcom/prineside/tdi2/shapes/ChainLightning;->a:F

    div-float/2addr p1, p2

    float-to-int p1, p1

    const/4 p2, 0x3

    if-ge p1, p2, :cond_0

    const/4 p1, 0x3

    :cond_0
    iget p2, p0, Lcom/prineside/tdi2/shapes/ChainLightning;->v:I

    if-ge p2, p1, :cond_1

    mul-int/lit8 p2, p1, 0x4

    new-array p2, p2, [F

    iput-object p2, p0, Lcom/prineside/tdi2/shapes/ChainLightning;->w:[F

    :cond_1
    iput p1, p0, Lcom/prineside/tdi2/shapes/ChainLightning;->v:I

    const/4 p1, 0x0

    :goto_0
    iget p2, p0, Lcom/prineside/tdi2/shapes/ChainLightning;->v:I

    if-ge p1, p2, :cond_3

    int-to-float p3, p1

    int-to-float p2, p2

    div-float/2addr p3, p2

    const/high16 p2, 0x40000000    # 2.0f

    mul-float p3, p3, p2

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p4, p3, p2

    if-lez p4, :cond_2

    sub-float/2addr p3, p2

    sub-float p3, p2, p3

    :cond_2
    iget-object p2, p0, Lcom/prineside/tdi2/shapes/ChainLightning;->w:[F

    mul-int/lit8 p4, p1, 0x4

    add-int/lit8 p4, p4, 0x2

    iget v0, p0, Lcom/prineside/tdi2/shapes/ChainLightning;->b:F

    iget v1, p0, Lcom/prineside/tdi2/shapes/ChainLightning;->d:F

    sub-float/2addr v1, v0

    mul-float v1, v1, p3

    add-float/2addr v0, v1

    aput v0, p2, p4

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/prineside/tdi2/shapes/ChainLightning;->E:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/shapes/ChainLightning;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public setTexture(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;ZZ)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/shapes/ChainLightning;->u:Lcom/prineside/tdi2/shapes/MultiLine;

    invoke-virtual {v0, p1, p2, p3}, Lcom/prineside/tdi2/shapes/MultiLine;->setTextureRegion(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;ZZ)V

    return-void
.end method

.method public setup(FFFFFFZFFF)V
    .locals 0

    iput p5, p0, Lcom/prineside/tdi2/shapes/ChainLightning;->z:F

    const/4 p5, 0x0

    iput p5, p0, Lcom/prineside/tdi2/shapes/ChainLightning;->D:F

    iput p6, p0, Lcom/prineside/tdi2/shapes/ChainLightning;->A:F

    iput-boolean p7, p0, Lcom/prineside/tdi2/shapes/ChainLightning;->B:Z

    iput p8, p0, Lcom/prineside/tdi2/shapes/ChainLightning;->b:F

    iput p9, p0, Lcom/prineside/tdi2/shapes/ChainLightning;->d:F

    iput p10, p0, Lcom/prineside/tdi2/shapes/ChainLightning;->a:F

    const/high16 p5, 0x41800000    # 16.0f

    div-float/2addr p10, p5

    iput p10, p0, Lcom/prineside/tdi2/shapes/ChainLightning;->t:F

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/prineside/tdi2/shapes/ChainLightning;->setPosition(FFFF)V

    return-void
.end method

.method public update(F)V
    .locals 3

    iget v0, p0, Lcom/prineside/tdi2/shapes/ChainLightning;->y:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/prineside/tdi2/shapes/ChainLightning;->y:F

    iget-boolean v1, p0, Lcom/prineside/tdi2/shapes/ChainLightning;->x:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/prineside/tdi2/shapes/ChainLightning;->z:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/prineside/tdi2/shapes/ChainLightning;->a()V

    iput v2, p0, Lcom/prineside/tdi2/shapes/ChainLightning;->y:F

    :cond_1
    iget v0, p0, Lcom/prineside/tdi2/shapes/ChainLightning;->D:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/prineside/tdi2/shapes/ChainLightning;->D:F

    iget-boolean p1, p0, Lcom/prineside/tdi2/shapes/ChainLightning;->B:Z

    if-eqz p1, :cond_3

    const/high16 p1, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/prineside/tdi2/shapes/ChainLightning;->A:F

    div-float/2addr v0, v1

    sub-float/2addr p1, v0

    cmpg-float v0, p1, v2

    if-gez v0, :cond_2

    goto :goto_0

    :cond_2
    move v2, p1

    :goto_0
    sget-object p1, Lcom/prineside/tdi2/shapes/ChainLightning;->G:Lcom/badlogic/gdx/graphics/Color;

    iput v2, p1, Lcom/badlogic/gdx/graphics/Color;->a:F

    iget-object v0, p0, Lcom/prineside/tdi2/shapes/ChainLightning;->u:Lcom/prineside/tdi2/shapes/MultiLine;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/shapes/MultiLine;->setTint(Lcom/badlogic/gdx/graphics/Color;)V

    :cond_3
    return-void
.end method
