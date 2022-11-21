.class public Lcom/badlogic/gdx/math/Circle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Lcom/badlogic/gdx/math/Shape2D;


# instance fields
.field public radius:F

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/badlogic/gdx/math/Circle;->x:F

    iput p2, p0, Lcom/badlogic/gdx/math/Circle;->y:F

    iput p3, p0, Lcom/badlogic/gdx/math/Circle;->radius:F

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/math/Circle;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/badlogic/gdx/math/Circle;->x:F

    iput v0, p0, Lcom/badlogic/gdx/math/Circle;->x:F

    iget v0, p1, Lcom/badlogic/gdx/math/Circle;->y:F

    iput v0, p0, Lcom/badlogic/gdx/math/Circle;->y:F

    iget p1, p1, Lcom/badlogic/gdx/math/Circle;->radius:F

    iput p1, p0, Lcom/badlogic/gdx/math/Circle;->radius:F

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/math/Vector2;F)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iput v0, p0, Lcom/badlogic/gdx/math/Circle;->x:F

    iget p1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iput p1, p0, Lcom/badlogic/gdx/math/Circle;->y:F

    iput p2, p0, Lcom/badlogic/gdx/math/Circle;->radius:F

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iput v0, p0, Lcom/badlogic/gdx/math/Circle;->x:F

    iget p1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iput p1, p0, Lcom/badlogic/gdx/math/Circle;->y:F

    iget v1, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v0, v1

    iget p2, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr p1, p2

    invoke-static {v0, p1}, Lcom/badlogic/gdx/math/Vector2;->len(FF)F

    move-result p1

    iput p1, p0, Lcom/badlogic/gdx/math/Circle;->radius:F

    return-void
.end method


# virtual methods
.method public area()F
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/math/Circle;->radius:F

    mul-float v0, v0, v0

    const v1, 0x40490fdb    # (float)Math.PI

    mul-float v0, v0, v1

    return v0
.end method

.method public circumference()F
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/math/Circle;->radius:F

    const v1, 0x40c90fdb

    mul-float v0, v0, v1

    return v0
.end method

.method public contains(FF)Z
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/math/Circle;->x:F

    sub-float/2addr v0, p1

    iget p1, p0, Lcom/badlogic/gdx/math/Circle;->y:F

    sub-float/2addr p1, p2

    mul-float v0, v0, v0

    mul-float p1, p1, p1

    add-float/2addr v0, p1

    iget p1, p0, Lcom/badlogic/gdx/math/Circle;->radius:F

    mul-float p1, p1, p1

    cmpg-float p1, v0, p1

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public contains(Lcom/badlogic/gdx/math/Circle;)Z
    .locals 6

    iget v0, p0, Lcom/badlogic/gdx/math/Circle;->radius:F

    iget v1, p1, Lcom/badlogic/gdx/math/Circle;->radius:F

    sub-float v2, v0, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    cmpg-float v4, v2, v4

    if-gez v4, :cond_0

    return v3

    :cond_0
    iget v4, p0, Lcom/badlogic/gdx/math/Circle;->x:F

    iget v5, p1, Lcom/badlogic/gdx/math/Circle;->x:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/badlogic/gdx/math/Circle;->y:F

    iget p1, p1, Lcom/badlogic/gdx/math/Circle;->y:F

    sub-float/2addr v5, p1

    mul-float v4, v4, v4

    mul-float v5, v5, v5

    add-float/2addr v4, v5

    add-float/2addr v0, v1

    mul-float v2, v2, v2

    cmpg-float p1, v2, v4

    if-ltz p1, :cond_1

    mul-float v0, v0, v0

    cmpg-float p1, v4, v0

    if-gez p1, :cond_1

    const/4 v3, 0x1

    :cond_1
    return v3
.end method

