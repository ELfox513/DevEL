.class public final Lr4/c24;
.super Lr4/o04;
.source "SourceFile"


# instance fields
.field public final b:J


# direct methods
.method public constructor <init>(Lr4/b04;J)V
    .locals 2

    invoke-direct {p0, p1}, Lr4/o04;-><init>(Lr4/b04;)V

    invoke-interface {p1}, Lr4/b04;->p()J

    move-result-wide v0

    cmp-long p1, v0, p2

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lr4/ja;->a(Z)V

    iput-wide p2, p0, Lr4/c24;->b:J

    return-void
.end method


# virtual methods
.method public final l()J
    .locals 4

    invoke-super {p0}, Lr4/o04;->l()J

    move-result-wide v0

    iget-wide v2, p0, Lr4/c24;->b:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public final p()J
    .locals 4

    invoke-super {p0}, Lr4/o04;->p()J

    move-result-wide v0

    iget-wide v2, p0, Lr4/c24;->b:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public final q()J
    .locals 4

    invoke-super {p0}, Lr4/o04;->q()J

    move-result-wide v0

    iget-wide v2, p0, Lr4/c24;->b:J

    sub-long/2addr v0, v2

    return-wide v0
.end method
