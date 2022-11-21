.class public final Lr4/zb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/gb;


# instance fields
.field public final a:Lr4/ka;

.field public b:Z

.field public d:J

.field public k:J

.field public p:Lr4/q6;


# direct methods
.method public constructor <init>(Lr4/ka;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/zb;->a:Lr4/ka;

    sget-object p1, Lr4/q6;->d:Lr4/q6;

    iput-object p1, p0, Lr4/zb;->p:Lr4/q6;

    return-void
.end method


# virtual methods
.method public final B()J
    .locals 7

    iget-wide v0, p0, Lr4/zb;->d:J

    iget-boolean v2, p0, Lr4/zb;->b:Z

    if-eqz v2, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lr4/zb;->k:J

    sub-long/2addr v2, v4

    iget-object v4, p0, Lr4/zb;->p:Lr4/q6;

    iget v5, v4, Lr4/q6;->a:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v6

    if-nez v5, :cond_0

    invoke-static {v2, v3}, Lr4/e3;->b(J)J

    move-result-wide v2

    goto :goto_0

    :cond_0
    invoke-virtual {v4, v2, v3}, Lr4/q6;->a(J)J

    move-result-wide v2

    :goto_0
    add-long/2addr v0, v2

    :cond_1
    return-wide v0
.end method

.method public final a()V
    .locals 2

    iget-boolean v0, p0, Lr4/zb;->b:Z

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lr4/zb;->k:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lr4/zb;->b:Z

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    iget-boolean v0, p0, Lr4/zb;->b:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lr4/zb;->B()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lr4/zb;->d(J)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lr4/zb;->b:Z

    :cond_0
    return-void
.end method

.method public final c(Lr4/q6;)V
    .locals 2

    iget-boolean v0, p0, Lr4/zb;->b:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lr4/zb;->B()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lr4/zb;->d(J)V

    :cond_0
    iput-object p1, p0, Lr4/zb;->p:Lr4/q6;

    return-void
.end method

.method public final d(J)V
    .locals 0

    iput-wide p1, p0, Lr4/zb;->d:J

    iget-boolean p1, p0, Lr4/zb;->b:Z

    if-eqz p1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lr4/zb;->k:J

    :cond_0
    return-void
.end method

.method public final z()Lr4/q6;
    .locals 1

    iget-object v0, p0, Lr4/zb;->p:Lr4/q6;

    return-object v0
.end method
