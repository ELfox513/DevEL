.class public Lx0/j$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx0/j;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lh1/d;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic d:Lx0/j;


# direct methods
.method public constructor <init>(Lx0/j;Lh1/d;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lx0/j$b;->d:Lx0/j;

    iput-object p2, p0, Lx0/j$b;->a:Lh1/d;

    iput-object p3, p0, Lx0/j$b;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SyntheticAccessor"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lx0/j$b;->a:Lh1/d;

    invoke-virtual {v2}, Lh1/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/work/ListenableWorker$a;

    if-nez v2, :cond_0

    invoke-static {}, Lw0/j;->c()Lw0/j;

    move-result-object v2

    sget-object v3, Lx0/j;->E:Ljava/lang/String;

    const-string v4, "%s returned a null result. Treating it as a failure."

    new-array v5, v0, [Ljava/lang/Object;

    iget-object v6, p0, Lx0/j$b;->d:Lx0/j;

    iget-object v6, v6, Lx0/j;->p:Lf1/p;

    iget-object v6, v6, Lf1/p;->c:Ljava/lang/String;

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Throwable;

    invoke-virtual {v2, v3, v4, v5}, Lw0/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    invoke-static {}, Lw0/j;->c()Lw0/j;

    move-result-object v3

    sget-object v4, Lx0/j;->E:Ljava/lang/String;

    const-string v5, "%s returned a %s result."

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lx0/j$b;->d:Lx0/j;

    iget-object v7, v7, Lx0/j;->p:Lf1/p;

    iget-object v7, v7, Lf1/p;->c:Ljava/lang/String;

    aput-object v7, v6, v1

    aput-object v2, v6, v0

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/Throwable;

    invoke-virtual {v3, v4, v5, v6}, Lw0/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    iget-object v3, p0, Lx0/j$b;->d:Lx0/j;

    iput-object v2, v3, Lx0/j;->s:Landroidx/work/ListenableWorker$a;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    :goto_0
    :try_start_1
    invoke-static {}, Lw0/j;->c()Lw0/j;

    move-result-object v3

    sget-object v4, Lx0/j;->E:Ljava/lang/String;

    const-string v5, "%s failed because it threw an exception/error"

    new-array v6, v0, [Ljava/lang/Object;

    iget-object v7, p0, Lx0/j$b;->b:Ljava/lang/String;

    aput-object v7, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v0, v0, [Ljava/lang/Throwable;

    aput-object v2, v0, v1

    invoke-virtual {v3, v4, v5, v0}, Lw0/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_2
    move-exception v2

    invoke-static {}, Lw0/j;->c()Lw0/j;

    move-result-object v3

    sget-object v4, Lx0/j;->E:Ljava/lang/String;

    const-string v5, "%s was cancelled"

    new-array v6, v0, [Ljava/lang/Object;

    iget-object v7, p0, Lx0/j$b;->b:Ljava/lang/String;

    aput-object v7, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v0, v0, [Ljava/lang/Throwable;

    aput-object v2, v0, v1

    invoke-virtual {v3, v4, v5, v0}, Lw0/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    iget-object v0, p0, Lx0/j$b;->d:Lx0/j;

    invoke-virtual {v0}, Lx0/j;->f()V

    return-void

    :goto_2
    iget-object v1, p0, Lx0/j$b;->d:Lx0/j;

    invoke-virtual {v1}, Lx0/j;->f()V

    throw v0
.end method
