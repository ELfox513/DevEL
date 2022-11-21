.class Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/input/GestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VelocityTracker"
.end annotation


# instance fields
.field public a:I

.field public b:F

.field public c:F

.field public d:F

.field public e:F

.field public f:J

.field public g:I

.field public h:[F

.field public i:[F

.field public j:[J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    iput v0, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->a:I

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->h:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->i:[F

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->j:[J

    return-void
.end method


# virtual methods
.method public final a([FI)F
    .locals 3

    iget v0, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->a:I

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    aget v2, p1, v1

    add-float/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    int-to-float p1, p2

    div-float/2addr v0, p1

    return v0
.end method

.method public final b([JI)J
    .locals 7

    iget v0, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->a:I

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    move-wide v3, v0

    :goto_0
    if-ge v2, p2, :cond_0

    aget-wide v5, p1, v2

    add-long/2addr v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    return-wide v0

    :cond_1
    int-to-long p1, p2

    div-long/2addr v3, p1

    return-wide v3
.end method

.method public getVelocityX()F
    .locals 4

    iget-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->h:[F

    iget v1, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->g:I

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->a([FI)F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->j:[J

    iget v2, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->g:I

    invoke-virtual {p0, v1, v2}, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->b([JI)J

    move-result-wide v1

    long-to-float v1, v1

    const v2, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v1, v2

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-nez v3, :cond_0

    return v2

    :cond_0
    div-float/2addr v0, v1

    return v0
.end method

.method public getVelocityY()F
    .locals 4

    iget-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->i:[F

    iget v1, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->g:I

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->a([FI)F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->j:[J

    iget v2, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->g:I

    invoke-virtual {p0, v1, v2}, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->b([JI)J

    move-result-wide v1

    long-to-float v1, v1

    const v2, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v1, v2

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-nez v3, :cond_0

    return v2

    :cond_0
    div-float/2addr v0, v1

    return v0
.end method

.method public start(FFJ)V
    .locals 3

    iput p1, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->b:F

    iput p2, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->c:F

    const/4 p1, 0x0

    iput p1, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->d:F

    iput p1, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->e:F

    const/4 p2, 0x0

    iput p2, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->g:I

    :goto_0
    iget v0, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->a:I

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->h:[F

    aput p1, v0, p2

    iget-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->i:[F

    aput p1, v0, p2

    iget-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->j:[J

    const-wide/16 v1, 0x0

    aput-wide v1, v0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    iput-wide p3, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->f:J

    return-void
.end method

.method public update(FFJ)V
    .locals 3

    iget v0, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->b:F

    sub-float v0, p1, v0

    iput v0, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->d:F

    iget v1, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->c:F

    sub-float v1, p2, v1

    iput v1, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->e:F

    iput p1, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->b:F

    iput p2, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->c:F

    iget-wide p1, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->f:J

    sub-long p1, p3, p1

    iput-wide p3, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->f:J

    iget p3, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->g:I

    iget p4, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->a:I

    rem-int p4, p3, p4

    iget-object v2, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->h:[F

    aput v0, v2, p4

    iget-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->i:[F

    aput v1, v0, p4

    iget-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->j:[J

    aput-wide p1, v0, p4

    add-int/lit8 p3, p3, 0x1

    iput p3, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->g:I

    return-void
.end method
