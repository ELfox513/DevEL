.class public final Lr4/w;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lr4/x;


# direct methods
.method public constructor <init>(Lr4/x;)V
    .locals 0

    iput-object p1, p0, Lr4/w;->a:Lr4/x;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 1

    const-class p1, Lr4/x;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lr4/w;->a:Lr4/x;

    invoke-static {v0, p2}, Lr4/x;->a(Lr4/x;Landroid/net/NetworkCapabilities;)Landroid/net/NetworkCapabilities;

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public final onLost(Landroid/net/Network;)V
    .locals 2

    const-class p1, Lr4/x;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lr4/w;->a:Lr4/x;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/x;->a(Lr4/x;Landroid/net/NetworkCapabilities;)Landroid/net/NetworkCapabilities;

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
