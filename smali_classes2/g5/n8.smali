.class public final Lg5/n8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic k:Lg5/pa;

.field public final synthetic p:Lg5/w8;


# direct methods
.method public constructor <init>(Lg5/w8;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lg5/pa;)V
    .locals 0

    iput-object p1, p0, Lg5/n8;->p:Lg5/w8;

    iput-object p2, p0, Lg5/n8;->a:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p4, p0, Lg5/n8;->b:Ljava/lang/String;

    iput-object p5, p0, Lg5/n8;->d:Ljava/lang/String;

    iput-object p6, p0, Lg5/n8;->k:Lg5/pa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lg5/n8;->a:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lg5/n8;->p:Lg5/w8;

    invoke-static {v2}, Lg5/w8;->C(Lg5/w8;)Lg5/g3;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lg5/n8;->p:Lg5/w8;

    iget-object v2, v2, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v2}, Lg5/b5;->F()Lg5/q3;

    move-result-object v2

    invoke-virtual {v2}, Lg5/q3;->m()Lg5/o3;

    move-result-object v2

    const-string v3, "(legacy) Failed to get conditional properties; not connected to service"

    iget-object v4, p0, Lg5/n8;->b:Ljava/lang/String;

    iget-object v5, p0, Lg5/n8;->d:Ljava/lang/String;

    invoke-virtual {v2, v3, v1, v4, v5}, Lg5/o3;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, p0, Lg5/n8;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lg5/n8;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :cond_0
    :try_start_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lg5/n8;->k:Lg5/pa;

    invoke-static {v3}, Lx3/q;->j(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lg5/n8;->a:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v4, p0, Lg5/n8;->b:Ljava/lang/String;

    iget-object v5, p0, Lg5/n8;->d:Ljava/lang/String;

    iget-object v6, p0, Lg5/n8;->k:Lg5/pa;

    invoke-interface {v2, v4, v5, v6}, Lg5/g3;->Y5(Ljava/lang/String;Ljava/lang/String;Lg5/pa;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lg5/n8;->a:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v4, p0, Lg5/n8;->b:Ljava/lang/String;

    iget-object v5, p0, Lg5/n8;->d:Ljava/lang/String;

    invoke-interface {v2, v1, v4, v5}, Lg5/g3;->p2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :goto_0
    iget-object v2, p0, Lg5/n8;->p:Lg5/w8;

    invoke-static {v2}, Lg5/w8;->K(Lg5/w8;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v1, p0, Lg5/n8;->a:Ljava/util/concurrent/atomic/AtomicReference;

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_3

    :catch_0
    move-exception v2

    :try_start_4
    iget-object v3, p0, Lg5/n8;->p:Lg5/w8;

    iget-object v3, v3, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v3}, Lg5/b5;->F()Lg5/q3;

    move-result-object v3

    invoke-virtual {v3}, Lg5/q3;->m()Lg5/o3;

    move-result-object v3

    const-string v4, "(legacy) Failed to get conditional properties; remote exception"

    iget-object v5, p0, Lg5/n8;->b:Ljava/lang/String;

    invoke-virtual {v3, v4, v1, v5, v2}, Lg5/o3;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Lg5/n8;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object v1, p0, Lg5/n8;->a:Ljava/util/concurrent/atomic/AtomicReference;

    goto :goto_1

    :goto_2
    monitor-exit v0

    return-void

    :goto_3
    iget-object v2, p0, Lg5/n8;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    throw v1

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_5

    :goto_4
    throw v1

    :goto_5
    goto :goto_4
.end method
