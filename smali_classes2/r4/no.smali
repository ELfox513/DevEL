.class public final Lr4/no;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx3/c$a;


# instance fields
.field public final synthetic a:Lr4/po;


# direct methods
.method public constructor <init>(Lr4/po;)V
    .locals 0

    iput-object p1, p0, Lr4/no;->a:Lr4/po;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final j0(I)V
    .locals 2

    iget-object p1, p0, Lr4/no;->a:Lr4/po;

    invoke-static {p1}, Lr4/po;->a(Lr4/po;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lr4/no;->a:Lr4/po;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/po;->k(Lr4/po;Lr4/vo;)Lr4/vo;

    iget-object v0, p0, Lr4/no;->a:Lr4/po;

    invoke-static {v0}, Lr4/po;->a(Lr4/po;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final o0(Landroid/os/Bundle;)V
    .locals 2

    iget-object p1, p0, Lr4/no;->a:Lr4/po;

    invoke-static {p1}, Lr4/po;->a(Lr4/po;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lr4/no;->a:Lr4/po;

    invoke-static {v0}, Lr4/po;->b(Lr4/po;)Lr4/so;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr4/no;->a:Lr4/po;

    invoke-static {v0}, Lr4/po;->b(Lr4/po;)Lr4/so;

    move-result-object v1

    invoke-virtual {v1}, Lr4/so;->i0()Lr4/vo;

    move-result-object v1

    invoke-static {v0, v1}, Lr4/po;->k(Lr4/po;Lr4/vo;)Lr4/vo;
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "Unable to obtain a cache service instance."

    invoke-static {v1, v0}, Lr4/cm0;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lr4/no;->a:Lr4/po;

    invoke-static {v0}, Lr4/po;->j(Lr4/po;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lr4/no;->a:Lr4/po;

    invoke-static {v0}, Lr4/po;->a(Lr4/po;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
