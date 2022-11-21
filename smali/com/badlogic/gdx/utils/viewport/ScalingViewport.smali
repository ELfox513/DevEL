.class public Lcom/badlogic/gdx/utils/viewport/ScalingViewport;
.super Lcom/badlogic/gdx/utils/viewport/Viewport;
.source "SourceFile"


# instance fields
.field public i:Lcom/badlogic/gdx/utils/Scaling;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/Scaling;FF)V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/graphics/OrthographicCamera;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/OrthographicCamera;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/badlogic/gdx/utils/viewport/ScalingViewport;-><init>(Lcom/badlogic/gdx/utils/Scaling;FFLcom/badlogic/gdx/graphics/Camera;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/utils/Scaling;FFLcom/badlogic/gdx/graphics/Camera;)V
    .locals 0

    invoke-direct {p0}, Lcom/badlogic/gdx/utils/viewport/Viewport;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/utils/viewport/ScalingViewport;->i:Lcom/badlogic/gdx/utils/Scaling;

    invoke-virtual {p0, p2, p3}, Lcom/badlogic/gdx/utils/viewport/Viewport;->setWorldSize(FF)V

    invoke-virtual {p0, p4}, Lcom/badlogic/gdx/utils/viewport/Viewport;->setCamera(Lcom/badlogic/gdx/graphics/Camera;)V

    return-void
.end method


# virtual methods
.method public getScaling()Lcom/badlogic/gdx/utils/Scaling;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/utils/viewport/ScalingViewport;->i:Lcom/badlogic/gdx/utils/Scaling;

    return-object v0
.end method

.method public setScaling(Lcom/badlogic/gdx/utils/Scaling;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/utils/viewport/ScalingViewport;->i:Lcom/badlogic/gdx/utils/Scaling;

    return-void
.end method

.method public update(IIZ)V
    .locals 5

    iget-object v0, p0, Lcom/badlogic/gdx/utils/viewport/ScalingViewport;->i:Lcom/badlogic/gdx/utils/Scaling;

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/viewport/Viewport;->getWorldWidth()F

    move-result v1

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/viewport/Viewport;->getWorldHeight()F

    move-result v2

    int-to-float v3, p1

    int-to-float v4, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/utils/Scaling;->apply(FFFF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    iget v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sub-int/2addr p1, v1

    div-int/lit8 p1, p1, 0x2

    sub-int/2addr p2, v0

    div-int/lit8 p2, p2, 0x2

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/badlogic/gdx/utils/viewport/Viewport;->setScreenBounds(IIII)V

    invoke-virtual {p0, p3}, Lcom/badlogic/gdx/utils/viewport/Viewport;->apply(Z)V

    return-void
.end method
