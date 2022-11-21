.class public final Lr4/o90;
.super Lr4/cn0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr4/cn0<",
        "Lr4/j80;",
        ">;"
    }
.end annotation


# instance fields
.field public final c:Ljava/lang/Object;

.field public final d:Lb3/i0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb3/i0<",
            "Lr4/j80;",
            ">;"
        }
    .end annotation
.end field

.field public e:Z

.field public f:I


# direct methods
.method public constructor <init>(Lb3/i0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb3/i0<",
            "Lr4/j80;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lr4/cn0;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lr4/o90;->c:Ljava/lang/Object;

    iput-object p1, p0, Lr4/o90;->d:Lb3/i0;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lr4/o90;->e:Z

    iput p1, p0, Lr4/o90;->f:I

    return-void
.end method


# virtual methods
.method public final f()Lr4/j90;
    .locals 4

    new-instance v0, Lr4/j90;

    invoke-direct {v0, p0}, Lr4/j90;-><init>(Lr4/o90;)V

    iget-object v1, p0, Lr4/o90;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v2, Lr4/k90;

    invoke-direct {v2, p0, v0}, Lr4/k90;-><init>(Lr4/o90;Lr4/j90;)V

    new-instance v3, Lr4/l90;

    invoke-direct {v3, p0, v0}, Lr4/l90;-><init>(Lr4/o90;Lr4/j90;)V

    invoke-virtual {p0, v2, v3}, Lr4/cn0;->b(Lr4/zm0;Lr4/xm0;)V

    iget v2, p0, Lr4/o90;->f:I

    const/4 v3, 0x1

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lx3/q;->m(Z)V

    iget v2, p0, Lr4/o90;->f:I

    add-int/2addr v2, v3

    iput v2, p0, Lr4/o90;->f:I

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final g()V
    .locals 2

    iget-object v0, p0, Lr4/o90;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lr4/o90;->f:I

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lx3/q;->m(Z)V

    const-string v1, "Releasing 1 reference for JS Engine"

    invoke-static {v1}, Lb3/w1;->k(Ljava/lang/String;)V

    iget v1, p0, Lr4/o90;->f:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lr4/o90;->f:I

    invoke-virtual {p0}, Lr4/o90;->i()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final h()V
    .locals 3

    iget-object v0, p0, Lr4/o90;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lr4/o90;->f:I

    const/4 v2, 0x1

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lx3/q;->m(Z)V

    const-string v1, "Releasing root reference. JS Engine will be destroyed once other references are released."

    invoke-static {v1}, Lb3/w1;->k(Ljava/lang/String;)V

    iput-boolean v2, p0, Lr4/o90;->e:Z

    invoke-virtual {p0}, Lr4/o90;->i()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final i()V
    .locals 3

    iget-object v0, p0, Lr4/o90;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lr4/o90;->f:I

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lx3/q;->m(Z)V

    iget-boolean v1, p0, Lr4/o90;->e:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lr4/o90;->f:I

    if-nez v1, :cond_1

    const-string v1, "No reference is left (including root). Cleaning up engine."

    invoke-static {v1}, Lb3/w1;->k(Ljava/lang/String;)V

    new-instance v1, Lr4/n90;

    invoke-direct {v1, p0}, Lr4/n90;-><init>(Lr4/o90;)V

    new-instance v2, Lr4/ym0;

    invoke-direct {v2}, Lr4/ym0;-><init>()V

    invoke-virtual {p0, v1, v2}, Lr4/cn0;->b(Lr4/zm0;Lr4/xm0;)V

    goto :goto_1

    :cond_1
    const-string v1, "There are still references to the engine. Not destroying."

    invoke-static {v1}, Lb3/w1;->k(Ljava/lang/String;)V

    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
