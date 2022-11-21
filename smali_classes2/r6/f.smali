.class public Lr6/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr6/g;


# static fields
.field public static final m:Ljava/lang/Object;

.field public static final n:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field public final a:Lm5/c;

.field public final b:Lu6/c;

.field public final c:Lt6/c;

.field public final d:Lr6/o;

.field public final e:Lt6/b;

.field public final f:Lr6/m;

.field public final g:Ljava/lang/Object;

.field public final h:Ljava/util/concurrent/ExecutorService;

.field public final i:Ljava/util/concurrent/ExecutorService;

.field public j:Ljava/lang/String;

.field public k:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ls6/a;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lr6/n;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lr6/f;->m:Ljava/lang/Object;

    new-instance v0, Lr6/f$a;

    invoke-direct {v0}, Lr6/f$a;-><init>()V

    sput-object v0, Lr6/f;->n:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ExecutorService;Lm5/c;Lu6/c;Lt6/c;Lr6/o;Lt6/b;Lr6/m;)V
    .locals 10

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lr6/f;->g:Ljava/lang/Object;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, v0, Lr6/f;->k:Ljava/util/Set;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lr6/f;->l:Ljava/util/List;

    move-object v1, p2

    iput-object v1, v0, Lr6/f;->a:Lm5/c;

    move-object v1, p3

    iput-object v1, v0, Lr6/f;->b:Lu6/c;

    move-object v1, p4

    iput-object v1, v0, Lr6/f;->c:Lt6/c;

    move-object v1, p5

    iput-object v1, v0, Lr6/f;->d:Lr6/o;

    move-object/from16 v1, p6

    iput-object v1, v0, Lr6/f;->e:Lt6/b;

    move-object/from16 v1, p7

    iput-object v1, v0, Lr6/f;->f:Lr6/m;

    move-object v1, p1

    iput-object v1, v0, Lr6/f;->h:Ljava/util/concurrent/ExecutorService;

    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sget-object v8, Lr6/f;->n:Ljava/util/concurrent/ThreadFactory;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0x1e

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v9, v0, Lr6/f;->i:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Lm5/c;Lq6/b;Lq6/b;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm5/c;",
            "Lq6/b<",
            "Ll7/i;",
            ">;",
            "Lq6/b<",
            "Lp6/f;",
            ">;)V"
        }
    .end annotation

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sget-object v7, Lr6/f;->n:Ljava/util/concurrent/ThreadFactory;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v3, 0x1e

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    new-instance v3, Lu6/c;

    invoke-virtual {p1}, Lm5/c;->h()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v3, v0, p2, p3}, Lu6/c;-><init>(Landroid/content/Context;Lq6/b;Lq6/b;)V

    new-instance v4, Lt6/c;

    invoke-direct {v4, p1}, Lt6/c;-><init>(Lm5/c;)V

    invoke-static {}, Lr6/o;->c()Lr6/o;

    move-result-object v5

    new-instance v6, Lt6/b;

    invoke-direct {v6, p1}, Lt6/b;-><init>(Lm5/c;)V

    new-instance v7, Lr6/m;

    invoke-direct {v7}, Lr6/m;-><init>()V

    move-object v0, p0

    move-object v1, v8

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lr6/f;-><init>(Ljava/util/concurrent/ExecutorService;Lm5/c;Lu6/c;Lt6/c;Lr6/o;Lt6/b;Lr6/m;)V

    return-void
.end method

