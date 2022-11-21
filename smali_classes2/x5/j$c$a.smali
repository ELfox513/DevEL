.class public Lx5/j$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj5/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx5/j$c;->a()Lj5/i;
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

.field public final synthetic b:Lx5/j$c;


# direct methods
.method public constructor <init>(Lx5/j$c;Ljava/util/concurrent/Executor;)V
    .locals 0

    iput-object p1, p0, Lx5/j$c$a;->b:Lx5/j$c;

    iput-object p2, p0, Lx5/j$c$a;->a:Ljava/util/concurrent/Executor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Lj5/i;
    .locals 0

    check-cast p1, Lf6/a;

    invoke-virtual {p0, p1}, Lx5/j$c$a;->b(Lf6/a;)Lj5/i;

    move-result-object p1

    return-object p1
.end method

.method public b(Lf6/a;)Lj5/i;
    .locals 3
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

    if-nez p1, :cond_0

    invoke-static {}, Lu5/f;->f()Lu5/f;

    move-result-object p1

    const-string v0, "Received null app settings, cannot send reports at crash time."

    invoke-virtual {p1, v0}, Lu5/f;->k(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-static {p1}, Lj5/l;->d(Ljava/lang/Object;)Lj5/i;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x2

    new-array p1, p1, [Lj5/i;

    const/4 v0, 0x0

    iget-object v1, p0, Lx5/j$c$a;->b:Lx5/j$c;

    iget-object v1, v1, Lx5/j$c;->e:Lx5/j;

    invoke-static {v1}, Lx5/j;->l(Lx5/j;)Lj5/i;

    move-result-object v1

    aput-object v1, p1, v0

    const/4 v0, 0x1

    iget-object v1, p0, Lx5/j$c$a;->b:Lx5/j$c;

    iget-object v1, v1, Lx5/j$c;->e:Lx5/j;

    invoke-static {v1}, Lx5/j;->g(Lx5/j;)Lx5/e0;

    move-result-object v1

    iget-object v2, p0, Lx5/j$c$a;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {v1, v2}, Lx5/e0;->t(Ljava/util/concurrent/Executor;)Lj5/i;

    move-result-object v1

    aput-object v1, p1, v0

    invoke-static {p1}, Lj5/l;->f([Lj5/i;)Lj5/i;

    move-result-object p1

    return-object p1
.end method