.method public contains(Lcom/badlogic/gdx/math/Vector2;)Z
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/math/Circle;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Circle;->y:F

    iget p1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v1, p1

    mul-float v0, v0, v0

    mul-float v1, v1, v1

    add-float/2addr v0, v1

    iget p1, p0, Lcom/badlogic/gdx/math/Circle;->radius:F

    mul-float p1, p1, p1

    cmpg-float p1, v0, p1

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lcom/badlogic/gdx/math/Circle;

    iget v2, p0, Lcom/badlogic/gdx/math/Circle;->x:F

    iget v3, p1, Lcom/badlogic/gdx/math/Circle;->x:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    iget v2, p0, Lcom/badlogic/gdx/math/Circle;->y:F

    iget v3, p1, Lcom/badlogic/gdx/math/Circle;->y:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    iget v2, p0, Lcom/badlogic/gdx/math/Circle;->radius:F

    iget p1, p1, Lcom/badlogic/gdx/math/Circle;->radius:F

    cmpl-float p1, v2, p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/badlogic/gdx/math/Circle;->radius:F

    invoke-static {v0}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToRawIntBits(F)I

    move-result v0

    const/16 v1, 0x29

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x29

    iget v2, p0, Lcom/badlogic/gdx/math/Circle;->x:F

    invoke-static {v2}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToRawIntBits(F)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x29

    iget v1, p0, Lcom/badlogic/gdx/math/Circle;->y:F

    invoke-static {v1}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToRawIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public overlaps(Lcom/badlogic/gdx/math/Circle;)Z
    .locals 3

    iget v0, p0, Lcom/badlogic/gdx/math/Circle;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Circle;->x:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Circle;->y:F

    iget v2, p1, Lcom/badlogic/gdx/math/Circle;->y:F

    sub-float/2addr v1, v2

    mul-float v0, v0, v0

    mul-float v1, v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Circle;->radius:F

    iget p1, p1, Lcom/badlogic/gdx/math/Circle;->radius:F

    add-float/2addr v1, p1

    mul-float v1, v1, v1

    cmpg-float p1, v0, v1

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public set(FFF)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/math/Circle;->x:F

    iput p2, p0, Lcom/badlogic/gdx/math/Circle;->y:F

    iput p3, p0, Lcom/badlogic/gdx/math/Circle;->radius:F

    return-void
.end method

.method public set(Lcom/badlogic/gdx/math/Circle;)V
    .locals 1

    iget v0, p1, Lcom/badlogic/gdx/math/Circle;->x:F

    iput v0, p0, Lcom/badlogic/gdx/math/Circle;->x:F

    iget v0, p1, Lcom/badlogic/gdx/math/Circle;->y:F

    iput v0, p0, Lcom/badlogic/gdx/math/Circle;->y:F

    iget p1, p1, Lcom/badlogic/gdx/math/Circle;->radius:F

    iput p1, p0, Lcom/badlogic/gdx/math/Circle;->radius:F

    return-void
.end method

.method public set(Lcom/badlogic/gdx/math/Vector2;F)V
    .locals 1

    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iput v0, p0, Lcom/badlogic/gdx/math/Circle;->x:F

    iget p1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iput p1, p0, Lcom/badlogic/gdx/math/Circle;->y:F

    iput p2, p0, Lcom/badlogic/gdx/math/Circle;->radius:F

    return-void
.end method

.method public set(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)V
    .locals 2

    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iput v0, p0, Lcom/badlogic/gdx/math/Circle;->x:F

    iget p1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iput p1, p0, Lcom/badlogic/gdx/math/Circle;->y:F

    iget v1, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v0, v1

    iget p2, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr p1, p2

    invoke-static {v0, p1}, Lcom/badlogic/gdx/math/Vector2;->len(FF)F

    move-result p1

    iput p1, p0, Lcom/badlogic/gdx/math/Circle;->radius:F

    return-void
.end method

.method public setPosition(FF)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/math/Circle;->x:F

    iput p2, p0, Lcom/badlogic/gdx/math/Circle;->y:F

    return-void
.end method

.method public setPosition(Lcom/badlogic/gdx/math/Vector2;)V
    .locals 1

    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iput v0, p0, Lcom/badlogic/gdx/math/Circle;->x:F

    iget p1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iput p1, p0, Lcom/badlogic/gdx/math/Circle;->y:F

    return-void
.end method

.method public setRadius(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/math/Circle;->radius:F

    return-void
.end method

.method public setX(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/math/Circle;->x:F

    return-void
.end method

.method public setY(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/math/Circle;->y:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/badlogic/gdx/math/Circle;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/badlogic/gdx/math/Circle;->y:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/badlogic/gdx/math/Circle;->radius:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
