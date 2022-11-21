.class public final Lr4/fo1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lr4/zn1;

.field public final b:Lz2/a;

.field public final c:Lr4/os0;

.field public final d:Landroid/content/Context;

.field public final e:Lr4/ls1;

.field public final f:Lr4/xt2;

.field public final g:Ljava/util/concurrent/Executor;

.field public final h:Lr4/u;

.field public final i:Lr4/im0;

.field public final j:Lr4/j60;

.field public final k:Lr4/c12;

.field public final l:Lr4/pu2;

.field public m:Lr4/h83;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/h83<",
            "Lr4/cs0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lr4/do1;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lr4/do1;->c(Lr4/do1;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lr4/fo1;->d:Landroid/content/Context;

    invoke-static {p1}, Lr4/do1;->g(Lr4/do1;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lr4/fo1;->g:Ljava/util/concurrent/Executor;

    invoke-static {p1}, Lr4/do1;->h(Lr4/do1;)Lr4/u;

    move-result-object v0

    iput-object v0, p0, Lr4/fo1;->h:Lr4/u;

    invoke-static {p1}, Lr4/do1;->i(Lr4/do1;)Lr4/im0;

    move-result-object v0

    iput-object v0, p0, Lr4/fo1;->i:Lr4/im0;

    invoke-static {p1}, Lr4/do1;->a(Lr4/do1;)Lz2/a;

    move-result-object v0

    iput-object v0, p0, Lr4/fo1;->b:Lz2/a;

    new-instance v0, Lr4/zn1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lr4/zn1;-><init>(Lr4/co1;)V

    iput-object v0, p0, Lr4/fo1;->a:Lr4/zn1;

    invoke-static {p1}, Lr4/do1;->b(Lr4/do1;)Lr4/os0;

    move-result-object v0

    iput-object v0, p0, Lr4/fo1;->c:Lr4/os0;

    new-instance v0, Lr4/j60;

    invoke-direct {v0}, Lr4/j60;-><init>()V

    iput-object v0, p0, Lr4/fo1;->j:Lr4/j60;

    invoke-static {p1}, Lr4/do1;->f(Lr4/do1;)Lr4/c12;

    move-result-object v0

    iput-object v0, p0, Lr4/fo1;->k:Lr4/c12;

    invoke-static {p1}, Lr4/do1;->j(Lr4/do1;)Lr4/pu2;

    move-result-object v0

    iput-object v0, p0, Lr4/fo1;->l:Lr4/pu2;

    invoke-static {p1}, Lr4/do1;->d(Lr4/do1;)Lr4/ls1;

    move-result-object v0

    iput-object v0, p0, Lr4/fo1;->e:Lr4/ls1;

    invoke-static {p1}, Lr4/do1;->e(Lr4/do1;)Lr4/xt2;

    move-result-object p1

    iput-object p1, p0, Lr4/fo1;->f:Lr4/xt2;

    return-void
.end method

.method public static synthetic a(Lr4/fo1;)Lr4/zn1;
    .locals 0

    iget-object p0, p0, Lr4/fo1;->a:Lr4/zn1;

    return-object p0
.end method


# virtual methods
.method public final declared-synchronized b()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lr4/fo1;->d:Landroid/content/Context;

    iget-object v1, p0, Lr4/fo1;->i:Lr4/im0;

    sget-object v2, Lr4/rz;->i2:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v3

    invoke-virtual {v3, v2}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lr4/fo1;->h:Lr4/u;

    iget-object v4, p0, Lr4/fo1;->b:Lz2/a;

    invoke-static {v0, v1, v2, v3, v4}, Lr4/os0;->b(Landroid/content/Context;Lr4/im0;Ljava/lang/String;Lr4/u;Lz2/a;)Lr4/h83;

    move-result-object v0

    new-instance v1, Lr4/rn1;

    invoke-direct {v1, p0}, Lr4/rn1;-><init>(Lr4/fo1;)V

    iget-object v2, p0, Lr4/fo1;->g:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, v2}, Lr4/y73;->j(Lr4/h83;Lr4/p03;Ljava/util/concurrent/Executor;)Lr4/h83;

    move-result-object v0

    iput-object v0, p0, Lr4/fo1;->m:Lr4/h83;

    const-string v1, "NativeJavascriptExecutor.initializeEngine"

    invoke-static {v0, v1}, Lr4/tm0;->a(Lr4/h83;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lr4/fo1;->m:Lr4/h83;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v1, Lr4/tn1;

    invoke-direct {v1, p0}, Lr4/tn1;-><init>(Lr4/fo1;)V

    iget-object v2, p0, Lr4/fo1;->g:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, v2}, Lr4/y73;->p(Lr4/h83;Lr4/t73;Ljava/util/concurrent/Executor;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lr4/fo1;->m:Lr4/h83;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d(Ljava/lang/String;Lorg/json/JSONObject;)Lr4/h83;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ")",
            "Lr4/h83<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lr4/fo1;->m:Lr4/h83;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    invoke-static {p1}, Lr4/y73;->a(Ljava/lang/Object;)Lr4/h83;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    :try_start_1
    new-instance v1, Lr4/sn1;

    invoke-direct {v1, p0, p1, p2}, Lr4/sn1;-><init>(Lr4/fo1;Ljava/lang/String;Lorg/json/JSONObject;)V

    iget-object p1, p0, Lr4/fo1;->g:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, p1}, Lr4/y73;->i(Lr4/h83;Lr4/e73;Ljava/util/concurrent/Executor;)Lr4/h83;

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

