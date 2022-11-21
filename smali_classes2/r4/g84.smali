.class public final Lr4/g84;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lr4/e84;

    invoke-direct {v0, p0, p1}, Lr4/e84;-><init>(Lr4/g84;Landroid/os/Handler;)V

    iput-object v0, p0, Lr4/g84;->a:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final a(Lr4/q84;Lr4/w84;Ljava/lang/Runnable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/q84<",
            "*>;",
            "Lr4/w84<",
            "*>;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Lr4/q84;->E()V

    const-string v0, "post-response"

    invoke-virtual {p1, v0}, Lr4/q84;->h(Ljava/lang/String;)V

    iget-object v0, p0, Lr4/g84;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lr4/f84;

    invoke-direct {v1, p1, p2, p3}, Lr4/f84;-><init>(Lr4/q84;Lr4/w84;Ljava/lang/Runnable;)V

    check-cast v0, Lr4/e84;

    iget-object p1, v0, Lr4/e84;->a:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final b(Lr4/q84;Lr4/z84;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/q84<",
            "*>;",
            "Lr4/z84;",
            ")V"
        }
    .end annotation

    const-string v0, "post-error"

    invoke-virtual {p1, v0}, Lr4/q84;->h(Ljava/lang/String;)V

    invoke-static {p2}, Lr4/w84;->b(Lr4/z84;)Lr4/w84;

    move-result-object p2

    iget-object v0, p0, Lr4/g84;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lr4/f84;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lr4/f84;-><init>(Lr4/q84;Lr4/w84;Ljava/lang/Runnable;)V

    check-cast v0, Lr4/e84;

    iget-object p1, v0, Lr4/e84;->a:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
