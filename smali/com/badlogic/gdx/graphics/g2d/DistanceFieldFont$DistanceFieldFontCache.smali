.class Lcom/badlogic/gdx/graphics/g2d/DistanceFieldFont$DistanceFieldFontCache;
.super Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g2d/DistanceFieldFont;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DistanceFieldFontCache"
.end annotation


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/DistanceFieldFont;)V
    .locals 1

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->usesIntegerPositions()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/DistanceFieldFont;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Z)V

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;)V
    .locals 1

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/DistanceFieldFont$DistanceFieldFontCache;->f()F

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g2d/DistanceFieldFont$DistanceFieldFontCache;->g(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V

    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g2d/DistanceFieldFont$DistanceFieldFontCache;->g(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V

    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;II)V
    .locals 1

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/DistanceFieldFont$DistanceFieldFontCache;->f()F

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g2d/DistanceFieldFont$DistanceFieldFontCache;->g(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V

    invoke-super {p0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;II)V

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/DistanceFieldFont$DistanceFieldFontCache;->g(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V

    return-void
.end method

.method public final f()F
    .locals 2

    invoke-super {p0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->getFont()Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/DistanceFieldFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/DistanceFieldFont;->getDistanceFieldSmoothing()F

    move-result v1

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getScaleX()F

    move-result v0

    mul-float v1, v1, v0

    return v1
.end method

.method public final g(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V
    .locals 1

    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/g2d/Batch;->flush()V

    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/g2d/Batch;->getShader()Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    move-result-object p1

    const-string v0, "u_smoothing"

    invoke-virtual {p1, v0, p2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;F)V

    return-void
.end method
