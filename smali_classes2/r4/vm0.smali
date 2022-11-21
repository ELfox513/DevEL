.class public Lr4/vm0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/h83;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lr4/h83<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lr4/p83;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/p83<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lr4/p83;->E()Lr4/p83;

    move-result-object v0

    iput-object v0, p0, Lr4/vm0;->a:Lr4/p83;

    return-void
.end method

.method public static final b(Z)Z
    .locals 3

    if-nez p0, :cond_0

    invoke-static {}, Lz2/t;->h()Lr4/nl0;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Provided SettableFuture with multiple values."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const-string v2, "SettableFuture"

    invoke-virtual {v0, v1, v2}, Lr4/nl0;->l(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_0
    return p0
.end method


# virtual methods
.method public final c(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 1

    iget-object v0, p0, Lr4/vm0;->a:Lr4/p83;

    invoke-virtual {v0, p1, p2}, Lr4/p63;->c(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public cancel(Z)Z
    .locals 1

    iget-object v0, p0, Lr4/vm0;->a:Lr4/p83;

    invoke-virtual {v0, p1}, Lr4/p63;->cancel(Z)Z

    move-result p1

    return p1
.end method

.method public final e(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lr4/vm0;->a:Lr4/p83;

    invoke-virtual {v0, p1}, Lr4/p83;->u(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Lr4/vm0;->b(Z)Z

    return p1
.end method

.method public final f(Ljava/lang/Throwable;)Z
    .locals 1

    iget-object v0, p0, Lr4/vm0;->a:Lr4/p83;

    invoke-virtual {v0, p1}, Lr4/p83;->v(Ljava/lang/Throwable;)Z

    move-result p1

    invoke-static {p1}, Lr4/vm0;->b(Z)Z

    return p1
.end method

.method public final get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lr4/vm0;->a:Lr4/p83;

    invoke-virtual {v0}, Lr4/p63;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lr4/vm0;->a:Lr4/p83;

    invoke-virtual {v0, p1, p2, p3}, Lr4/p63;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final isCancelled()Z
    .locals 1

    iget-object v0, p0, Lr4/vm0;->a:Lr4/p83;

    invoke-virtual {v0}, Lr4/p63;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public final isDone()Z
    .locals 1

    iget-object v0, p0, Lr4/vm0;->a:Lr4/p83;

    invoke-virtual {v0}, Lr4/p63;->isDone()Z

    move-result v0

    return v0
.end method
