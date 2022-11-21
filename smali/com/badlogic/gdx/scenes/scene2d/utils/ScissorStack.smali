.class public Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/math/Rectangle;",
            ">;"
        }
    .end annotation
.end field

.field public static b:Lcom/badlogic/gdx/math/Vector3;

.field public static final c:Lcom/badlogic/gdx/math/Rectangle;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->a:Lcom/badlogic/gdx/utils/Array;

    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->b:Lcom/badlogic/gdx/math/Vector3;

    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->c:Lcom/badlogic/gdx/math/Rectangle;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/badlogic/gdx/math/Rectangle;)V
    .locals 4

    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    iget v1, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    const/4 v2, 0x0

    cmpg-float v3, v1, v2

    if-gez v3, :cond_0

    neg-float v1, v1

    iput v1, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget v3, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    sub-float/2addr v3, v1

    iput v3, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    :cond_0
    cmpg-float v1, v0, v2

    if-gez v1, :cond_1

    neg-float v0, v0

    iput v0, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    iget v1, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    sub-float/2addr v1, v0

    iput v1, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    :cond_1
    return-void
.end method

.method public static calculateScissors(Lcom/badlogic/gdx/graphics/Camera;FFFFLcom/badlogic/gdx/math/Matrix4;Lcom/badlogic/gdx/math/Rectangle;Lcom/badlogic/gdx/math/Rectangle;)V
    .locals 13

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    move-object/from16 v2, p7

    sget-object v3, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->b:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v5, v1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    sget-object v3, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->b:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    sget-object v8, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->b:Lcom/badlogic/gdx/math/Vector3;

    move-object v7, p0

    move v9, p1

    move v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    invoke-virtual/range {v7 .. v12}, Lcom/badlogic/gdx/graphics/Camera;->project(Lcom/badlogic/gdx/math/Vector3;FFFF)Lcom/badlogic/gdx/math/Vector3;

    sget-object v3, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->b:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v3, Lcom/badlogic/gdx/math/Vector3;->x:F

    iput v4, v2, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v4, v3, Lcom/badlogic/gdx/math/Vector3;->y:F

    iput v4, v2, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v4, v1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v5, v1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v4, v5

    iget v5, v1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v1, v1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v5, v1

    invoke-virtual {v3, v4, v5, v6}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->b:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    sget-object v4, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->b:Lcom/badlogic/gdx/math/Vector3;

    move-object v3, p0

    move v5, p1

    move v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    invoke-virtual/range {v3 .. v8}, Lcom/badlogic/gdx/graphics/Camera;->project(Lcom/badlogic/gdx/math/Vector3;FFFF)Lcom/badlogic/gdx/math/Vector3;

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->b:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v3, v2, Lcom/badlogic/gdx/math/Rectangle;->x:F

    sub-float/2addr v1, v3

    iput v1, v2, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v1, v2, Lcom/badlogic/gdx/math/Rectangle;->y:F

    sub-float/2addr v0, v1

    iput v0, v2, Lcom/badlogic/gdx/math/Rectangle;->height:F

    return-void
.end method

.method public static calculateScissors(Lcom/badlogic/gdx/graphics/Camera;Lcom/badlogic/gdx/math/Matrix4;Lcom/badlogic/gdx/math/Rectangle;Lcom/badlogic/gdx/math/Rectangle;)V
    .locals 9

    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v0

    int-to-float v4, v0

    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v0

    int-to-float v5, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-static/range {v1 .. v8}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->calculateScissors(Lcom/badlogic/gdx/graphics/Camera;FFFFLcom/badlogic/gdx/math/Matrix4;Lcom/badlogic/gdx/math/Rectangle;Lcom/badlogic/gdx/math/Rectangle;)V

    return-void
.end method

.method public static getViewport()Lcom/badlogic/gdx/math/Rectangle;
    .locals 4

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->a:Lcom/badlogic/gdx/utils/Array;

    iget v1, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v1, :cond_0

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->c:Lcom/badlogic/gdx/math/Rectangle;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sget-object v2, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v2}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/badlogic/gdx/math/Rectangle;->set(FFFF)Lcom/badlogic/gdx/math/Rectangle;

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Rectangle;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->c:Lcom/badlogic/gdx/math/Rectangle;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/math/Rectangle;->set(Lcom/badlogic/gdx/math/Rectangle;)Lcom/badlogic/gdx/math/Rectangle;

    return-object v1
.end method

.method public static peekScissors()Lcom/badlogic/gdx/math/Rectangle;
    .locals 2
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->a:Lcom/badlogic/gdx/utils/Array;

    iget v1, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Rectangle;

    return-object v0
.end method

.method public static popScissors()Lcom/badlogic/gdx/math/Rectangle;
    .locals 5

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->a:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Rectangle;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->a:Lcom/badlogic/gdx/utils/Array;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v2, :cond_0

    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v2, 0xc11

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/graphics/GL20;->glDisable(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/math/Rectangle;

    iget v2, v1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    float-to-int v2, v2

    iget v3, v1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    float-to-int v3, v3

    iget v4, v1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    float-to-int v4, v4

    iget v1, v1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    float-to-int v1, v1

    invoke-static {v2, v3, v4, v1}, Lcom/badlogic/gdx/graphics/glutils/HdpiUtils;->glScissor(IIII)V

    :goto_0
    return-object v0
.end method

.method public static pushScissors(Lcom/badlogic/gdx/math/Rectangle;)Z
    .locals 9

    invoke-static {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->a(Lcom/badlogic/gdx/math/Rectangle;)V

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->a:Lcom/badlogic/gdx/utils/Array;

    iget v1, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    if-nez v1, :cond_2

    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    cmpg-float v0, v0, v4

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    cmpg-float v0, v0, v4

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v1, 0xc11

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glEnable(I)V

    goto :goto_1

    :cond_1
    :goto_0
    return v3

    :cond_2
    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Rectangle;

    iget v1, v0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v5, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    invoke-static {v1, v5}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget v5, v0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v6, v0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v5, v6

    iget v6, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v7, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    sub-float/2addr v5, v1

    cmpg-float v6, v5, v4

    if-gez v6, :cond_3

    return v3

    :cond_3
    iget v6, v0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v7, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iget v7, v0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v0, v0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v7, v0

    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v8, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v0, v8

    invoke-static {v7, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    sub-float/2addr v0, v6

    cmpg-float v7, v0, v4

    if-gez v7, :cond_4

    return v3

    :cond_4
    iput v1, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iput v6, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iput v5, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    :goto_1
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->a:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    float-to-int v0, v0

    iget v1, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    float-to-int v1, v1

    iget v3, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    float-to-int v3, v3

    iget p0, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    float-to-int p0, p0

    invoke-static {v0, v1, v3, p0}, Lcom/badlogic/gdx/graphics/glutils/HdpiUtils;->glScissor(IIII)V

    return v2
.end method
