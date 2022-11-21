.class public Lx5/j$e$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj5/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx5/j$e$a;->a()Lj5/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lj5/h<",
        "Lf6/a;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/concurrent/Executor;

.field public final synthetic b:Lx5/j$e$a;


# direct methods
.method public constructor <init>(Lx5/j$e$a;Ljava/util/concurrent/Executor;)V
    .locals 0

    iput-object p1, p0, Lx5/j$e$a$a;->b:Lx5/j$e$a;

    iput-object p2, p0, Lx5/j$e$a$a;->a:Ljava/util/concurrent/Executor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Lj5/i;
    .locals 0

    check-cast p1, Lf6/a;

    invoke-virtual {p0, p1}, Lx5/j$e$a$a;->b(Lf6/a;)Lj5/i;

    move-result-object p1

    return-object p1
.end method

.method public b(Lf6/a;)Lj5/i;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf6/a;",
            ")",
            "Lj5/i<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    invoke-static {}, Lu5/f;->f()Lu5/f;

    move-result-object p1

    const-string v1, "Received null app settings at app startup. Cannot send cached reports"

    invoke-virtual {p1, v1}, Lu5/f;->k(Ljava/lang/String;)V

    invoke-static {v0}, Lj5/l;->d(Ljava/lang/Object;)Lj5/i;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p1, p0, Lx5/j$e$a$a;->b:Lx5/j$e$a;

    iget-object p1, p1, Lx5/j$e$a;->b:Lx5/j$e;

    iget-object p1, p1, Lx5/j$e;->b:Lx5/j;

    invoke-static {p1}, Lx5/j;->l(Lx5/j;)Lj5/i;

    iget-object p1, p0, Lx5/j$e$a$a;->b:Lx5/j$e$a;

    iget-object p1, p1, Lx5/j$e$a;->b:Lx5/j$e;

    iget-object p1, p1, Lx5/j$e;->b:Lx5/j;

    invoke-static {p1}, Lx5/j;->g(Lx5/j;)Lx5/e0;

    move-result-object p1

    iget-object v1, p0, Lx5/j$e$a$a;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, v1}, Lx5/e0;->t(Ljava/util/concurrent/Executor;)Lj5/i;

    iget-object p1, p0, Lx5/j$e$a$a;->b:Lx5/j$e$a;

    iget-object p1, p1, Lx5/j$e$a;->b:Lx5/j$e;

    iget-object p1, p1, Lx5/j$e;->b:Lx5/j;

    iget-object p1, p1, Lx5/j;->r:Lj5/j;

    invoke-virtual {p1, v0}, Lj5/j;->e(Ljava/lang/Object;)Z

    invoke-static {v0}, Lj5/l;->d(Ljava/lang/Object;)Lj5/i;

    move-result-object p1

    return-object p1
.end method