.method public static synthetic b(Lr6/f;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lr6/f;->t(Z)V

    return-void
.end method

.method public static synthetic c(Lr6/f;)V
    .locals 0

    invoke-direct {p0}, Lr6/f;->u()V

    return-void
.end method

.method public static synthetic d(Lr6/f;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lr6/f;->v(Z)V

    return-void
.end method

.method public static n()Lr6/f;
    .locals 1

    invoke-static {}, Lm5/c;->i()Lm5/c;

    move-result-object v0

    invoke-static {v0}, Lr6/f;->o(Lm5/c;)Lr6/f;

    move-result-object v0

    return-object v0
.end method

.method public static o(Lm5/c;)Lr6/f;
    .locals 2

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Null is not a valid value of FirebaseApp."

    invoke-static {v0, v1}, Lx3/q;->b(ZLjava/lang/Object;)V

    const-class v0, Lr6/g;

    invoke-virtual {p0, v0}, Lm5/c;->g(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lr6/f;

    return-object p0
.end method

.method private synthetic t(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lr6/f;->h(Z)V

    return-void
.end method

.method private synthetic u()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lr6/f;->i(Z)V

    return-void
.end method

.method private synthetic v(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lr6/f;->i(Z)V

    return-void
.end method


# virtual methods
.method public final A(Lt6/d;)V
    .locals 3

    iget-object v0, p0, Lr6/f;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lr6/f;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr6/n;

    invoke-interface {v2, p1}, Lr6/n;->a(Lt6/d;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final declared-synchronized B(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lr6/f;->j:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized C(Lt6/d;Lt6/d;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lr6/f;->k:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lt6/d;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lt6/d;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lr6/f;->k:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls6/a;

    invoke-virtual {p2}, Lt6/d;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ls6/a;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public a(Z)Lj5/i;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lj5/i<",
            "Lr6/l;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lr6/f;->w()V

    invoke-virtual {p0}, Lr6/f;->e()Lj5/i;

    move-result-object v0

    iget-object v1, p0, Lr6/f;->h:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lr6/e;

    invoke-direct {v2, p0, p1}, Lr6/e;-><init>(Lr6/f;Z)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public final e()Lj5/i;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj5/i<",
            "Lr6/l;",
            ">;"
        }
    .end annotation

    new-instance v0, Lj5/j;

    invoke-direct {v0}, Lj5/j;-><init>()V

    new-instance v1, Lr6/j;

    iget-object v2, p0, Lr6/f;->d:Lr6/o;

    invoke-direct {v1, v2, v0}, Lr6/j;-><init>(Lr6/o;Lj5/j;)V

    invoke-virtual {p0, v1}, Lr6/f;->g(Lr6/n;)V

    invoke-virtual {v0}, Lj5/j;->a()Lj5/i;

    move-result-object v0

    return-object v0
.end method

.method public final f()Lj5/i;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj5/i<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lj5/j;

    invoke-direct {v0}, Lj5/j;-><init>()V

    new-instance v1, Lr6/k;

    invoke-direct {v1, v0}, Lr6/k;-><init>(Lj5/j;)V

    invoke-virtual {p0, v1}, Lr6/f;->g(Lr6/n;)V

    invoke-virtual {v0}, Lj5/j;->a()Lj5/i;

    move-result-object v0

    return-object v0
.end method

.method public final g(Lr6/n;)V
    .locals 2

    iget-object v0, p0, Lr6/f;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lr6/f;->l:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getId()Lj5/i;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj5/i<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lr6/f;->w()V

    invoke-virtual {p0}, Lr6/f;->m()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lj5/l;->d(Ljava/lang/Object;)Lj5/i;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lr6/f;->f()Lj5/i;

    move-result-object v0

    iget-object v1, p0, Lr6/f;->h:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lr6/c;

    invoke-direct {v2, p0}, Lr6/c;-><init>(Lr6/f;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public final h(Z)V
    .locals 2

    invoke-virtual {p0}, Lr6/f;->p()Lt6/d;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Lt6/d;->i()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lt6/d;->l()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    if-nez p1, :cond_2

    iget-object p1, p0, Lr6/f;->d:Lr6/o;

    invoke-virtual {p1, v0}, Lr6/o;->f(Lt6/d;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lr6/f;->j(Lt6/d;)Lt6/d;

    move-result-object p1

    goto :goto_2

    :cond_3
    :goto_1
    invoke-virtual {p0, v0}, Lr6/f;->y(Lt6/d;)Lt6/d;

    move-result-object p1
    :try_end_0
    .catch Lr6/h; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    invoke-virtual {p0, p1}, Lr6/f;->s(Lt6/d;)V

    invoke-virtual {p0, v0, p1}, Lr6/f;->C(Lt6/d;Lt6/d;)V

    invoke-virtual {p1}, Lt6/d;->k()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lt6/d;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lr6/f;->B(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p1}, Lt6/d;->i()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance p1, Lr6/h;

    sget-object v0, Lr6/h$a;->a:Lr6/h$a;

    invoke-direct {p1, v0}, Lr6/h;-><init>(Lr6/h$a;)V

    invoke-virtual {p0, p1}, Lr6/f;->z(Ljava/lang/Exception;)V

    goto :goto_3

    :cond_5
    invoke-virtual {p1}, Lt6/d;->j()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance p1, Ljava/io/IOException;

    const-string v0, "Installation ID could not be validated with the Firebase servers (maybe it was deleted). Firebase Installations will need to create a new Installation ID and auth token. Please retry your last request."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lr6/f;->z(Ljava/lang/Exception;)V

    goto :goto_3

    :cond_6
    invoke-virtual {p0, p1}, Lr6/f;->A(Lt6/d;)V

    :goto_3
    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lr6/f;->z(Ljava/lang/Exception;)V

    return-void
.end method

.method public final i(Z)V
    .locals 2

    invoke-virtual {p0}, Lr6/f;->q()Lt6/d;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lt6/d;->p()Lt6/d;

    move-result-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lr6/f;->A(Lt6/d;)V

    iget-object v0, p0, Lr6/f;->i:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lr6/d;

    invoke-direct {v1, p0, p1}, Lr6/d;-><init>(Lr6/f;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final j(Lt6/d;)Lt6/d;
    .locals 6

    iget-object v0, p0, Lr6/f;->b:Lu6/c;

    invoke-virtual {p0}, Lr6/f;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lt6/d;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lr6/f;->r()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lt6/d;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lu6/c;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lu6/f;

    move-result-object v0

    sget-object v1, Lr6/f$b;->b:[I

    invoke-virtual {v0}, Lu6/f;->b()Lu6/f$b;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v0, 0x2

    if-eq v1, v0, :cond_1

    const/4 v0, 0x3

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lr6/f;->B(Ljava/lang/String;)V

    invoke-virtual {p1}, Lt6/d;->r()Lt6/d;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Lr6/h;

    sget-object v0, Lr6/h$a;->b:Lr6/h$a;

    const-string v1, "Firebase Installations Service is unavailable. Please try again later."

    invoke-direct {p1, v1, v0}, Lr6/h;-><init>(Ljava/lang/String;Lr6/h$a;)V

    throw p1

    :cond_1
    const-string v0, "BAD CONFIG"

    invoke-virtual {p1, v0}, Lt6/d;->q(Ljava/lang/String;)Lt6/d;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-virtual {v0}, Lu6/f;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lu6/f;->d()J

    move-result-wide v2

    iget-object v0, p0, Lr6/f;->d:Lr6/o;

    invoke-virtual {v0}, Lr6/o;->b()J

    move-result-wide v4

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lt6/d;->o(Ljava/lang/String;JJ)Lt6/d;

    move-result-object p1

    return-object p1
.end method

.method public k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lr6/f;->a:Lm5/c;

    invoke-virtual {v0}, Lm5/c;->k()Lm5/i;

    move-result-object v0

    invoke-virtual {v0}, Lm5/i;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lr6/f;->a:Lm5/c;

    invoke-virtual {v0}, Lm5/c;->k()Lm5/i;

    move-result-object v0

    invoke-virtual {v0}, Lm5/i;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized m()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lr6/f;->j:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final p()Lt6/d;
    .locals 3

    sget-object v0, Lr6/f;->m:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lr6/f;->a:Lm5/c;

    invoke-virtual {v1}, Lm5/c;->h()Landroid/content/Context;

    move-result-object v1

    const-string v2, "generatefid.lock"

    invoke-static {v1, v2}, Lr6/b;->a(Landroid/content/Context;Ljava/lang/String;)Lr6/b;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v2, p0, Lr6/f;->c:Lt6/c;

    invoke-virtual {v2}, Lt6/c;->c()Lt6/d;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Lr6/b;->b()V

    :cond_0
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v2

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lr6/b;->b()V

    :cond_1
    throw v2

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public final q()Lt6/d;
    .locals 5

    sget-object v0, Lr6/f;->m:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lr6/f;->a:Lm5/c;

    invoke-virtual {v1}, Lm5/c;->h()Landroid/content/Context;

    move-result-object v1

    const-string v2, "generatefid.lock"

    invoke-static {v1, v2}, Lr6/b;->a(Landroid/content/Context;Ljava/lang/String;)Lr6/b;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v2, p0, Lr6/f;->c:Lt6/c;

    invoke-virtual {v2}, Lt6/c;->c()Lt6/d;

    move-result-object v2

    invoke-virtual {v2}, Lt6/d;->j()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v2}, Lr6/f;->x(Lt6/d;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lr6/f;->c:Lt6/c;

    invoke-virtual {v2, v3}, Lt6/d;->t(Ljava/lang/String;)Lt6/d;

    move-result-object v2

    invoke-virtual {v4, v2}, Lt6/c;->a(Lt6/d;)Lt6/d;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    if-eqz v1, :cond_1

    :try_start_2
    invoke-virtual {v1}, Lr6/b;->b()V

    :cond_1
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v2

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lr6/b;->b()V

    :cond_2
    throw v2

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public r()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lr6/f;->a:Lm5/c;

    invoke-virtual {v0}, Lm5/c;->k()Lm5/i;

    move-result-object v0

    invoke-virtual {v0}, Lm5/i;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final s(Lt6/d;)V
    .locals 3

    sget-object v0, Lr6/f;->m:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lr6/f;->a:Lm5/c;

    invoke-virtual {v1}, Lm5/c;->h()Landroid/content/Context;

    move-result-object v1

    const-string v2, "generatefid.lock"

    invoke-static {v1, v2}, Lr6/b;->a(Landroid/content/Context;Ljava/lang/String;)Lr6/b;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v2, p0, Lr6/f;->c:Lt6/c;

    invoke-virtual {v2, p1}, Lt6/c;->a(Lt6/d;)Lt6/d;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Lr6/b;->b()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lr6/b;->b()V

    :cond_1
    throw p1

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public final w()V
    .locals 3

    invoke-virtual {p0}, Lr6/f;->l()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Please set your Application ID. A valid Firebase App ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options."

    invoke-static {v0, v1}, Lx3/q;->g(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {p0}, Lr6/f;->r()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Please set your Project ID. A valid Firebase Project ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options."

    invoke-static {v0, v2}, Lx3/q;->g(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {p0}, Lr6/f;->k()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Please set a valid API key. A Firebase API key is required to communicate with Firebase server APIs: It authenticates your project with Google.Please refer to https://firebase.google.com/support/privacy/init-options."

    invoke-static {v0, v2}, Lx3/q;->g(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {p0}, Lr6/f;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lr6/o;->h(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0, v1}, Lx3/q;->b(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Lr6/f;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lr6/o;->g(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0, v2}, Lx3/q;->b(ZLjava/lang/Object;)V

    return-void
.end method

.method public final x(Lt6/d;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lr6/f;->a:Lm5/c;

    invoke-virtual {v0}, Lm5/c;->j()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CHIME_ANDROID_SDK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lr6/f;->a:Lm5/c;

    invoke-virtual {v0}, Lm5/c;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Lt6/d;->m()Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    iget-object p1, p0, Lr6/f;->f:Lr6/m;

    invoke-virtual {p1}, Lr6/m;->a()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object p1, p0, Lr6/f;->e:Lt6/b;

    invoke-virtual {p1}, Lt6/b;->f()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p0, Lr6/f;->f:Lr6/m;

    invoke-virtual {p1}, Lr6/m;->a()Ljava/lang/String;

    move-result-object p1

    :cond_3
    return-object p1
.end method

.method public final y(Lt6/d;)Lt6/d;
    .locals 10

    invoke-virtual {p1}, Lt6/d;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lt6/d;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lr6/f;->e:Lt6/b;

    invoke-virtual {v0}, Lt6/b;->i()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v6, v0

    iget-object v1, p0, Lr6/f;->b:Lu6/c;

    invoke-virtual {p0}, Lr6/f;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lt6/d;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lr6/f;->r()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lr6/f;->l()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v1 .. v6}, Lu6/c;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lu6/d;

    move-result-object v0

    sget-object v1, Lr6/f$b;->a:[I

    invoke-virtual {v0}, Lu6/d;->e()Lu6/d$b;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v0, 0x2

    if-ne v1, v0, :cond_1

    const-string v0, "BAD CONFIG"

    invoke-virtual {p1, v0}, Lt6/d;->q(Ljava/lang/String;)Lt6/d;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Lr6/h;

    sget-object v0, Lr6/h$a;->b:Lr6/h$a;

    const-string v1, "Firebase Installations Service is unavailable. Please try again later."

    invoke-direct {p1, v1, v0}, Lr6/h;-><init>(Ljava/lang/String;Lr6/h$a;)V

    throw p1

    :cond_2
    invoke-virtual {v0}, Lu6/d;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lu6/d;->d()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lr6/f;->d:Lr6/o;

    invoke-virtual {v1}, Lr6/o;->b()J

    move-result-wide v5

    invoke-virtual {v0}, Lu6/d;->b()Lu6/f;

    move-result-object v1

    invoke-virtual {v1}, Lu6/f;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lu6/d;->b()Lu6/f;

    move-result-object v0

    invoke-virtual {v0}, Lu6/f;->d()J

    move-result-wide v8

    move-object v2, p1

    invoke-virtual/range {v2 .. v9}, Lt6/d;->s(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;J)Lt6/d;

    move-result-object p1

    return-object p1
.end method

.method public final z(Ljava/lang/Exception;)V
    .locals 3

    iget-object v0, p0, Lr6/f;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lr6/f;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr6/n;

    invoke-interface {v2, p1}, Lr6/n;->onException(Ljava/lang/Exception;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method
