.class public Lm7/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final j:Lc4/f;

.field public static final k:Ljava/util/Random;


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lm7/e;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Landroid/content/Context;

.field public final c:Ljava/util/concurrent/ExecutorService;

.field public final d:Lm5/c;

.field public final e:Lr6/g;

.field public final f:Ln5/c;

.field public final g:Lq6/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq6/b<",
            "Lq5/a;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ljava/lang/String;

.field public i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lc4/i;->d()Lc4/f;

    move-result-object v0

    sput-object v0, Lm7/p;->j:Lc4/f;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lm7/p;->k:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Lm5/c;Lr6/g;Ln5/c;Lq6/b;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/ExecutorService;",
            "Lm5/c;",
            "Lr6/g;",
            "Ln5/c;",
            "Lq6/b<",
            "Lq5/a;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lm7/p;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lm7/p;->i:Ljava/util/Map;

    iput-object p1, p0, Lm7/p;->b:Landroid/content/Context;

    iput-object p2, p0, Lm7/p;->c:Ljava/util/concurrent/ExecutorService;

    iput-object p3, p0, Lm7/p;->d:Lm5/c;

    iput-object p4, p0, Lm7/p;->e:Lr6/g;

    iput-object p5, p0, Lm7/p;->f:Ln5/c;

    iput-object p6, p0, Lm7/p;->g:Lq6/b;

    invoke-virtual {p3}, Lm5/c;->k()Lm5/i;

    move-result-object p1

    invoke-virtual {p1}, Lm5/i;->c()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lm7/p;->h:Ljava/lang/String;

    if-eqz p7, :cond_0

    new-instance p1, Lm7/n;

    invoke-direct {p1, p0}, Lm7/n;-><init>(Lm7/p;)V

    invoke-static {p2, p1}, Lj5/l;->b(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lj5/i;

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lm5/c;Lr6/g;Ln5/c;Lq6/b;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lm5/c;",
            "Lr6/g;",
            "Ln5/c;",
            "Lq6/b<",
            "Lq5/a;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lm7/p;-><init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Lm5/c;Lr6/g;Ln5/c;Lq6/b;Z)V

    return-void
.end method

.method public static synthetic a()Lq5/a;
    .locals 1

    invoke-static {}, Lm7/p;->m()Lq5/a;

    move-result-object v0

    return-object v0
.end method

.method public static i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/remoteconfig/internal/c;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "frc"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 p1, 0x2

    aput-object p2, v0, p1

    const/4 p1, 0x3

    const-string p2, "settings"

    aput-object p2, v0, p1

    const-string p1, "%s_%s_%s_%s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    new-instance p1, Lcom/google/firebase/remoteconfig/internal/c;

    invoke-direct {p1, p0}, Lcom/google/firebase/remoteconfig/internal/c;-><init>(Landroid/content/SharedPreferences;)V

    return-object p1
.end method

.method public static j(Lm5/c;Ljava/lang/String;Lq6/b;)Ln7/n;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm5/c;",
            "Ljava/lang/String;",
            "Lq6/b<",
            "Lq5/a;",
            ">;)",
            "Ln7/n;"
        }
    .end annotation

    invoke-static {p0}, Lm7/p;->l(Lm5/c;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "firebase"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Ln7/n;

    invoke-direct {p0, p2}, Ln7/n;-><init>(Lq6/b;)V

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static k(Lm5/c;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "firebase"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Lm7/p;->l(Lm5/c;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static l(Lm5/c;)Z
    .locals 1

    invoke-virtual {p0}, Lm5/c;->j()Ljava/lang/String;

    move-result-object p0

    const-string v0, "[DEFAULT]"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic m()Lq5/a;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public declared-synchronized b(Ljava/lang/String;)Lm7/e;
    .locals 13

    monitor-enter p0

    :try_start_0
    const-string v0, "fetch"

    invoke-virtual {p0, p1, v0}, Lm7/p;->d(Ljava/lang/String;Ljava/lang/String;)Ln7/e;

    move-result-object v7

    const-string v0, "activate"

    invoke-virtual {p0, p1, v0}, Lm7/p;->d(Ljava/lang/String;Ljava/lang/String;)Ln7/e;

    move-result-object v8

    const-string v0, "defaults"

    invoke-virtual {p0, p1, v0}, Lm7/p;->d(Ljava/lang/String;Ljava/lang/String;)Ln7/e;

    move-result-object v9

    iget-object v0, p0, Lm7/p;->b:Landroid/content/Context;

    iget-object v1, p0, Lm7/p;->h:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lm7/p;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/remoteconfig/internal/c;

    move-result-object v12

    invoke-virtual {p0, v8, v9}, Lm7/p;->h(Ln7/e;Ln7/e;)Ln7/k;

    move-result-object v11

    iget-object v0, p0, Lm7/p;->d:Lm5/c;

    iget-object v1, p0, Lm7/p;->g:Lq6/b;

    invoke-static {v0, p1, v1}, Lm7/p;->j(Lm5/c;Ljava/lang/String;Lq6/b;)Ln7/n;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lm7/m;

    invoke-direct {v1, v0}, Lm7/m;-><init>(Ln7/n;)V

    invoke-virtual {v11, v1}, Ln7/k;->b(Lc4/d;)V

    :cond_0
    iget-object v2, p0, Lm7/p;->d:Lm5/c;

    iget-object v4, p0, Lm7/p;->e:Lr6/g;

    iget-object v5, p0, Lm7/p;->f:Ln5/c;

    iget-object v6, p0, Lm7/p;->c:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {p0, p1, v7, v12}, Lm7/p;->f(Ljava/lang/String;Ln7/e;Lcom/google/firebase/remoteconfig/internal/c;)Lcom/google/firebase/remoteconfig/internal/b;

    move-result-object v10

    move-object v1, p0

    move-object v3, p1

    invoke-virtual/range {v1 .. v12}, Lm7/p;->c(Lm5/c;Ljava/lang/String;Lr6/g;Ln5/c;Ljava/util/concurrent/Executor;Ln7/e;Ln7/e;Ln7/e;Lcom/google/firebase/remoteconfig/internal/b;Ln7/k;Lcom/google/firebase/remoteconfig/internal/c;)Lm7/e;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c(Lm5/c;Ljava/lang/String;Lr6/g;Ln5/c;Ljava/util/concurrent/Executor;Ln7/e;Ln7/e;Ln7/e;Lcom/google/firebase/remoteconfig/internal/b;Ln7/k;Lcom/google/firebase/remoteconfig/internal/c;)Lm7/e;
    .locals 15

    move-object v1, p0

    move-object/from16 v0, p2

    monitor-enter p0

    :try_start_0
    iget-object v2, v1, Lm7/p;->a:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Lm7/e;

    iget-object v4, v1, Lm7/p;->b:Landroid/content/Context;

    invoke-static/range {p1 .. p2}, Lm7/p;->k(Lm5/c;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v7, p4

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    move-object v7, v3

    :goto_0
    move-object v3, v2

    move-object/from16 v5, p1

    move-object/from16 v6, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    invoke-direct/range {v3 .. v14}, Lm7/e;-><init>(Landroid/content/Context;Lm5/c;Lr6/g;Ln5/c;Ljava/util/concurrent/Executor;Ln7/e;Ln7/e;Ln7/e;Lcom/google/firebase/remoteconfig/internal/b;Ln7/k;Lcom/google/firebase/remoteconfig/internal/c;)V

    invoke-virtual {v2}, Lm7/e;->o()V

    iget-object v3, v1, Lm7/p;->a:Ljava/util/Map;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v2, v1, Lm7/p;->a:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm7/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;)Ln7/e;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "frc"

    aput-object v2, v0, v1

    iget-object v1, p0, Lm7/p;->h:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aput-object p1, v0, v1

    const/4 p1, 0x3

    aput-object p2, v0, p1

    const-string p1, "%s_%s_%s_%s.json"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    iget-object v0, p0, Lm7/p;->b:Landroid/content/Context;

    invoke-static {v0, p1}, Ln7/l;->c(Landroid/content/Context;Ljava/lang/String;)Ln7/l;

    move-result-object p1

    invoke-static {p2, p1}, Ln7/e;->h(Ljava/util/concurrent/ExecutorService;Ln7/l;)Ln7/e;

    move-result-object p1

    return-object p1
.end method

.method public e()Lm7/e;
    .locals 1

    const-string v0, "firebase"

    invoke-virtual {p0, v0}, Lm7/p;->b(Ljava/lang/String;)Lm7/e;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized f(Ljava/lang/String;Ln7/e;Lcom/google/firebase/remoteconfig/internal/c;)Lcom/google/firebase/remoteconfig/internal/b;
    .locals 11

    monitor-enter p0

    :try_start_0
    new-instance v10, Lcom/google/firebase/remoteconfig/internal/b;

    iget-object v1, p0, Lm7/p;->e:Lr6/g;

    iget-object v0, p0, Lm7/p;->d:Lm5/c;

    invoke-static {v0}, Lm7/p;->l(Lm5/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lm7/p;->g:Lq6/b;

    goto :goto_0

    :cond_0
    new-instance v0, Lm7/o;

    invoke-direct {v0}, Lm7/o;-><init>()V

    :goto_0
    move-object v2, v0

    iget-object v3, p0, Lm7/p;->c:Ljava/util/concurrent/ExecutorService;

    sget-object v4, Lm7/p;->j:Lc4/f;

    sget-object v5, Lm7/p;->k:Ljava/util/Random;

    iget-object v0, p0, Lm7/p;->d:Lm5/c;

    invoke-virtual {v0}, Lm5/c;->k()Lm5/i;

    move-result-object v0

    invoke-virtual {v0}, Lm5/i;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p3}, Lm7/p;->g(Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/remoteconfig/internal/c;)Lcom/google/firebase/remoteconfig/internal/ConfigFetchHttpClient;

    move-result-object v7

    iget-object v9, p0, Lm7/p;->i:Ljava/util/Map;

    move-object v0, v10

    move-object v6, p2

    move-object v8, p3

    invoke-direct/range {v0 .. v9}, Lcom/google/firebase/remoteconfig/internal/b;-><init>(Lr6/g;Lq6/b;Ljava/util/concurrent/Executor;Lc4/f;Ljava/util/Random;Ln7/e;Lcom/google/firebase/remoteconfig/internal/ConfigFetchHttpClient;Lcom/google/firebase/remoteconfig/internal/c;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v10

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/remoteconfig/internal/c;)Lcom/google/firebase/remoteconfig/internal/ConfigFetchHttpClient;
    .locals 10

    iget-object v0, p0, Lm7/p;->d:Lm5/c;

    invoke-virtual {v0}, Lm5/c;->k()Lm5/i;

    move-result-object v0

    invoke-virtual {v0}, Lm5/i;->c()Ljava/lang/String;

    move-result-object v3

    new-instance v0, Lcom/google/firebase/remoteconfig/internal/ConfigFetchHttpClient;

    iget-object v2, p0, Lm7/p;->b:Landroid/content/Context;

    invoke-virtual {p3}, Lcom/google/firebase/remoteconfig/internal/c;->b()J

    move-result-wide v6

    invoke-virtual {p3}, Lcom/google/firebase/remoteconfig/internal/c;->b()J

    move-result-wide v8

    move-object v1, v0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v9}, Lcom/google/firebase/remoteconfig/internal/ConfigFetchHttpClient;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    return-object v0
.end method

.method public final h(Ln7/e;Ln7/e;)Ln7/k;
    .locals 2

    new-instance v0, Ln7/k;

    iget-object v1, p0, Lm7/p;->c:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, v1, p1, p2}, Ln7/k;-><init>(Ljava/util/concurrent/Executor;Ln7/e;Ln7/e;)V

    return-object v0
.end method
