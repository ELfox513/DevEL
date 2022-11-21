.class public abstract Lcom/badlogic/gdx/utils/viewport/Viewport;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/badlogic/gdx/graphics/Camera;

.field public b:F

.field public c:F

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public final h:Lcom/badlogic/gdx/math/Vector3;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->h:Lcom/badlogic/gdx/math/Vector3;

    return-void
.end method


# virtual methods
.method public apply()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/viewport/Viewport;->apply(Z)V

    return-void
.end method

.method public apply(Z)V
    .locals 4

    iget v0, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->d:I

    iget v1, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->e:I

    iget v2, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->f:I

    iget v3, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->g:I

    invoke-static {v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/glutils/HdpiUtils;->glViewport(IIII)V

    iget-object v0, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->a:Lcom/badlogic/gdx/graphics/Camera;

    iget v1, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->b:F

    iput v1, v0, Lcom/badlogic/gdx/graphics/Camera;->viewportWidth:F

    iget v2, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->c:F

    iput v2, v0, Lcom/badlogic/gdx/graphics/Camera;->viewportHeight:F

    if-eqz p1, :cond_0

    iget-object p1, v0, Lcom/badlogic/gdx/graphics/Camera;->position:Lcom/badlogic/gdx/math/Vector3;

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v1, v0

    div-float/2addr v2, v0

    const/4 v0, 0x0

    invoke-virtual {p1, v1, v2, v0}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    :cond_0
    iget-object p1, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->a:Lcom/badlogic/gdx/graphics/Camera;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Camera;->update()V

    return-void
.end method

.method public calculateScissors(Lcom/badlogic/gdx/math/Matrix4;Lcom/badlogic/gdx/math/Rectangle;Lcom/badlogic/gdx/math/Rectangle;)V
    .locals 8

    iget-object v0, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->a:Lcom/badlogic/gdx/graphics/Camera;

    iget v1, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->d:I

    int-to-float v1, v1

    iget v2, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->e:I

    int-to-float v2, v2

    iget v3, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->f:I

    int-to-float v3, v3

    iget v4, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->g:I

    int-to-float v4, v4

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v0 .. v7}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->calculateScissors(Lcom/badlogic/gdx/graphics/Camera;FFFFLcom/badlogic/gdx/math/Matrix4;Lcom/badlogic/gdx/math/Rectangle;Lcom/badlogic/gdx/math/Rectangle;)V

    return-void
.end method

.method public getBottomGutterHeight()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->e:I

    return v0
.end method

.method public getCamera()Lcom/badlogic/gdx/graphics/Camera;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->a:Lcom/badlogic/gdx/graphics/Camera;

    return-object v0
.end method

.method public getLeftGutterWidth()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->d:I

    return v0
.end method

.method public getPickRay(FF)Lcom/badlogic/gdx/math/collision/Ray;
    .locals 7

    iget-object v0, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->a:Lcom/badlogic/gdx/graphics/Camera;

    iget v1, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->d:I

    int-to-float v3, v1

    iget v1, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->e:I

    int-to-float v4, v1

    iget v1, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->f:I

    int-to-float v5, v1

    iget v1, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->g:I

    int-to-float v6, v1

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/Camera;->getPickRay(FFFFFF)Lcom/badlogic/gdx/math/collision/Ray;

    move-result-object p1

    return-object p1
.end method

.method public getRightGutterWidth()I
    .locals 3

    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->d:I

    iget v2, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->f:I

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    return v0
.end method

.method public getRightGutterX()I
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->d:I

    iget v1, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->f:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getScreenHeight()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->g:I

    return v0
.end method

.method public getScreenWidth()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->f:I

    return v0
.end method

.method public getScreenX()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->d:I

    return v0
.end method

.method public getScreenY()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->e:I

    return v0
.end method

.method public getTopGutterHeight()I
    .locals 3

    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->e:I

    iget v2, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->g:I

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    return v0
.end method

.method public getTopGutterY()I
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->e:I

    iget v1, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->g:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getWorldHeight()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->c:F

    return v0
.end method

.method public getWorldWidth()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->b:F

    return v0
.end method

