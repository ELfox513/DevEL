.class public Ly0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx0/e;
.implements Lb1/c;
.implements Lx0/b;


# static fields
.field public static final t:Ljava/lang/String;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lx0/i;

.field public final d:Lb1/d;

.field public final k:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lf1/p;",
            ">;"
        }
    .end annotation
.end field

.field public p:Ly0/a;

.field public q:Z

.field public final r:Ljava/lang/Object;

.field public s:Ljava/lang/Boolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "GreedyScheduler"

    invoke-static {v0}, Lw0/j;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ly0/b;->t:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/a;Li1/a;Lx0/i;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ly0/b;->k:Ljava/util/Set;

    iput-object p1, p0, Ly0/b;->a:Landroid/content/Context;

    iput-object p4, p0, Ly0/b;->b:Lx0/i;

    new-instance p4, Lb1/d;

    invoke-direct {p4, p1, p3, p0}, Lb1/d;-><init>(Landroid/content/Context;Li1/a;Lb1/c;)V

    iput-object p4, p0, Ly0/b;->d:Lb1/d;

    new-instance p1, Ly0/a;

    invoke-virtual {p2}, Landroidx/work/a;->k()Lw0/q;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Ly0/a;-><init>(Ly0/b;Lw0/q;)V

    iput-object p1, p0, Ly0/b;->p:Ly0/a;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly0/b;->r:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lw0/j;->c()Lw0/j;

    move-result-object v1

    sget-object v2, Ly0/b;->t:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const-string v5, "Constraints not met: Cancelling work ID %s"

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Throwable;

    invoke-virtual {v1, v2, v3, v4}, Lw0/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    iget-object v1, p0, Ly0/b;->b:Lx0/i;

    invoke-virtual {v1, v0}, Lx0/i;->A(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public varargs c([Lf1/p;)V
    .locals 13

    iget-object v0, p0, Ly0/b;->s:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ly0/b;->g()V

    :cond_0
    iget-object v0, p0, Ly0/b;->s:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-static {}, Lw0/j;->c()Lw0/j;

    move-result-object p1

    sget-object v0, Ly0/b;->t:Ljava/lang/String;

    const-string v2, "Ignoring schedule request in a secondary process"

    new-array v1, v1, [Ljava/lang/Throwable;

    invoke-virtual {p1, v0, v2, v1}, Lw0/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Ly0/b;->h()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    array-length v3, p1

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v3, :cond_7

    aget-object v6, p1, v4

    invoke-virtual {v6}, Lf1/p;->a()J

    move-result-wide v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iget-object v11, v6, Lf1/p;->b:Lw0/s;

    sget-object v12, Lw0/s;->a:Lw0/s;

    if-ne v11, v12, :cond_6

    cmp-long v11, v9, v7

    if-gez v11, :cond_2

    iget-object v5, p0, Ly0/b;->p:Ly0/a;

    if-eqz v5, :cond_6

    invoke-virtual {v5, v6}, Ly0/a;->a(Lf1/p;)V

    goto/16 :goto_1

    :cond_2
    invoke-virtual {v6}, Lf1/p;->b()Z

    move-result v7

    if-eqz v7, :cond_5

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x17

    if-lt v7, v8, :cond_3

    iget-object v8, v6, Lf1/p;->j:Lw0/b;

    invoke-virtual {v8}, Lw0/b;->h()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {}, Lw0/j;->c()Lw0/j;

    move-result-object v7

    sget-object v8, Ly0/b;->t:Ljava/lang/String;

    const-string v9, "Ignoring WorkSpec %s, Requires device idle."

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v6, v5, v1

    invoke-static {v9, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/Throwable;

    invoke-virtual {v7, v8, v5, v6}, Lw0/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    const/16 v8, 0x18

    if-lt v7, v8, :cond_4

    iget-object v7, v6, Lf1/p;->j:Lw0/b;

    invoke-virtual {v7}, Lw0/b;->e()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {}, Lw0/j;->c()Lw0/j;

    move-result-object v7

    sget-object v8, Ly0/b;->t:Ljava/lang/String;

    const-string v9, "Ignoring WorkSpec %s, Requires ContentUri triggers."

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v6, v5, v1

    invoke-static {v9, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/Throwable;

    invoke-virtual {v7, v8, v5, v6}, Lw0/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_4
    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v5, v6, Lf1/p;->a:Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-static {}, Lw0/j;->c()Lw0/j;

    move-result-object v7

    sget-object v8, Ly0/b;->t:Ljava/lang/String;

    const-string v9, "Starting work for %s"

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v10, v6, Lf1/p;->a:Ljava/lang/String;

    aput-object v10, v5, v1

    invoke-static {v9, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v9, v1, [Ljava/lang/Throwable;

    invoke-virtual {v7, v8, v5, v9}, Lw0/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    iget-object v5, p0, Ly0/b;->b:Lx0/i;

    iget-object v6, v6, Lf1/p;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lx0/i;->x(Ljava/lang/String;)V

    :cond_6
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_7
    iget-object p1, p0, Ly0/b;->r:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8

    invoke-static {}, Lw0/j;->c()Lw0/j;

    move-result-object v3

    sget-object v4, Ly0/b;->t:Ljava/lang/String;

    const-string v6, "Starting tracking for [%s]"

    new-array v5, v5, [Ljava/lang/Object;

    const-string v7, ","

    invoke-static {v7, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Throwable;

    invoke-virtual {v3, v4, v2, v1}, Lw0/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    iget-object v1, p0, Ly0/b;->k:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Ly0/b;->d:Lb1/d;

    iget-object v1, p0, Ly0/b;->k:Ljava/util/Set;

    invoke-virtual {v0, v1}, Lb1/d;->d(Ljava/lang/Iterable;)V

    :cond_8
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public d(Ljava/lang/String;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Ly0/b;->i(Ljava/lang/String;)V

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Ly0/b;->s:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ly0/b;->g()V

    :cond_0
    iget-object v0, p0, Ly0/b;->s:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-static {}, Lw0/j;->c()Lw0/j;

    move-result-object p1

    sget-object v0, Ly0/b;->t:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Throwable;

    const-string v2, "Ignoring schedule request in non-main process"

    invoke-virtual {p1, v0, v2, v1}, Lw0/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Ly0/b;->h()V

    invoke-static {}, Lw0/j;->c()Lw0/j;

    move-result-object v0

    sget-object v2, Ly0/b;->t:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    const-string v4, "Cancelling work ID %s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Throwable;

    invoke-virtual {v0, v2, v3, v1}, Lw0/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    iget-object v0, p0, Ly0/b;->p:Ly0/a;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Ly0/a;->b(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Ly0/b;->b:Lx0/i;

    invoke-virtual {v0, p1}, Lx0/i;->A(Ljava/lang/String;)V

    return-void
.end method

.method public f(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lw0/j;->c()Lw0/j;

    move-result-object v1

    sget-object v2, Ly0/b;->t:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const-string v5, "Constraints met: Scheduling work ID %s"

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Throwable;

    invoke-virtual {v1, v2, v3, v4}, Lw0/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    iget-object v1, p0, Ly0/b;->b:Lx0/i;

    invoke-virtual {v1, v0}, Lx0/i;->x(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final g()V
    .locals 2

    iget-object v0, p0, Ly0/b;->b:Lx0/i;

    invoke-virtual {v0}, Lx0/i;->l()Landroidx/work/a;

    move-result-object v0

    iget-object v1, p0, Ly0/b;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lg1/h;->b(Landroid/content/Context;Landroidx/work/a;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ly0/b;->s:Ljava/lang/Boolean;

    return-void
.end method

.method public final h()V
    .locals 1

    iget-boolean v0, p0, Ly0/b;->q:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Ly0/b;->b:Lx0/i;

    invoke-virtual {v0}, Lx0/i;->p()Lx0/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lx0/d;->c(Lx0/b;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ly0/b;->q:Z

    :cond_0
    return-void
.end method

.method public final i(Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Ly0/b;->r:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Ly0/b;->k:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf1/p;

    iget-object v3, v2, Lf1/p;->a:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lw0/j;->c()Lw0/j;

    move-result-object v1

    sget-object v3, Ly0/b;->t:Ljava/lang/String;

    const-string v4, "Stopping tracking for %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v4, v6, [Ljava/lang/Throwable;

    invoke-virtual {v1, v3, p1, v4}, Lw0/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    iget-object p1, p0, Ly0/b;->k:Ljava/util/Set;

    invoke-interface {p1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Ly0/b;->d:Lb1/d;

    iget-object v1, p0, Ly0/b;->k:Ljava/util/Set;

    invoke-virtual {p1, v1}, Lb1/d;->d(Ljava/lang/Iterable;)V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :goto_0
    throw p1

    :goto_1
    goto :goto_0
.end method
