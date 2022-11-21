.class public final Lr4/nu1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/t73;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/t73<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lr4/pu1;


# direct methods
.method public constructor <init>(Lr4/pu1;)V
    .locals 0

    iput-object p1, p0, Lr4/nu1;->a:Lr4/pu1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lr4/nu1;->a:Lr4/pu1;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lr4/pu1;->a(Lr4/pu1;Z)Z

    iget-object p1, p0, Lr4/nu1;->a:Lr4/pu1;

    const-string v0, "com.google.android.gms.ads.MobileAds"

    const/4 v1, 0x0

    const-string v2, "Internal Error."

    invoke-static {}, Lz2/t;->k()Lc4/f;

    move-result-object v3

    invoke-interface {v3}, Lc4/f;->b()J

    move-result-wide v3

    iget-object v5, p0, Lr4/nu1;->a:Lr4/pu1;

    invoke-static {v5}, Lr4/pu1;->b(Lr4/pu1;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    long-to-int v4, v3

    invoke-static {p1, v0, v1, v2, v4}, Lr4/pu1;->l(Lr4/pu1;Ljava/lang/String;ZLjava/lang/String;I)V

    iget-object p1, p0, Lr4/nu1;->a:Lr4/pu1;

    invoke-static {p1}, Lr4/pu1;->c(Lr4/pu1;)Lr4/vm0;

    move-result-object p1

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {p1, v0}, Lr4/vm0;->f(Ljava/lang/Throwable;)Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final bridge synthetic b(Ljava/lang/Object;)V
    .locals 8

    check-cast p1, Ljava/lang/String;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lr4/nu1;->a:Lr4/pu1;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lr4/pu1;->a(Lr4/pu1;Z)Z

    iget-object v0, p0, Lr4/nu1;->a:Lr4/pu1;

    const-string v2, "com.google.android.gms.ads.MobileAds"

    const-string v3, ""

    invoke-static {}, Lz2/t;->k()Lc4/f;

    move-result-object v4

    invoke-interface {v4}, Lc4/f;->b()J

    move-result-wide v4

    iget-object v6, p0, Lr4/nu1;->a:Lr4/pu1;

    invoke-static {v6}, Lr4/pu1;->b(Lr4/pu1;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    long-to-int v5, v4

    invoke-static {v0, v2, v1, v3, v5}, Lr4/pu1;->l(Lr4/pu1;Ljava/lang/String;ZLjava/lang/String;I)V

    iget-object v0, p0, Lr4/nu1;->a:Lr4/pu1;

    invoke-static {v0}, Lr4/pu1;->d(Lr4/pu1;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lr4/mu1;

    invoke-direct {v1, p0, p1}, Lr4/mu1;-><init>(Lr4/nu1;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
