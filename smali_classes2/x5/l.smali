.class public Lx5/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lx5/l$e;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lm5/c;

.field public final c:Lx5/r;

.field public final d:J

.field public e:Lx5/m;

.field public f:Lx5/m;

.field public g:Z

.field public h:Lx5/j;

.field public final i:Lx5/v;

.field public final j:Lw5/b;

.field public final k:Lv5/a;

.field public final l:Ljava/util/concurrent/ExecutorService;

.field public final m:Lx5/h;

.field public final n:Lu5/a;


# direct methods
.method public constructor <init>(Lm5/c;Lx5/v;Lu5/a;Lx5/r;Lw5/b;Lv5/a;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx5/l;->b:Lm5/c;

    iput-object p4, p0, Lx5/l;->c:Lx5/r;

    invoke-virtual {p1}, Lm5/c;->h()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lx5/l;->a:Landroid/content/Context;

    iput-object p2, p0, Lx5/l;->i:Lx5/v;

    iput-object p3, p0, Lx5/l;->n:Lu5/a;

    iput-object p5, p0, Lx5/l;->j:Lw5/b;

    iput-object p6, p0, Lx5/l;->k:Lv5/a;

    iput-object p7, p0, Lx5/l;->l:Ljava/util/concurrent/ExecutorService;

    new-instance p1, Lx5/h;

    invoke-direct {p1, p7}, Lx5/h;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object p1, p0, Lx5/l;->m:Lx5/h;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lx5/l;->d:J

    return-void
.end method

.method public static synthetic a(Lx5/l;Le6/e;)Lj5/i;
    .locals 0

    invoke-virtual {p0, p1}, Lx5/l;->f(Le6/e;)Lj5/i;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lx5/l;)Lx5/m;
    .locals 0

    iget-object p0, p0, Lx5/l;->e:Lx5/m;

    return-object p0
.end method

.method public static synthetic c(Lx5/l;)Lx5/j;
    .locals 0

    iget-object p0, p0, Lx5/l;->h:Lx5/j;

    return-object p0
.end method

.method public static i()Ljava/lang/String;
    .locals 1

    const-string v0, "18.2.3"

    return-object v0
.end method

