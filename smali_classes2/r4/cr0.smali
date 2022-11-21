.class public final Lr4/cr0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/h5;


# instance fields
.field public final a:Lr4/qw3;

.field public b:J

.field public c:J

.field public d:J

.field public e:J

.field public f:I

.field public g:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lr4/qw3;

    const/4 v1, 0x1

    const/high16 v2, 0x10000

    invoke-direct {v0, v1, v2}, Lr4/qw3;-><init>(ZI)V

    iput-object v0, p0, Lr4/cr0;->a:Lr4/qw3;

    const-wide/32 v0, 0xe4e1c0

    iput-wide v0, p0, Lr4/cr0;->b:J

    const-wide/32 v0, 0x1c9c380

    iput-wide v0, p0, Lr4/cr0;->c:J

    const-wide/32 v0, 0x2625a0

    iput-wide v0, p0, Lr4/cr0;->d:J

    const-wide/32 v0, 0x4c4b40

    iput-wide v0, p0, Lr4/cr0;->e:J

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lr4/cr0;->m(Z)V

    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lr4/cr0;->m(Z)V

    return-void
.end method

.method public final c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final d(JFZJ)Z
    .locals 1

    if-eqz p4, :cond_0

    iget-wide p3, p0, Lr4/cr0;->e:J

    goto :goto_0

    :cond_0
    iget-wide p3, p0, Lr4/cr0;->d:J

    :goto_0
    const-wide/16 p5, 0x0

    cmp-long v0, p3, p5

    if-lez v0, :cond_2

    cmp-long p5, p1, p3

    if-ltz p5, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method public final e()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final f()Lr4/qw3;
    .locals 1

    iget-object v0, p0, Lr4/cr0;->a:Lr4/qw3;

    return-object v0
.end method

.method public final g(JJF)Z
    .locals 3

    iget-wide p1, p0, Lr4/cr0;->c:J

    const/4 p5, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    cmp-long v2, p3, p1

    if-lez v2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-wide p1, p0, Lr4/cr0;->b:J

    cmp-long v2, p3, p1

    if-gez v2, :cond_1

    const/4 p1, 0x2

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    iget-object p2, p0, Lr4/cr0;->a:Lr4/qw3;

    invoke-virtual {p2}, Lr4/qw3;->g()I

    move-result p2

    iget p3, p0, Lr4/cr0;->f:I

    if-eq p1, p5, :cond_3

    if-ne p1, v0, :cond_2

    iget-boolean p1, p0, Lr4/cr0;->g:Z

    if-eqz p1, :cond_2

    if-ge p2, p3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_1
    iput-boolean v0, p0, Lr4/cr0;->g:Z

    return v0
.end method

.method public final h([Lr4/g7;Lr4/j44;[Lr4/hv3;)V
    .locals 3

    const/4 p2, 0x0

    iput p2, p0, Lr4/cr0;->f:I

    :goto_0
    const/4 v0, 0x2

    if-ge p2, v0, :cond_2

    aget-object v0, p3, p2

    if-eqz v0, :cond_1

    iget v0, p0, Lr4/cr0;->f:I

    aget-object v1, p1, p2

    invoke-interface {v1}, Lr4/g7;->G()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/high16 v1, 0x7d00000

    goto :goto_1

    :cond_0
    const/high16 v1, 0xc80000

    :goto_1
    add-int/2addr v0, v1

    iput v0, p0, Lr4/cr0;->f:I

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lr4/cr0;->a:Lr4/qw3;

    iget p2, p0, Lr4/cr0;->f:I

    invoke-virtual {p1, p2}, Lr4/qw3;->b(I)V

    return-void
.end method

.method public final declared-synchronized i(I)V
    .locals 4

    monitor-enter p0

    int-to-long v0, p1

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    :try_start_0
    iput-wide v0, p0, Lr4/cr0;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized j(I)V
    .locals 4

    monitor-enter p0

    int-to-long v0, p1

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    :try_start_0
    iput-wide v0, p0, Lr4/cr0;->c:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized k(I)V
    .locals 4

    monitor-enter p0

    int-to-long v0, p1

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    :try_start_0
    iput-wide v0, p0, Lr4/cr0;->d:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized l(I)V
    .locals 4

    monitor-enter p0

    int-to-long v0, p1

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    :try_start_0
    iput-wide v0, p0, Lr4/cr0;->e:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final m(Z)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lr4/cr0;->f:I

    iput-boolean v0, p0, Lr4/cr0;->g:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lr4/cr0;->a:Lr4/qw3;

    invoke-virtual {p1}, Lr4/qw3;->a()V

    :cond_0
    return-void
.end method

.method public final zza()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lr4/cr0;->m(Z)V

    return-void
.end method
