.class public final Lr4/d90;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lr4/o90;

.field public final synthetic b:Lr4/j80;

.field public final synthetic d:Lr4/p90;


# direct methods
.method public constructor <init>(Lr4/p90;Lr4/o90;Lr4/j80;)V
    .locals 0

    iput-object p1, p0, Lr4/d90;->d:Lr4/p90;

    iput-object p2, p0, Lr4/d90;->a:Lr4/o90;

    iput-object p3, p0, Lr4/d90;->b:Lr4/j80;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lr4/d90;->d:Lr4/p90;

    invoke-static {v0}, Lr4/p90;->a(Lr4/p90;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lr4/d90;->a:Lr4/o90;

    invoke-virtual {v1}, Lr4/cn0;->e()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lr4/d90;->a:Lr4/o90;

    invoke-virtual {v1}, Lr4/cn0;->e()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lr4/d90;->a:Lr4/o90;

    invoke-virtual {v1}, Lr4/cn0;->d()V

    sget-object v1, Lr4/qm0;->e:Lr4/i83;

    iget-object v2, p0, Lr4/d90;->b:Lr4/j80;

    invoke-static {v2}, Lr4/c90;->a(Lr4/j80;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const-string v1, "Could not receive loaded message in a timely manner. Rejecting."

    invoke-static {v1}, Lb3/w1;->k(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
