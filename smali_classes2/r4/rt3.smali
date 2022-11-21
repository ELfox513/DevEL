.class public final Lr4/rt3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/et3;
.implements Lr4/dt3;


# instance fields
.field public final a:Lr4/et3;

.field public final b:J

.field public d:Lr4/dt3;


# direct methods
.method public constructor <init>(Lr4/et3;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/rt3;->a:Lr4/et3;

    iput-wide p2, p0, Lr4/rt3;->b:J

    return-void
.end method

.method public static synthetic k(Lr4/rt3;)Lr4/et3;
    .locals 0

    iget-object p0, p0, Lr4/rt3;->a:Lr4/et3;

    return-object p0
.end method


# virtual methods
.method public final a(J)V
    .locals 3

    iget-object v0, p0, Lr4/rt3;->a:Lr4/et3;

    iget-wide v1, p0, Lr4/rt3;->b:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lr4/et3;->a(J)V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lr4/rt3;->a:Lr4/et3;

    invoke-interface {v0}, Lr4/et3;->b()V

    return-void
.end method

.method public final c(J)Z
    .locals 3

    iget-object v0, p0, Lr4/rt3;->a:Lr4/et3;

    iget-wide v1, p0, Lr4/rt3;->b:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lr4/et3;->c(J)Z

    move-result p1

    return p1
.end method

.method public final d([Lr4/hv3;[Z[Lr4/vu3;[ZJ)J
    .locals 12

    move-object v0, p0

    move-object v1, p3

    array-length v2, v1

    new-array v2, v2, [Lr4/vu3;

    const/4 v10, 0x0

    const/4 v3, 0x0

    :goto_0
    array-length v4, v1

    const/4 v11, 0x0

    if-ge v3, v4, :cond_1

    aget-object v4, v1, v3

    check-cast v4, Lr4/st3;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lr4/st3;->e()Lr4/vu3;

    move-result-object v11

    :cond_0
    aput-object v11, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, v0, Lr4/rt3;->a:Lr4/et3;

    iget-wide v4, v0, Lr4/rt3;->b:J

    sub-long v8, p5, v4

    move-object v4, p1

    move-object v5, p2

    move-object v6, v2

    move-object/from16 v7, p4

    invoke-interface/range {v3 .. v9}, Lr4/et3;->d([Lr4/hv3;[Z[Lr4/vu3;[ZJ)J

    move-result-wide v3

    :goto_1
    array-length v5, v1

    if-ge v10, v5, :cond_5

    aget-object v5, v2, v10

    if-nez v5, :cond_2

    aput-object v11, v1, v10

    goto :goto_2

    :cond_2
    aget-object v6, v1, v10

    if-eqz v6, :cond_3

    check-cast v6, Lr4/st3;

    invoke-virtual {v6}, Lr4/st3;->e()Lr4/vu3;

    move-result-object v6

    if-eq v6, v5, :cond_4

    :cond_3
    new-instance v6, Lr4/st3;

    iget-wide v7, v0, Lr4/rt3;->b:J

    invoke-direct {v6, v5, v7, v8}, Lr4/st3;-><init>(Lr4/vu3;J)V

    aput-object v6, v1, v10

    :cond_4
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_5
    iget-wide v1, v0, Lr4/rt3;->b:J

    add-long/2addr v3, v1

    return-wide v3
.end method

.method public final e()Lr4/j44;
    .locals 1

    iget-object v0, p0, Lr4/rt3;->a:Lr4/et3;

    invoke-interface {v0}, Lr4/et3;->e()Lr4/j44;

    move-result-object v0

    return-object v0
.end method

.method public final f()J
    .locals 5

    iget-object v0, p0, Lr4/rt3;->a:Lr4/et3;

    invoke-interface {v0}, Lr4/et3;->f()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-wide v2

    :cond_0
    iget-wide v2, p0, Lr4/rt3;->b:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final g()J
    .locals 5

    iget-object v0, p0, Lr4/rt3;->a:Lr4/et3;

    invoke-interface {v0}, Lr4/et3;->g()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-wide v2

    :cond_0
    iget-wide v2, p0, Lr4/rt3;->b:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final h(Lr4/et3;)V
    .locals 0

    iget-object p1, p0, Lr4/rt3;->d:Lr4/dt3;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1, p0}, Lr4/dt3;->h(Lr4/et3;)V

    return-void
.end method

.method public final i()J
    .locals 5

    iget-object v0, p0, Lr4/rt3;->a:Lr4/et3;

    invoke-interface {v0}, Lr4/et3;->i()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-wide v2

    :cond_0
    iget-wide v2, p0, Lr4/rt3;->b:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final bridge synthetic j(Lr4/xu3;)V
    .locals 0

    check-cast p1, Lr4/et3;

    iget-object p1, p0, Lr4/rt3;->d:Lr4/dt3;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1, p0}, Lr4/wu3;->j(Lr4/xu3;)V

    return-void
.end method

.method public final l()Z
    .locals 1

    iget-object v0, p0, Lr4/rt3;->a:Lr4/et3;

    invoke-interface {v0}, Lr4/et3;->l()Z

    move-result v0

    return v0
.end method

.method public final m(Lr4/dt3;J)V
    .locals 2

    iput-object p1, p0, Lr4/rt3;->d:Lr4/dt3;

    iget-object p1, p0, Lr4/rt3;->a:Lr4/et3;

    iget-wide v0, p0, Lr4/rt3;->b:J

    sub-long/2addr p2, v0

    invoke-interface {p1, p0, p2, p3}, Lr4/et3;->m(Lr4/dt3;J)V

    return-void
.end method

.method public final o(JLr4/k7;)J
    .locals 3

    iget-object v0, p0, Lr4/rt3;->a:Lr4/et3;

    iget-wide v1, p0, Lr4/rt3;->b:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2, p3}, Lr4/et3;->o(JLr4/k7;)J

    move-result-wide p1

    iget-wide v0, p0, Lr4/rt3;->b:J

    add-long/2addr p1, v0

    return-wide p1
.end method

.method public final p(J)J
    .locals 3

    iget-object v0, p0, Lr4/rt3;->a:Lr4/et3;

    iget-wide v1, p0, Lr4/rt3;->b:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lr4/et3;->p(J)J

    move-result-wide p1

    iget-wide v0, p0, Lr4/rt3;->b:J

    add-long/2addr p1, v0

    return-wide p1
.end method

.method public final q(JZ)V
    .locals 2

    iget-object p3, p0, Lr4/rt3;->a:Lr4/et3;

    iget-wide v0, p0, Lr4/rt3;->b:J

    sub-long/2addr p1, v0

    const/4 v0, 0x0

    invoke-interface {p3, p1, p2, v0}, Lr4/et3;->q(JZ)V

    return-void
.end method
