.class public Lt5/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lx5/l;


# direct methods
.method public constructor <init>(Lx5/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt5/g;->a:Lx5/l;

    return-void
.end method

.method public static a(Lm5/c;Lr6/g;Lq6/a;Lq6/a;)Lt5/g;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm5/c;",
            "Lr6/g;",
            "Lq6/a<",
            "Lu5/a;",
            ">;",
            "Lq6/a<",
            "Lq5/a;",
            ">;)",
            "Lt5/g;"
        }
    .end annotation

    invoke-virtual {p0}, Lm5/c;->h()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lu5/f;->f()Lu5/f;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Initializing Firebase Crashlytics "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lx5/l;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lu5/f;->g(Ljava/lang/String;)V

    new-instance v12, Lx5/r;

    move-object v2, p0

    invoke-direct {v12, p0}, Lx5/r;-><init>(Lm5/c;)V

    new-instance v3, Lx5/v;

    move-object v4, p1

    invoke-direct {v3, v1, v0, p1, v12}, Lx5/v;-><init>(Landroid/content/Context;Ljava/lang/String;Lr6/g;Lx5/r;)V

    new-instance v7, Lu5/e;

    move-object/from16 v0, p2

    invoke-direct {v7, v0}, Lu5/e;-><init>(Lq6/a;)V

    new-instance v0, Lt5/d;

    move-object/from16 v4, p3

    invoke-direct {v0, v4}, Lt5/d;-><init>(Lq6/a;)V

    const-string v4, "Crashlytics Exception Handler"

    invoke-static {v4}, Lx5/t;->c(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v11

    new-instance v13, Lx5/l;

    invoke-virtual {v0}, Lt5/d;->e()Lw5/b;

    move-result-object v9

    invoke-virtual {v0}, Lt5/d;->d()Lv5/a;

    move-result-object v10

    move-object v4, v13

    move-object v5, p0

    move-object v6, v3

    move-object v8, v12

    invoke-direct/range {v4 .. v11}, Lx5/l;-><init>(Lm5/c;Lx5/v;Lu5/a;Lx5/r;Lw5/b;Lv5/a;Ljava/util/concurrent/ExecutorService;)V

    invoke-virtual {p0}, Lm5/c;->k()Lm5/i;

    move-result-object v0

    invoke-virtual {v0}, Lm5/i;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lx5/g;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lu5/f;->f()Lu5/f;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Mapping file ID is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lu5/f;->b(Ljava/lang/String;)V

    new-instance v4, Li6/a;

    invoke-direct {v4, v1}, Li6/a;-><init>(Landroid/content/Context;)V

    :try_start_0
    invoke-static {v1, v3, v2, v0, v4}, Lx5/a;->a(Landroid/content/Context;Lx5/v;Ljava/lang/String;Ljava/lang/String;Li6/b;)Lx5/a;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Lu5/f;->f()Lu5/f;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Installer package name is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lx5/a;->c:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lu5/f;->i(Ljava/lang/String;)V

    const-string v4, "com.google.firebase.crashlytics.startup"

    invoke-static {v4}, Lx5/t;->c(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v8

    new-instance v4, Lb6/b;

    invoke-direct {v4}, Lb6/b;-><init>()V

    iget-object v5, v0, Lx5/a;->e:Ljava/lang/String;

    iget-object v6, v0, Lx5/a;->f:Ljava/lang/String;

    move-object v7, v12

    invoke-static/range {v1 .. v7}, Le6/d;->l(Landroid/content/Context;Ljava/lang/String;Lx5/v;Lb6/b;Ljava/lang/String;Ljava/lang/String;Lx5/r;)Le6/d;

    move-result-object v1

    invoke-virtual {v1, v8}, Le6/d;->p(Ljava/util/concurrent/Executor;)Lj5/i;

    move-result-object v2

    new-instance v3, Lt5/g$a;

    invoke-direct {v3}, Lt5/g$a;-><init>()V

    invoke-virtual {v2, v8, v3}, Lj5/i;->h(Ljava/util/concurrent/Executor;Lj5/a;)Lj5/i;

    invoke-virtual {v13, v0, v1}, Lx5/l;->n(Lx5/a;Le6/e;)Z

    move-result v0

    new-instance v2, Lt5/g$b;

    invoke-direct {v2, v0, v13, v1}, Lt5/g$b;-><init>(ZLx5/l;Le6/d;)V

    invoke-static {v8, v2}, Lj5/l;->b(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lj5/i;

    new-instance v0, Lt5/g;

    invoke-direct {v0, v13}, Lt5/g;-><init>(Lx5/l;)V

    return-object v0

    :catch_0
    move-exception v0

    move-object v1, v0

    invoke-static {}, Lu5/f;->f()Lu5/f;

    move-result-object v0

    const-string v2, "Error retrieving app package info."

    invoke-virtual {v0, v2, v1}, Lu5/f;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method
