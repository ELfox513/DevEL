.class public Lcom/badlogic/gdx/math/Plane;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/math/Plane$PlaneSide;
    }
.end annotation


# instance fields
.field public d:F

.field public final normal:Lcom/badlogic/gdx/math/Vector3;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/math/Plane;->normal:Lcom/badlogic/gdx/math/Vector3;

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/math/Plane;->d:F

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/math/Vector3;F)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/math/Plane;->normal:Lcom/badlogic/gdx/math/Vector3;

    const/4 v1, 0x0

    iput v1, p0, Lcom/badlogic/gdx/math/Plane;->d:F

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    iput p2, p0, Lcom/badlogic/gdx/math/Plane;->d:F

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/math/Plane;->normal:Lcom/badlogic/gdx/math/Vector3;

    const/4 v1, 0x0

    iput v1, p0, Lcom/badlogic/gdx/math/Plane;->d:F

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result p1

    neg-float p1, p1

    iput p1, p0, Lcom/badlogic/gdx/math/Plane;->d:F

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/math/Plane;->normal:Lcom/badlogic/gdx/math/Vector3;

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/math/Plane;->d:F

    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/math/Plane;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V

    return-void
.end method


# virtual methods
.method public distance(Lcom/badlogic/gdx/math/Vector3;)F
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/math/Plane;->normal:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result p1

    iget v0, p0, Lcom/badlogic/gdx/math/Plane;->d:F

    add-float/2addr p1, v0

    return p1
.end method

.method public getD()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/math/Plane;->d:F

    return v0
.end method

.method public getNormal()Lcom/badlogic/gdx/math/Vector3;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/math/Plane;->normal:Lcom/badlogic/gdx/math/Vector3;

    return-object v0
.end method

.method public isFrontFacing(Lcom/badlogic/gdx/math/Vector3;)Z
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/math/Plane;->normal:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result p1

    const/4 v0, 0x0

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public set(FFFF)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/math/Plane;->normal:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p1, p2, p3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    iput p4, p0, Lcom/badlogic/gdx/math/Plane;->d:F

    return-void
.end method

.method public set(FFFFFF)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/math/Plane;->normal:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p4, p5, p6}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    mul-float p1, p1, p4

    mul-float p2, p2, p5

    add-float/2addr p1, p2

    mul-float p3, p3, p6

    add-float/2addr p1, p3

    neg-float p1, p1

    iput p1, p0, Lcom/badlogic/gdx/math/Plane;->d:F

    return-void
.end method

.method public set(Lcom/badlogic/gdx/math/Plane;)V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/math/Plane;->normal:Lcom/badlogic/gdx/math/Vector3;

    iget-object v1, p1, Lcom/badlogic/gdx/math/Plane;->normal:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    iget p1, p1, Lcom/badlogic/gdx/math/Plane;->d:F

    iput p1, p0, Lcom/badlogic/gdx/math/Plane;->d:F

    return-void
.end method

.method public set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/math/Plane;->normal:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result p1

    neg-float p1, p1

    iput p1, p0, Lcom/badlogic/gdx/math/Plane;->d:F

    return-void
.end method

.method public set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V
    .locals 4

    iget-object v0, p0, Lcom/badlogic/gdx/math/Plane;->normal:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    iget v1, p2, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v2, p3, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float/2addr v1, v2

    iget v2, p2, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v3, p3, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float/2addr v2, v3

    iget p2, p2, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget p3, p3, Lcom/badlogic/gdx/math/Vector3;->z:F

    sub-float/2addr p2, p3

    invoke-virtual {v0, v1, v2, p2}, Lcom/badlogic/gdx/math/Vector3;->crs(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p2

    invoke-virtual {p2}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    iget-object p2, p0, Lcom/badlogic/gdx/math/Plane;->normal:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result p1

    neg-float p1, p1

    iput p1, p0, Lcom/badlogic/gdx/math/Plane;->d:F

    return-void
.end method

.method public testPoint(FFF)Lcom/badlogic/gdx/math/Plane$PlaneSide;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/math/Plane;->normal:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p1, p2, p3}, Lcom/badlogic/gdx/math/Vector3;->dot(FFF)F

    move-result p1

    iget p2, p0, Lcom/badlogic/gdx/math/Plane;->d:F

    add-float/2addr p1, p2

    const/4 p2, 0x0

    cmpl-float p3, p1, p2

    if-nez p3, :cond_0

    sget-object p1, Lcom/badlogic/gdx/math/Plane$PlaneSide;->OnPlane:Lcom/badlogic/gdx/math/Plane$PlaneSide;

    return-object p1

    :cond_0
    cmpg-float p1, p1, p2

    if-gez p1, :cond_1

    sget-object p1, Lcom/badlogic/gdx/math/Plane$PlaneSide;->Back:Lcom/badlogic/gdx/math/Plane$PlaneSide;

    return-object p1

    :cond_1
    sget-object p1, Lcom/badlogic/gdx/math/Plane$PlaneSide;->Front:Lcom/badlogic/gdx/math/Plane$PlaneSide;

    return-object p1
.end method

.method public testPoint(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Plane$PlaneSide;
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/math/Plane;->normal:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result p1

    iget v0, p0, Lcom/badlogic/gdx/math/Plane;->d:F

    add-float/2addr p1, v0

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    sget-object p1, Lcom/badlogic/gdx/math/Plane$PlaneSide;->OnPlane:Lcom/badlogic/gdx/math/Plane$PlaneSide;

    return-object p1

    :cond_0
    cmpg-float p1, p1, v0

    if-gez p1, :cond_1

    sget-object p1, Lcom/badlogic/gdx/math/Plane$PlaneSide;->Back:Lcom/badlogic/gdx/math/Plane$PlaneSide;

    return-object p1

    :cond_1
    sget-object p1, Lcom/badlogic/gdx/math/Plane$PlaneSide;->Front:Lcom/badlogic/gdx/math/Plane$PlaneSide;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/badlogic/gdx/math/Plane;->normal:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1}, Lcom/badlogic/gdx/math/Vector3;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/badlogic/gdx/math/Plane;->d:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
