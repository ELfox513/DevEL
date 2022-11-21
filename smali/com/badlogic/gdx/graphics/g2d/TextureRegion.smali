.class public Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/badlogic/gdx/graphics/Texture;

.field public b:F

.field public c:F

.field public d:F

.field public e:F

.field public f:I

.field public g:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/Texture;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->a:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result p1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1, v0, p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setRegion(IIII)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "texture cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/Texture;FFFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->a:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setRegion(FFFF)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/Texture;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->a:Lcom/badlogic/gdx/graphics/Texture;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1, p2, p3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setRegion(IIII)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/Texture;IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->a:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setRegion(IIII)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setRegion(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual/range {p0 .. p5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setRegion(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)V

    return-void
.end method

.method public static split(Lcom/badlogic/gdx/graphics/Texture;II)[[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->split(II)[[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public flip(ZZ)V
    .locals 1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->b:F

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->d:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->b:F

    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->d:F

    :cond_0
    if-eqz p2, :cond_1

    iget p1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->c:F

    iget p2, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->e:F

    iput p2, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->c:F

    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->e:F

    :cond_1
    return-void
.end method

.method public getRegionHeight()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->g:I

    return v0
.end method

.method public getRegionWidth()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->f:I

    return v0
.end method

.method public getRegionX()I
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->b:F

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->a:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public getRegionY()I
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->c:F

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->a:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public getTexture()Lcom/badlogic/gdx/graphics/Texture;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->a:Lcom/badlogic/gdx/graphics/Texture;

    return-object v0
.end method

.method public getU()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->b:F

    return v0
.end method

.method public getU2()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->d:F

    return v0
.end method

.method public getV()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->c:F

    return v0
.end method

.method public getV2()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->e:F

    return v0
.end method

.method public isFlipX()Z
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->b:F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->d:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFlipY()Z
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->c:F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->e:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public scroll(FF)V
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    cmpl-float v2, p1, v1

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->d:F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->b:F

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->a:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v2, v2, v3

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->b:F

    add-float/2addr v3, p1

    rem-float/2addr v3, v0

    iput v3, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->b:F

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->a:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v2, p1

    add-float/2addr v3, v2

    iput v3, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->d:F

    :cond_0
    cmpl-float p1, p2, v1

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->e:F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->c:F

    sub-float/2addr p1, v1

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->a:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float p1, p1, v1

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->c:F

    add-float/2addr v1, p2

    rem-float/2addr v1, v0

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->c:F

    iget-object p2, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->a:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    add-float/2addr v1, p1

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->e:F

    :cond_1
    return-void
.end method

.method public setRegion(FFFF)V
    .locals 5

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->a:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->a:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v1

    sub-float v2, p3, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    int-to-float v0, v0

    mul-float v2, v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->f:I

    sub-float v2, p4, p2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    int-to-float v1, v1

    mul-float v2, v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->g:I

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->f:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    if-ne v2, v4, :cond_0

    const/high16 v2, 0x3e800000    # 0.25f

    div-float v0, v2, v0

    add-float/2addr p1, v0

    sub-float/2addr p3, v0

    div-float/2addr v2, v1

    add-float/2addr p2, v2

    sub-float/2addr p4, v2

    :cond_0
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->b:F

    iput p2, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->c:F

    iput p3, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->d:F

    iput p4, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->e:F

    return-void
.end method

.method public setRegion(IIII)V
    .locals 4

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->a:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v0, v1, v0

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->a:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    int-to-float v2, p1

    mul-float v2, v2, v0

    int-to-float v3, p2

    mul-float v3, v3, v1

    add-int/2addr p1, p3

    int-to-float p1, p1

    mul-float p1, p1, v0

    add-int/2addr p2, p4

    int-to-float p2, p2

    mul-float p2, p2, v1

    invoke-virtual {p0, v2, v3, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setRegion(FFFF)V

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->f:I

    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->g:I

    return-void
.end method

.method public setRegion(Lcom/badlogic/gdx/graphics/Texture;)V
    .locals 2

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->a:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result p1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1, v0, p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setRegion(IIII)V

    return-void
.end method

.method public setRegion(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .locals 3

    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->a:Lcom/badlogic/gdx/graphics/Texture;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->a:Lcom/badlogic/gdx/graphics/Texture;

    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->b:F

    iget v1, p1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->c:F

    iget v2, p1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->d:F

    iget p1, p1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->e:F

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setRegion(FFFF)V

    return-void
.end method

.method public setRegion(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)V
    .locals 1

    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->a:Lcom/badlogic/gdx/graphics/Texture;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->a:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionX()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionY()I

    move-result p1

    add-int/2addr p1, p3

    invoke-virtual {p0, v0, p1, p4, p5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setRegion(IIII)V

    return-void
.end method

.method public setRegionHeight(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->isFlipY()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->e:F

    int-to-float p1, p1

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->a:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p1, v1

    add-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setV(F)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->c:F

    int-to-float p1, p1

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->a:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p1, v1

    add-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setV2(F)V

    :goto_0
    return-void
.end method

.method public setRegionWidth(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->isFlipX()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->d:F

    int-to-float p1, p1

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->a:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p1, v1

    add-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setU(F)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->b:F

    int-to-float p1, p1

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->a:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p1, v1

    add-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setU2(F)V

    :goto_0
    return-void
.end method

.method public setRegionX(I)V
    .locals 1

    int-to-float p1, p1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->a:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setU(F)V

    return-void
.end method

.method public setRegionY(I)V
    .locals 1

    int-to-float p1, p1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->a:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setV(F)V

    return-void
.end method

.method public setTexture(Lcom/badlogic/gdx/graphics/Texture;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->a:Lcom/badlogic/gdx/graphics/Texture;

    return-void
.end method

.method public setU(F)V
    .locals 1

    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->b:F

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->d:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->a:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float p1, p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->f:I

    return-void
.end method

.method public setU2(F)V
    .locals 1

    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->d:F

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->b:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->a:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float p1, p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->f:I

    return-void
.end method

.method public setV(F)V
    .locals 1

    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->c:F

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->e:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->a:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float p1, p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->g:I

    return-void
.end method

.method public setV2(F)V
    .locals 1

    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->e:F

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->c:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->a:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float p1, p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->g:I

    return-void
.end method

.method public split(II)[[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 18

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionX()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionY()I

    move-result v1

    iget v2, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->f:I

    iget v3, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->g:I

    div-int v8, v3, p2

    div-int v9, v2, p1

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    aput v9, v2, v3

    const/4 v10, 0x0

    aput v8, v2, v10

    const-class v3, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, [[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move v12, v1

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v8, :cond_1

    move v15, v7

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v9, :cond_0

    aget-object v16, v11, v13

    new-instance v17, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->a:Lcom/badlogic/gdx/graphics/Texture;

    move-object/from16 v1, v17

    move v3, v15

    move v4, v12

    move/from16 v5, p1

    move/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;IIII)V

    aput-object v17, v16, v14

    add-int/lit8 v14, v14, 0x1

    add-int v15, v15, p1

    goto :goto_1

    :cond_0
    add-int/lit8 v13, v13, 0x1

    add-int v12, v12, p2

    goto :goto_0

    :cond_1
    return-object v11
.end method
