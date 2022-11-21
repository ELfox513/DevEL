.class public final Lj5/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lj5/i;

.field public final synthetic b:Lj5/s;


# direct methods
.method public constructor <init>(Lj5/s;Lj5/i;)V
    .locals 0

    iput-object p1, p0, Lj5/r;->b:Lj5/s;

    iput-object p2, p0, Lj5/r;->a:Lj5/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lj5/r;->b:Lj5/s;

    invoke-static {v0}, Lj5/s;->f(Lj5/s;)Lj5/a;

    move-result-object v0

    iget-object v1, p0, Lj5/r;->a:Lj5/i;

    invoke-interface {v0, v1}, Lj5/a;->a(Lj5/i;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj5/i;
    :try_end_0
    .catch Lj5/g; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    iget-object v0, p0, Lj5/r;->b:Lj5/s;

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Continuation returned null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lj5/s;->e(Ljava/lang/Exception;)V

    return-void

    :cond_0
    sget-object v1, Lj5/k;->b:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lj5/r;->b:Lj5/s;

    invoke-virtual {v0, v1, v2}, Lj5/i;->f(Ljava/util/concurrent/Executor;Lj5/f;)Lj5/i;

    iget-object v2, p0, Lj5/r;->b:Lj5/s;

    invoke-virtual {v0, v1, v2}, Lj5/i;->e(Ljava/util/concurrent/Executor;Lj5/e;)Lj5/i;

    iget-object v2, p0, Lj5/r;->b:Lj5/s;

    invoke-virtual {v0, v1, v2}, Lj5/i;->a(Ljava/util/concurrent/Executor;Lj5/c;)Lj5/i;

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lj5/r;->b:Lj5/s;

    invoke-static {v1}, Lj5/s;->g(Lj5/s;)Lj5/i0;

    move-result-object v1

    invoke-virtual {v1, v0}, Lj5/i0;->u(Ljava/lang/Exception;)V

    return-void

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Exception;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lj5/r;->b:Lj5/s;

    invoke-static {v1}, Lj5/s;->g(Lj5/s;)Lj5/i0;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    invoke-virtual {v1, v0}, Lj5/i0;->u(Ljava/lang/Exception;)V

    return-void

    :cond_1
    iget-object v1, p0, Lj5/r;->b:Lj5/s;

    invoke-static {v1}, Lj5/s;->g(Lj5/s;)Lj5/i0;

    move-result-object v1

    invoke-virtual {v1, v0}, Lj5/i0;->u(Ljava/lang/Exception;)V

    return-void
.end method
