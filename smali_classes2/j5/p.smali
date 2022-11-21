.class public final Lj5/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lj5/i;

.field public final synthetic b:Lj5/q;


# direct methods
.method public constructor <init>(Lj5/q;Lj5/i;)V
    .locals 0

    iput-object p1, p0, Lj5/p;->b:Lj5/q;

    iput-object p2, p0, Lj5/p;->a:Lj5/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lj5/p;->a:Lj5/i;

    invoke-virtual {v0}, Lj5/i;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj5/p;->b:Lj5/q;

    invoke-static {v0}, Lj5/q;->c(Lj5/q;)Lj5/i0;

    move-result-object v0

    invoke-virtual {v0}, Lj5/i0;->w()Z

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lj5/p;->b:Lj5/q;

    invoke-static {v0}, Lj5/q;->d(Lj5/q;)Lj5/a;

    move-result-object v0

    iget-object v1, p0, Lj5/p;->a:Lj5/i;

    invoke-interface {v0, v1}, Lj5/a;->a(Lj5/i;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lj5/g; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lj5/p;->b:Lj5/q;

    invoke-static {v1}, Lj5/q;->c(Lj5/q;)Lj5/i0;

    move-result-object v1

    invoke-virtual {v1, v0}, Lj5/i0;->s(Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lj5/p;->b:Lj5/q;

    invoke-static {v1}, Lj5/q;->c(Lj5/q;)Lj5/i0;

    move-result-object v1

    invoke-virtual {v1, v0}, Lj5/i0;->u(Ljava/lang/Exception;)V

    return-void

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Exception;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lj5/p;->b:Lj5/q;

    invoke-static {v1}, Lj5/q;->c(Lj5/q;)Lj5/i0;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    invoke-virtual {v1, v0}, Lj5/i0;->u(Ljava/lang/Exception;)V

    return-void

    :cond_1
    iget-object v1, p0, Lj5/p;->b:Lj5/q;

    invoke-static {v1}, Lj5/q;->c(Lj5/q;)Lj5/i0;

    move-result-object v1

    invoke-virtual {v1, v0}, Lj5/i0;->u(Ljava/lang/Exception;)V

    return-void
.end method
