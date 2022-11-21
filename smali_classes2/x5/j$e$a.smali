.class public Lx5/j$e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx5/j$e;->b(Ljava/lang/Boolean;)Lj5/i;
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
.field public final synthetic a:Ljava/lang/Boolean;

.field public final synthetic b:Lx5/j$e;


# direct methods
.method public constructor <init>(Lx5/j$e;Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lx5/j$e$a;->b:Lx5/j$e;

    iput-object p2, p0, Lx5/j$e$a;->a:Ljava/lang/Boolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lj5/i;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj5/i<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lx5/j$e$a;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lu5/f;->f()Lu5/f;

    move-result-object v0

    const-string v1, "Deleting cached crash reports..."

    invoke-virtual {v0, v1}, Lu5/f;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lx5/j$e$a;->b:Lx5/j$e;

    iget-object v0, v0, Lx5/j$e;->b:Lx5/j;

    invoke-virtual {v0}, Lx5/j;->L()[Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lx5/j;->m([Ljava/io/File;)V

    iget-object v0, p0, Lx5/j$e$a;->b:Lx5/j$e;

    iget-object v0, v0, Lx5/j$e;->b:Lx5/j;

    invoke-static {v0}, Lx5/j;->g(Lx5/j;)Lx5/e0;

    move-result-object v0

    invoke-virtual {v0}, Lx5/e0;->s()V

    iget-object v0, p0, Lx5/j$e$a;->b:Lx5/j$e;

    iget-object v0, v0, Lx5/j$e;->b:Lx5/j;

    iget-object v0, v0, Lx5/j;->r:Lj5/j;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lj5/j;->e(Ljava/lang/Object;)Z

    invoke-static {v1}, Lj5/l;->d(Ljava/lang/Object;)Lj5/i;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Lu5/f;->f()Lu5/f;

    move-result-object v0

    const-string v1, "Sending cached crash reports..."

    invoke-virtual {v0, v1}, Lu5/f;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lx5/j$e$a;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lx5/j$e$a;->b:Lx5/j$e;

    iget-object v1, v1, Lx5/j$e;->b:Lx5/j;

    invoke-static {v1}, Lx5/j;->j(Lx5/j;)Lx5/r;

    move-result-object v1

    invoke-virtual {v1, v0}, Lx5/r;->c(Z)V

    iget-object v0, p0, Lx5/j$e$a;->b:Lx5/j$e;

    iget-object v0, v0, Lx5/j$e;->b:Lx5/j;

    invoke-static {v0}, Lx5/j;->k(Lx5/j;)Lx5/h;

    move-result-object v0

    invoke-virtual {v0}, Lx5/h;->c()Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object v1, p0, Lx5/j$e$a;->b:Lx5/j$e;

    iget-object v1, v1, Lx5/j$e;->a:Lj5/i;

    new-instance v2, Lx5/j$e$a$a;

    invoke-direct {v2, p0, v0}, Lx5/j$e$a$a;-><init>(Lx5/j$e$a;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v1, v0, v2}, Lj5/i;->r(Ljava/util/concurrent/Executor;Lj5/h;)Lj5/i;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lx5/j$e$a;->a()Lj5/i;

    move-result-object v0

    return-object v0
.end method