.method public static j(Ljava/lang/String;Z)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    invoke-static {}, Lu5/f;->f()Lu5/f;

    move-result-object p0

    const-string p1, "Configured not to require a build ID."

    invoke-virtual {p0, p1}, Lu5/f;->i(Ljava/lang/String;)V

    return v0

    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    const-string p0, "FirebaseCrashlytics"

    const-string p1, "."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ".     |  | "

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ".     |  |"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, ".   \\ |  | /"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, ".    \\    /"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, ".     \\  /"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, ".      \\/"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "The Crashlytics build ID is missing. This occurs when Crashlytics tooling is absent from your app\'s build configuration. Please review Crashlytics onboarding instructions and ensure you have a valid Crashlytics account."

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, ".      /\\"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, ".     /  \\"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, ".    /    \\"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, ".   / |  | \\"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final d()V
    .locals 2

    iget-object v0, p0, Lx5/l;->m:Lx5/h;

    new-instance v1, Lx5/l$d;

    invoke-direct {v1, p0}, Lx5/l$d;-><init>(Lx5/l;)V

    invoke-virtual {v0, v1}, Lx5/h;->g(Ljava/util/concurrent/Callable;)Lj5/i;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Lx5/k0;->d(Lj5/i;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lx5/l;->g:Z

    return-void

    :catch_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lx5/l;->g:Z

    return-void
.end method

.method public e()Z
    .locals 1

    iget-object v0, p0, Lx5/l;->e:Lx5/m;

    invoke-virtual {v0}, Lx5/m;->c()Z

    move-result v0

    return v0
.end method

.method public final f(Le6/e;)Lj5/i;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le6/e;",
            ")",
            "Lj5/i<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const-string v0, "Collection of crash reports disabled in Crashlytics settings."

    invoke-virtual {p0}, Lx5/l;->m()V

    :try_start_0
    iget-object v1, p0, Lx5/l;->j:Lw5/b;

    new-instance v2, Lx5/k;

    invoke-direct {v2, p0}, Lx5/k;-><init>(Lx5/l;)V

    invoke-interface {v1, v2}, Lw5/b;->a(Lw5/a;)V

    invoke-interface {p1}, Le6/e;->b()Lf6/d;

    move-result-object v1

    invoke-interface {v1}, Lf6/d;->a()Lf6/b;

    move-result-object v1

    iget-boolean v1, v1, Lf6/b;->a:Z

    if-nez v1, :cond_0

    invoke-static {}, Lu5/f;->f()Lu5/f;

    move-result-object p1

    invoke-virtual {p1, v0}, Lu5/f;->b(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lj5/l;->c(Ljava/lang/Exception;)Lj5/i;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lx5/l;->l()V

    return-object p1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lx5/l;->h:Lx5/j;

    invoke-virtual {v0, p1}, Lx5/j;->z(Le6/e;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lu5/f;->f()Lu5/f;

    move-result-object v0

    const-string v1, "Previous sessions could not be finalized."

    invoke-virtual {v0, v1}, Lu5/f;->k(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lx5/l;->h:Lx5/j;

    invoke-interface {p1}, Le6/e;->a()Lj5/i;

    move-result-object p1

    invoke-virtual {v0, p1}, Lx5/j;->R(Lj5/i;)Lj5/i;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0}, Lx5/l;->l()V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    invoke-static {}, Lu5/f;->f()Lu5/f;

    move-result-object v0

    const-string v1, "Crashlytics encountered a problem during asynchronous initialization."

    invoke-virtual {v0, v1, p1}, Lu5/f;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p1}, Lj5/l;->c(Ljava/lang/Exception;)Lj5/i;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p0}, Lx5/l;->l()V

    return-object p1

    :goto_0
    invoke-virtual {p0}, Lx5/l;->l()V

    throw p1
.end method

.method public g(Le6/e;)Lj5/i;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le6/e;",
            ")",
            "Lj5/i<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lx5/l;->l:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lx5/l$a;

    invoke-direct {v1, p0, p1}, Lx5/l$a;-><init>(Lx5/l;Le6/e;)V

    invoke-static {v0, v1}, Lx5/k0;->e(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lj5/i;

    move-result-object p1

    return-object p1
.end method

.method public final h(Le6/e;)V
    .locals 3

    new-instance v0, Lx5/l$b;

    invoke-direct {v0, p0, p1}, Lx5/l$b;-><init>(Lx5/l;Le6/e;)V

    iget-object p1, p0, Lx5/l;->l:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-static {}, Lu5/f;->f()Lu5/f;

    move-result-object v0

    const-string v1, "Crashlytics detected incomplete initialization on previous app launch. Will initialize synchronously."

    invoke-virtual {v0, v1}, Lu5/f;->b(Ljava/lang/String;)V

    const-wide/16 v0, 0x4

    :try_start_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v0, v1, v2}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {}, Lu5/f;->f()Lu5/f;

    move-result-object v0

    const-string v1, "Crashlytics timed out during initialization."

    invoke-virtual {v0, v1, p1}, Lu5/f;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-static {}, Lu5/f;->f()Lu5/f;

    move-result-object v0

    const-string v1, "Crashlytics encountered a problem during initialization."

    invoke-virtual {v0, v1, p1}, Lu5/f;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception p1

    invoke-static {}, Lu5/f;->f()Lu5/f;

    move-result-object v0

    const-string v1, "Crashlytics was interrupted during initialization."

    invoke-virtual {v0, v1, p1}, Lu5/f;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lx5/l;->d:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lx5/l;->h:Lx5/j;

    invoke-virtual {v2, v0, v1, p1}, Lx5/j;->U(JLjava/lang/String;)V

    return-void
.end method

.method public l()V
    .locals 2

    iget-object v0, p0, Lx5/l;->m:Lx5/h;

    new-instance v1, Lx5/l$c;

    invoke-direct {v1, p0}, Lx5/l$c;-><init>(Lx5/l;)V

    invoke-virtual {v0, v1}, Lx5/h;->g(Ljava/util/concurrent/Callable;)Lj5/i;

    return-void
.end method

.method public m()V
    .locals 2

    iget-object v0, p0, Lx5/l;->m:Lx5/h;

    invoke-virtual {v0}, Lx5/h;->b()V

    iget-object v0, p0, Lx5/l;->e:Lx5/m;

    invoke-virtual {v0}, Lx5/m;->a()Z

    invoke-static {}, Lu5/f;->f()Lu5/f;

    move-result-object v0

    const-string v1, "Initialization marker file was created."

    invoke-virtual {v0, v1}, Lu5/f;->i(Ljava/lang/String;)V

    return-void
.end method

.method public n(Lx5/a;Le6/e;)Z
    .locals 26

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    iget-object v2, v1, Lx5/l;->a:Landroid/content/Context;

    const-string v3, "com.crashlytics.RequireBuildId"

    const/4 v10, 0x1

    invoke-static {v2, v3, v10}, Lx5/g;->k(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v15, p1

    iget-object v3, v15, Lx5/a;->b:Ljava/lang/String;

    invoke-static {v3, v2}, Lx5/l;->j(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v25, 0x0

    :try_start_0
    new-instance v14, Lc6/i;

    iget-object v2, v1, Lx5/l;->a:Landroid/content/Context;

    invoke-direct {v14, v2}, Lc6/i;-><init>(Landroid/content/Context;)V

    new-instance v2, Lx5/m;

    const-string v3, "crash_marker"

    invoke-direct {v2, v3, v14}, Lx5/m;-><init>(Ljava/lang/String;Lc6/h;)V

    iput-object v2, v1, Lx5/l;->f:Lx5/m;

    new-instance v2, Lx5/m;

    const-string v3, "initialization_marker"

    invoke-direct {v2, v3, v14}, Lx5/m;-><init>(Ljava/lang/String;Lc6/h;)V

    iput-object v2, v1, Lx5/l;->e:Lx5/m;

    new-instance v19, Lx5/g0;

    invoke-direct/range {v19 .. v19}, Lx5/g0;-><init>()V

    new-instance v13, Lx5/l$e;

    invoke-direct {v13, v14}, Lx5/l$e;-><init>(Lc6/h;)V

    new-instance v12, Ly5/b;

    iget-object v2, v1, Lx5/l;->a:Landroid/content/Context;

    invoke-direct {v12, v2, v13}, Ly5/b;-><init>(Landroid/content/Context;Ly5/b$b;)V

    new-instance v8, Lh6/a;

    const/16 v2, 0x400

    new-array v3, v10, [Lh6/d;

    new-instance v4, Lh6/c;

    const/16 v5, 0xa

    invoke-direct {v4, v5}, Lh6/c;-><init>(I)V

    aput-object v4, v3, v25

    invoke-direct {v8, v2, v3}, Lh6/a;-><init>(I[Lh6/d;)V

    iget-object v2, v1, Lx5/l;->a:Landroid/content/Context;

    iget-object v3, v1, Lx5/l;->i:Lx5/v;

    move-object v4, v14

    move-object/from16 v5, p1

    move-object v6, v12

    move-object/from16 v7, v19

    move-object/from16 v9, p2

    invoke-static/range {v2 .. v9}, Lx5/e0;->g(Landroid/content/Context;Lx5/v;Lc6/h;Lx5/a;Ly5/b;Lx5/g0;Lh6/d;Le6/e;)Lx5/e0;

    move-result-object v22

    new-instance v2, Lx5/j;

    iget-object v3, v1, Lx5/l;->a:Landroid/content/Context;

    iget-object v4, v1, Lx5/l;->m:Lx5/h;

    iget-object v5, v1, Lx5/l;->i:Lx5/v;

    iget-object v6, v1, Lx5/l;->c:Lx5/r;

    iget-object v7, v1, Lx5/l;->f:Lx5/m;

    iget-object v8, v1, Lx5/l;->n:Lu5/a;

    iget-object v9, v1, Lx5/l;->k:Lv5/a;

    move-object v11, v2

    move-object/from16 v20, v12

    move-object v12, v3

    move-object v3, v13

    move-object v13, v4

    move-object v4, v14

    move-object v14, v5

    move-object v15, v6

    move-object/from16 v16, v4

    move-object/from16 v17, v7

    move-object/from16 v18, p1

    move-object/from16 v21, v3

    move-object/from16 v23, v8

    move-object/from16 v24, v9

    invoke-direct/range {v11 .. v24}, Lx5/j;-><init>(Landroid/content/Context;Lx5/h;Lx5/v;Lx5/r;Lc6/h;Lx5/m;Lx5/a;Lx5/g0;Ly5/b;Ly5/b$b;Lx5/e0;Lu5/a;Lv5/a;)V

    iput-object v2, v1, Lx5/l;->h:Lx5/j;

    invoke-virtual/range {p0 .. p0}, Lx5/l;->e()Z

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lx5/l;->d()V

    iget-object v3, v1, Lx5/l;->h:Lx5/j;

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lx5/j;->w(Ljava/lang/Thread$UncaughtExceptionHandler;Le6/e;)V

    if-eqz v2, :cond_0

    iget-object v2, v1, Lx5/l;->a:Landroid/content/Context;

    invoke-static {v2}, Lx5/g;->c(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lu5/f;->f()Lu5/f;

    move-result-object v2

    const-string v3, "Crashlytics did not finish previous background initialization. Initializing synchronously."

    invoke-virtual {v2, v3}, Lu5/f;->b(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lx5/l;->h(Le6/e;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v25

    :cond_0
    invoke-static {}, Lu5/f;->f()Lu5/f;

    move-result-object v0

    const-string v2, "Successfully configured exception handler."

    invoke-virtual {v0, v2}, Lu5/f;->b(Ljava/lang/String;)V

    return v10

    :catch_0
    move-exception v0

    invoke-static {}, Lu5/f;->f()Lu5/f;

    move-result-object v2

    const-string v3, "Crashlytics was not started due to an exception during initialization"

    invoke-virtual {v2, v3, v0}, Lu5/f;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    iput-object v0, v1, Lx5/l;->h:Lx5/j;

    return v25

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "The Crashlytics build ID is missing. This occurs when Crashlytics tooling is absent from your app\'s build configuration. Please review Crashlytics onboarding instructions and ensure you have a valid Crashlytics account."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