.method public project(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .locals 10

    iget-object v0, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->h:Lcom/badlogic/gdx/math/Vector3;

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    iget-object v4, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->a:Lcom/badlogic/gdx/graphics/Camera;

    iget-object v5, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->h:Lcom/badlogic/gdx/math/Vector3;

    iget v0, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->d:I

    int-to-float v6, v0

    iget v0, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->e:I

    int-to-float v7, v0

    iget v0, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->f:I

    int-to-float v8, v0

    iget v0, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->g:I

    int-to-float v9, v0

    invoke-virtual/range {v4 .. v9}, Lcom/badlogic/gdx/graphics/Camera;->project(Lcom/badlogic/gdx/math/Vector3;FFFF)Lcom/badlogic/gdx/math/Vector3;

    iget-object v0, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->h:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    return-object p1
.end method

.method public project(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;
    .locals 6

    iget-object v0, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->a:Lcom/badlogic/gdx/graphics/Camera;

    iget v1, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->d:I

    int-to-float v2, v1

    iget v1, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->e:I

    int-to-float v3, v1

    iget v1, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->f:I

    int-to-float v4, v1

    iget v1, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->g:I

    int-to-float v5, v1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/Camera;->project(Lcom/badlogic/gdx/math/Vector3;FFFF)Lcom/badlogic/gdx/math/Vector3;

    return-object p1
.end method

.method public setCamera(Lcom/badlogic/gdx/graphics/Camera;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->a:Lcom/badlogic/gdx/graphics/Camera;

    return-void
.end method

.method public setScreenBounds(IIII)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->d:I

    iput p2, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->e:I

    iput p3, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->f:I

    iput p4, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->g:I

    return-void
.end method

.method public setScreenHeight(I)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->g:I

    return-void
.end method

.method public setScreenPosition(II)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->d:I

    iput p2, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->e:I

    return-void
.end method

.method public setScreenSize(II)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->f:I

    iput p2, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->g:I

    return-void
.end method

.method public setScreenWidth(I)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->f:I

    return-void
.end method

.method public setScreenX(I)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->d:I

    return-void
.end method

.method public setScreenY(I)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->e:I

    return-void
.end method

.method public setWorldHeight(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->c:F

    return-void
.end method

.method public setWorldSize(FF)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->b:F

    iput p2, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->c:F

    return-void
.end method

.method public setWorldWidth(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->b:F

    return-void
.end method

.method public toScreenCoordinates(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector2;
    .locals 7

    iget-object v0, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->h:Lcom/badlogic/gdx/math/Vector3;

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    iget-object v0, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->h:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->a:Lcom/badlogic/gdx/graphics/Camera;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->h:Lcom/badlogic/gdx/math/Vector3;

    iget p2, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->d:I

    int-to-float v3, p2

    iget p2, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->e:I

    int-to-float v4, p2

    iget p2, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->f:I

    int-to-float v5, p2

    iget p2, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->g:I

    int-to-float v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/Camera;->project(Lcom/badlogic/gdx/math/Vector3;FFFF)Lcom/badlogic/gdx/math/Vector3;

    iget-object p2, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->h:Lcom/badlogic/gdx/math/Vector3;

    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->h:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v1, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float/2addr v0, v2

    iput v0, p2, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget p2, v1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iput p2, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget p2, v1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iput p2, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    return-object p1
.end method

.method public unproject(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .locals 10

    iget-object v0, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->h:Lcom/badlogic/gdx/math/Vector3;

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    iget-object v4, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->a:Lcom/badlogic/gdx/graphics/Camera;

    iget-object v5, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->h:Lcom/badlogic/gdx/math/Vector3;

    iget v0, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->d:I

    int-to-float v6, v0

    iget v0, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->e:I

    int-to-float v7, v0

    iget v0, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->f:I

    int-to-float v8, v0

    iget v0, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->g:I

    int-to-float v9, v0

    invoke-virtual/range {v4 .. v9}, Lcom/badlogic/gdx/graphics/Camera;->unproject(Lcom/badlogic/gdx/math/Vector3;FFFF)Lcom/badlogic/gdx/math/Vector3;

    iget-object v0, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->h:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    return-object p1
.end method

.method public unproject(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;
    .locals 6

    iget-object v0, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->a:Lcom/badlogic/gdx/graphics/Camera;

    iget v1, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->d:I

    int-to-float v2, v1

    iget v1, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->e:I

    int-to-float v3, v1

    iget v1, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->f:I

    int-to-float v4, v1

    iget v1, p0, Lcom/badlogic/gdx/utils/viewport/Viewport;->g:I

    int-to-float v5, v1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/Camera;->unproject(Lcom/badlogic/gdx/math/Vector3;FFFF)Lcom/badlogic/gdx/math/Vector3;

    return-object p1
.end method

.method public final update(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/badlogic/gdx/utils/viewport/Viewport;->update(IIZ)V

    return-void
.end method

.method public update(IIZ)V
    .locals 0

    invoke-virtual {p0, p3}, Lcom/badlogic/gdx/utils/viewport/Viewport;->apply(Z)V

    return-void
.end method
