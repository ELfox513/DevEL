.class public final Lr4/l74;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/z04;


# instance fields
.field public final a:Lr4/i74;

.field public final b:I

.field public final c:J

.field public final d:J

.field public final e:J


# direct methods
.method public constructor <init>(Lr4/i74;IJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/l74;->a:Lr4/i74;

    iput p2, p0, Lr4/l74;->b:I

    iput-wide p3, p0, Lr4/l74;->c:J

    sub-long/2addr p5, p3

    iget p1, p1, Lr4/i74;->d:I

    int-to-long p1, p1

    div-long/2addr p5, p1

    iput-wide p5, p0, Lr4/l74;->d:J

    invoke-virtual {p0, p5, p6}, Lr4/l74;->e(J)J

    move-result-wide p1

    iput-wide p1, p0, Lr4/l74;->e:J

    return-void
.end method


# virtual methods
.method public final a(J)Lr4/x04;
    .locals 12

    iget-object v0, p0, Lr4/l74;->a:Lr4/i74;

    iget v0, v0, Lr4/i74;->c:I

    int-to-long v0, v0

    mul-long v0, v0, p1

    iget v2, p0, Lr4/l74;->b:I

    int-to-long v2, v2

    const-wide/32 v4, 0xf4240

    mul-long v2, v2, v4

    div-long v4, v0, v2

    iget-wide v0, p0, Lr4/l74;->d:J

    const-wide/16 v2, -0x1

    add-long v8, v0, v2

    const-wide/16 v6, 0x0

    invoke-static/range {v4 .. v9}, Lr4/lc;->d0(JJJ)J

    move-result-wide v0

    iget-wide v4, p0, Lr4/l74;->c:J

    iget-object v6, p0, Lr4/l74;->a:Lr4/i74;

    iget v6, v6, Lr4/i74;->d:I

    invoke-virtual {p0, v0, v1}, Lr4/l74;->e(J)J

    move-result-wide v7

    new-instance v9, Lr4/a14;

    int-to-long v10, v6

    mul-long v10, v10, v0

    add-long/2addr v4, v10

    invoke-direct {v9, v7, v8, v4, v5}, Lr4/a14;-><init>(JJ)V

    cmp-long v4, v7, p1

    if-gez v4, :cond_1

    iget-wide p1, p0, Lr4/l74;->d:J

    add-long/2addr p1, v2

    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 p1, 0x1

    add-long/2addr v0, p1

    iget-wide p1, p0, Lr4/l74;->c:J

    iget-object v2, p0, Lr4/l74;->a:Lr4/i74;

    iget v2, v2, Lr4/i74;->d:I

    invoke-virtual {p0, v0, v1}, Lr4/l74;->e(J)J

    move-result-wide v3

    new-instance v5, Lr4/a14;

    int-to-long v6, v2

    mul-long v0, v0, v6

    add-long/2addr p1, v0

    invoke-direct {v5, v3, v4, p1, p2}, Lr4/a14;-><init>(JJ)V

    new-instance p1, Lr4/x04;

    invoke-direct {p1, v9, v5}, Lr4/x04;-><init>(Lr4/a14;Lr4/a14;)V

    return-object p1

    :cond_1
    :goto_0
    new-instance p1, Lr4/x04;

    invoke-direct {p1, v9, v9}, Lr4/x04;-><init>(Lr4/a14;Lr4/a14;)V

    return-object p1
.end method

.method public final c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final e(J)J
    .locals 8

    iget v0, p0, Lr4/l74;->b:I

    int-to-long v0, v0

    mul-long v2, p1, v0

    iget-object p1, p0, Lr4/l74;->a:Lr4/i74;

    iget p1, p1, Lr4/i74;->c:I

    int-to-long v6, p1

    const-wide/32 v4, 0xf4240

    invoke-static/range {v2 .. v7}, Lr4/lc;->h(JJJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public final g()J
    .locals 2

    iget-wide v0, p0, Lr4/l74;->e:J

    return-wide v0
.end method
