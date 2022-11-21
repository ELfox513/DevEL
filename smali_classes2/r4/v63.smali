.class public final Lr4/v63;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lr4/h83;

.field public final synthetic b:I

.field public final synthetic d:Lr4/x63;


# direct methods
.method public constructor <init>(Lr4/x63;Lr4/h83;I)V
    .locals 0

    iput-object p1, p0, Lr4/v63;->d:Lr4/x63;

    iput-object p2, p0, Lr4/v63;->a:Lr4/h83;

    iput p3, p0, Lr4/v63;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lr4/v63;->a:Lr4/h83;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lr4/v63;->d:Lr4/x63;

    invoke-static {v1, v0}, Lr4/x63;->S(Lr4/x63;Lr4/j33;)Lr4/j33;

    iget-object v1, p0, Lr4/v63;->d:Lr4/x63;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lr4/p63;->cancel(Z)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lr4/v63;->d:Lr4/x63;

    iget v2, p0, Lr4/v63;->b:I

    iget-object v3, p0, Lr4/v63;->a:Lr4/h83;

    invoke-static {v1, v2, v3}, Lr4/x63;->U(Lr4/x63;ILjava/util/concurrent/Future;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object v1, p0, Lr4/v63;->d:Lr4/x63;

    invoke-static {v1, v0}, Lr4/x63;->V(Lr4/x63;Lr4/j33;)V

    return-void

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lr4/v63;->d:Lr4/x63;

    invoke-static {v2, v0}, Lr4/x63;->V(Lr4/x63;Lr4/j33;)V

    throw v1
.end method
