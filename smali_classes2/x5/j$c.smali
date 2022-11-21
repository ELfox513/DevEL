.class public Lx5/j$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx5/j;->I(Le6/e;Ljava/lang/Thread;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lj5/i<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Ljava/lang/Throwable;

.field public final synthetic c:Ljava/lang/Thread;

.field public final synthetic d:Le6/e;

.field public final synthetic e:Lx5/j;


# direct methods
.method public constructor <init>(Lx5/j;JLjava/lang/Throwable;Ljava/lang/Thread;Le6/e;)V
    .locals 0

    iput-object p1, p0, Lx5/j$c;->e:Lx5/j;

    iput-wide p2, p0, Lx5/j$c;->a:J

    iput-object p4, p0, Lx5/j$c;->b:Ljava/lang/Throwable;

    iput-object p5, p0, Lx5/j$c;->c:Ljava/lang/Thread;

    iput-object p6, p0, Lx5/j$c;->d:Le6/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lj5/i;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj5/i<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget-wide v0, p0, Lx5/j$c;->a:J

    invoke-static {v0, v1}, Lx5/j;->b(J)J

    move-result-wide v6

    iget-object v0, p0, Lx5/j$c;->e:Lx5/j;

    invoke-static {v0}, Lx5/j;->c(Lx5/j;)Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x0

    if-nez v5, :cond_0

    invoke-static {}, Lu5/f;->f()Lu5/f;

    move-result-object v1

    const-string v2, "Tried to write a fatal exception while no session was open."

    invoke-virtual {v1, v2}, Lu5/f;->d(Ljava/lang/String;)V

    invoke-static {v0}, Lj5/l;->d(Ljava/lang/Object;)Lj5/i;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v1, p0, Lx5/j$c;->e:Lx5/j;

    invoke-static {v1}, Lx5/j;->f(Lx5/j;)Lx5/m;

    move-result-object v1

    invoke-virtual {v1}, Lx5/m;->a()Z

    iget-object v1, p0, Lx5/j$c;->e:Lx5/j;

    invoke-static {v1}, Lx5/j;->g(Lx5/j;)Lx5/e0;

    move-result-object v2

    iget-object v3, p0, Lx5/j$c;->b:Ljava/lang/Throwable;

    iget-object v4, p0, Lx5/j$c;->c:Ljava/lang/Thread;

    invoke-virtual/range {v2 .. v7}, Lx5/e0;->r(Ljava/lang/Throwable;Ljava/lang/Thread;Ljava/lang/String;J)V

    iget-object v1, p0, Lx5/j$c;->e:Lx5/j;

    iget-wide v2, p0, Lx5/j$c;->a:J

    invoke-static {v1, v2, v3}, Lx5/j;->h(Lx5/j;J)V

    iget-object v1, p0, Lx5/j$c;->e:Lx5/j;

    iget-object v2, p0, Lx5/j$c;->d:Le6/e;

    invoke-virtual {v1, v2}, Lx5/j;->s(Le6/e;)V

    iget-object v1, p0, Lx5/j$c;->e:Lx5/j;

    invoke-static {v1}, Lx5/j;->i(Lx5/j;)V

    iget-object v1, p0, Lx5/j$c;->e:Lx5/j;

    invoke-static {v1}, Lx5/j;->j(Lx5/j;)Lx5/r;

    move-result-object v1

    invoke-virtual {v1}, Lx5/r;->d()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lj5/l;->d(Ljava/lang/Object;)Lj5/i;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lx5/j$c;->e:Lx5/j;

    invoke-static {v0}, Lx5/j;->k(Lx5/j;)Lx5/h;

    move-result-object v0

    invoke-virtual {v0}, Lx5/h;->c()Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object v1, p0, Lx5/j$c;->d:Le6/e;

    invoke-interface {v1}, Le6/e;->a()Lj5/i;

    move-result-object v1

    new-instance v2, Lx5/j$c$a;

    invoke-direct {v2, p0, v0}, Lx5/j$c$a;-><init>(Lx5/j$c;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v1, v0, v2}, Lj5/i;->r(Ljava/util/concurrent/Executor;Lj5/h;)Lj5/i;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lx5/j$c;->a()Lj5/i;

    move-result-object v0

    return-object v0
.end method
