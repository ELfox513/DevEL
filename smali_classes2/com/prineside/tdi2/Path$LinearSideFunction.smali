.class public Lcom/prineside/tdi2/Path$LinearSideFunction;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/Path$SideFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/Path;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LinearSideFunction"
.end annotation


# instance fields
.field public final a:F

.field public final b:F

.field public final c:F

.field public final d:F

.field public final e:F

.field public final f:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x43000000    # 128.0f

    mul-float v1, p1, v0

    iput v1, p0, Lcom/prineside/tdi2/Path$LinearSideFunction;->a:F

    mul-float v1, p2, v0

    iput v1, p0, Lcom/prineside/tdi2/Path$LinearSideFunction;->c:F

    mul-float v1, p3, v0

    iput v1, p0, Lcom/prineside/tdi2/Path$LinearSideFunction;->b:F

    mul-float v0, v0, p4

    iput v0, p0, Lcom/prineside/tdi2/Path$LinearSideFunction;->d:F

    invoke-static {p1, p2, p3, p4}, Lcom/prineside/tdi2/utils/PMath;->getAngleBetweenPoints(FFFF)F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/Path$LinearSideFunction;->f:F

    invoke-static {p1, p2, p3, p4}, Lcom/prineside/tdi2/utils/PMath;->getDistanceBetweenPoints(FFFF)F

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    div-float/2addr p2, p1

    iput p2, p0, Lcom/prineside/tdi2/Path$LinearSideFunction;->e:F

    return-void
.end method


# virtual methods
.method public position(FLcom/badlogic/gdx/math/Vector2;)V
    .locals 2

    iget v0, p0, Lcom/prineside/tdi2/Path$LinearSideFunction;->a:F

    iget v1, p0, Lcom/prineside/tdi2/Path$LinearSideFunction;->b:F

    sub-float/2addr v1, v0

    mul-float v1, v1, p1

    add-float/2addr v0, v1

    iput v0, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v0, p0, Lcom/prineside/tdi2/Path$LinearSideFunction;->c:F

    iget v1, p0, Lcom/prineside/tdi2/Path$LinearSideFunction;->d:F

    sub-float/2addr v1, v0

    mul-float v1, v1, p1

    add-float/2addr v0, v1

    iput v0, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    return-void
.end method

.method public rotation(F)F
    .locals 0

    iget p1, p0, Lcom/prineside/tdi2/Path$LinearSideFunction;->f:F

    return p1
.end method

.method public speedMultiplier()F
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/Path$LinearSideFunction;->e:F

    return v0
.end method
