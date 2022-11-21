.class public final Lr4/qr2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lr4/r61<",
        "TAdT;>;AdT:",
        "Lr4/i31;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lr4/uq2;

.field public final b:Lr4/or2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/or2<",
            "TR;TAdT;>;"
        }
    .end annotation
.end field

.field public final c:Lr4/pq2;

.field public final d:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lr4/pr2<",
            "TR;TAdT;>;>;"
        }
    .end annotation
.end field

.field public e:Lr4/xr2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/xr2<",
            "TR;TAdT;>;"
        }
    .end annotation
.end field

.field public f:I


# direct methods
.method public constructor <init>(Lr4/uq2;Lr4/pq2;Lr4/or2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/uq2;",
            "Lr4/pq2;",
            "Lr4/or2<",
            "TR;TAdT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lr4/qr2;->f:I

    iput-object p1, p0, Lr4/qr2;->a:Lr4/uq2;

    iput-object p2, p0, Lr4/qr2;->c:Lr4/pq2;

    iput-object p3, p0, Lr4/qr2;->b:Lr4/or2;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lr4/qr2;->d:Ljava/util/ArrayDeque;

    new-instance p1, Lr4/lr2;

    invoke-direct {p1, p0}, Lr4/lr2;-><init>(Lr4/qr2;)V

    invoke-virtual {p2, p1}, Lr4/pq2;->a(Lr4/oq2;)V

    return-void
.end method

.method public static synthetic a(Lr4/qr2;)Ljava/util/ArrayDeque;
    .locals 0

    iget-object p0, p0, Lr4/qr2;->d:Ljava/util/ArrayDeque;

    return-object p0
.end method

.method public static synthetic b(Lr4/qr2;Lr4/xr2;)Lr4/xr2;
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lr4/qr2;->e:Lr4/xr2;

    return-object p1
.end method

.method public static synthetic e(Lr4/qr2;)V
    .locals 0

    invoke-virtual {p0}, Lr4/qr2;->h()V

    return-void
.end method

.method public static synthetic g(Lr4/qr2;)I
    .locals 0

    iget p0, p0, Lr4/qr2;->f:I

    return p0
.end method


# virtual methods
.method public final declared-synchronized c(Lr4/pr2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/pr2<",
            "TR;TAdT;>;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lr4/qr2;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized d(Lr4/pr2;)Lr4/h83;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/pr2<",
            "TR;TAdT;>;)",
            "Lr4/h83<",
            "Lr4/nr2<",
            "TR;TAdT;>;>;"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x2

    :try_start_0
    iput v0, p0, Lr4/qr2;->f:I

    invoke-virtual {p0}, Lr4/qr2;->i()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lr4/qr2;->e:Lr4/xr2;

    invoke-virtual {v0, p1}, Lr4/xr2;->b(Lr4/pr2;)Lr4/h83;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final synthetic f()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput v0, p0, Lr4/qr2;->f:I

    invoke-virtual {p0}, Lr4/qr2;->h()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final declared-synchronized h()V
    .locals 4

    monitor-enter p0

    :try_start_0
    sget-object v0, Lr4/rz;->D4:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lz2/t;->h()Lr4/nl0;

    move-result-object v0

    invoke-virtual {v0}, Lr4/nl0;->p()Lb3/y1;

    move-result-object v0

    invoke-interface {v0}, Lb3/y1;->p()Lr4/hl0;

    move-result-object v0

    invoke-virtual {v0}, Lr4/hl0;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lr4/qr2;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lr4/qr2;->i()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_2
    iget-object v0, p0, Lr4/qr2;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lr4/qr2;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr4/pr2;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lr4/pr2;->a()Lr4/er2;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lr4/qr2;->a:Lr4/uq2;

    invoke-interface {v0}, Lr4/pr2;->a()Lr4/er2;

    move-result-object v2

    invoke-interface {v1, v2}, Lr4/uq2;->b(Lr4/er2;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_3
    new-instance v1, Lr4/xr2;

    iget-object v2, p0, Lr4/qr2;->a:Lr4/uq2;

    iget-object v3, p0, Lr4/qr2;->b:Lr4/or2;

    invoke-direct {v1, v2, v3, v0}, Lr4/xr2;-><init>(Lr4/uq2;Lr4/or2;Lr4/pr2;)V

    iput-object v1, p0, Lr4/qr2;->e:Lr4/xr2;

    new-instance v2, Lr4/mr2;

    invoke-direct {v2, p0, v0}, Lr4/mr2;-><init>(Lr4/qr2;Lr4/pr2;)V

    invoke-virtual {v1, v2}, Lr4/xr2;->a(Lr4/t73;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_4
    monitor-exit p0

    return-void

    :cond_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public final declared-synchronized i()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lr4/qr2;->e:Lr4/xr2;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method
