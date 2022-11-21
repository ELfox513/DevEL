.class public Lcom/badlogic/gdx/utils/viewport/ScreenViewport;
.super Lcom/badlogic/gdx/utils/viewport/Viewport;
.source "SourceFile"


# instance fields
.field public i:F


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/graphics/OrthographicCamera;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/OrthographicCamera;-><init>()V

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/viewport/ScreenViewport;-><init>(Lcom/badlogic/gdx/graphics/Camera;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/Camera;)V
    .locals 1

    invoke-direct {p0}, Lcom/badlogic/gdx/utils/viewport/Viewport;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/badlogic/gdx/utils/viewport/ScreenViewport;->i:F

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/viewport/Viewport;->setCamera(Lcom/badlogic/gdx/graphics/Camera;)V

    return-void
.end method


# virtual methods
.method public getUnitsPerPixel()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/utils/viewport/ScreenViewport;->i:F

    return v0
.end method

.method public setUnitsPerPixel(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/utils/viewport/ScreenViewport;->i:F

    return-void
.end method

.method public update(IIZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, p1, p2}, Lcom/badlogic/gdx/utils/viewport/Viewport;->setScreenBounds(IIII)V

    int-to-float p1, p1

    iget v0, p0, Lcom/badlogic/gdx/utils/viewport/ScreenViewport;->i:F

    mul-float p1, p1, v0

    int-to-float p2, p2

    mul-float p2, p2, v0

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/utils/viewport/Viewport;->setWorldSize(FF)V

    invoke-virtual {p0, p3}, Lcom/badlogic/gdx/utils/viewport/Viewport;->apply(Z)V

    return-void
.end method
