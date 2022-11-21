.class public final Lj5/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lj5/i;

.field public final synthetic b:Lj5/y;


# direct methods
.method public constructor <init>(Lj5/y;Lj5/i;)V
    .locals 0

    iput-object p1, p0, Lj5/x;->b:Lj5/y;

    iput-object p2, p0, Lj5/x;->a:Lj5/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lj5/x;->b:Lj5/y;

    invoke-static {v0}, Lj5/y;->c(Lj5/y;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lj5/x;->b:Lj5/y;

    invoke-static {v1}, Lj5/y;->d(Lj5/y;)Lj5/e;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lj5/x;->b:Lj5/y;

    invoke-static {v1}, Lj5/y;->d(Lj5/y;)Lj5/e;

    move-result-object v1

    iget-object v2, p0, Lj5/x;->a:Lj5/i;

    invoke-virtual {v2}, Lj5/i;->k()Ljava/lang/Exception;

    move-result-object v2

    invoke-static {v2}, Lx3/q;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Exception;

    invoke-interface {v1, v2}, Lj5/e;->e(Ljava/lang/Exception;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