.method public final declared-synchronized e(Ljava/lang/String;Lr4/u50;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lr4/u50<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lr4/fo1;->m:Lr4/h83;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v1, Lr4/un1;

    invoke-direct {v1, p0, p1, p2}, Lr4/un1;-><init>(Lr4/fo1;Ljava/lang/String;Lr4/u50;)V

    iget-object p1, p0, Lr4/fo1;->g:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, p1}, Lr4/y73;->p(Lr4/h83;Lr4/t73;Ljava/util/concurrent/Executor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized f(Ljava/lang/String;Lr4/u50;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lr4/u50<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lr4/fo1;->m:Lr4/h83;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v1, Lr4/vn1;

    invoke-direct {v1, p0, p1, p2}, Lr4/vn1;-><init>(Lr4/fo1;Ljava/lang/String;Lr4/u50;)V

    iget-object p1, p0, Lr4/fo1;->g:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, p1}, Lr4/y73;->p(Lr4/h83;Lr4/t73;Ljava/util/concurrent/Executor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized g(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lr4/fo1;->m:Lr4/h83;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Lr4/wn1;

    const-string v1, "sendMessageToNativeJs"

    invoke-direct {v0, p0, v1, p2}, Lr4/wn1;-><init>(Lr4/fo1;Ljava/lang/String;Ljava/util/Map;)V

    iget-object p2, p0, Lr4/fo1;->g:Ljava/util/concurrent/Executor;

    invoke-static {p1, v0, p2}, Lr4/y73;->p(Lr4/h83;Lr4/t73;Ljava/util/concurrent/Executor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized h(Lr4/no2;Lr4/so2;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lr4/fo1;->m:Lr4/h83;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v1, Lr4/yn1;

    invoke-direct {v1, p0, p1, p2}, Lr4/yn1;-><init>(Lr4/fo1;Lr4/no2;Lr4/so2;)V

    iget-object p1, p0, Lr4/fo1;->g:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, p1}, Lr4/y73;->p(Lr4/h83;Lr4/t73;Ljava/util/concurrent/Executor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final i(Ljava/lang/ref/WeakReference;Ljava/lang/String;Lr4/u50;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/ref/WeakReference<",
            "TT;>;",
            "Ljava/lang/String;",
            "Lr4/u50<",
            "TT;>;)V"
        }
    .end annotation

    new-instance v6, Lr4/eo1;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lr4/eo1;-><init>(Lr4/fo1;Ljava/lang/ref/WeakReference;Ljava/lang/String;Lr4/u50;Lr4/co1;)V

    invoke-virtual {p0, p2, v6}, Lr4/fo1;->e(Ljava/lang/String;Lr4/u50;)V

    return-void
.end method

.method public final synthetic j(Ljava/lang/String;Lorg/json/JSONObject;Lr4/cs0;)Lr4/h83;
    .locals 1

    iget-object v0, p0, Lr4/fo1;->j:Lr4/j60;

    invoke-virtual {v0, p3, p1, p2}, Lr4/j60;->c(Lr4/s80;Ljava/lang/String;Lorg/json/JSONObject;)Lr4/h83;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic k(Lr4/cs0;)Lr4/cs0;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lr4/fo1;->j:Lr4/j60;

    const-string v3, "/result"

    invoke-interface {v1, v3, v2}, Lr4/cs0;->g0(Ljava/lang/String;Lr4/u50;)V

    invoke-interface/range {p1 .. p1}, Lr4/cs0;->o0()Lr4/st0;

    move-result-object v4

    iget-object v9, v0, Lr4/fo1;->a:Lr4/zn1;

    move-object v7, v9

    move-object v8, v9

    move-object v6, v9

    new-instance v2, Lz2/b;

    move-object v12, v2

    iget-object v3, v0, Lr4/fo1;->d:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-direct {v2, v3, v5, v5}, Lz2/b;-><init>(Landroid/content/Context;Lr4/ej0;Lr4/bg0;)V

    iget-object v15, v0, Lr4/fo1;->k:Lr4/c12;

    iget-object v2, v0, Lr4/fo1;->l:Lr4/pu2;

    move-object/from16 v16, v2

    iget-object v2, v0, Lr4/fo1;->e:Lr4/ls1;

    move-object/from16 v17, v2

    iget-object v2, v0, Lr4/fo1;->f:Lr4/xt2;

    move-object/from16 v18, v2

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-interface/range {v4 .. v20}, Lr4/st0;->d0(Lr4/gt;Lr4/t40;La3/q;Lr4/v40;La3/x;ZLr4/x50;Lz2/b;Lr4/ge0;Lr4/ej0;Lr4/c12;Lr4/pu2;Lr4/ls1;Lr4/xt2;Lr4/v50;Lr4/cf1;)V

    return-object v1
.end method
