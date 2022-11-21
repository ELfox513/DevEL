.class public Ld1/i;
.super Ld1/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld1/i$a;,
        Ld1/i$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ld1/d<",
        "Lb1/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final j:Ljava/lang/String;


# instance fields
.field public final g:Landroid/net/ConnectivityManager;

.field public h:Ld1/i$b;

.field public i:Ld1/i$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "NetworkStateTracker"

    invoke-static {v0}, Lw0/j;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ld1/i;->j:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Li1/a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ld1/d;-><init>(Landroid/content/Context;Li1/a;)V

    iget-object p1, p0, Ld1/d;->b:Landroid/content/Context;

    const-string p2, "connectivity"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Ld1/i;->g:Landroid/net/ConnectivityManager;

    invoke-static {}, Ld1/i;->j()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ld1/i$b;

    invoke-direct {p1, p0}, Ld1/i$b;-><init>(Ld1/i;)V

    iput-object p1, p0, Ld1/i;->h:Ld1/i$b;

    goto :goto_0

    :cond_0
    new-instance p1, Ld1/i$a;

    invoke-direct {p1, p0}, Ld1/i$a;-><init>(Ld1/i;)V

    iput-object p1, p0, Ld1/i;->i:Ld1/i$a;

    :goto_0
    return-void
.end method

.method public static j()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public bridge synthetic b()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ld1/i;->h()Lb1/b;

    move-result-object v0

    return-object v0
.end method

.method public e()V
    .locals 5

    invoke-static {}, Ld1/i;->j()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lw0/j;->c()Lw0/j;

    move-result-object v0

    sget-object v2, Ld1/i;->j:Ljava/lang/String;

    const-string v3, "Registering network callback"

    new-array v4, v1, [Ljava/lang/Throwable;

    invoke-virtual {v0, v2, v3, v4}, Lw0/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    iget-object v0, p0, Ld1/i;->g:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Ld1/i;->h:Ld1/i$b;

    invoke-static {v0, v2}, Ld1/h;->a(Landroid/net/ConnectivityManager;Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    invoke-static {}, Lw0/j;->c()Lw0/j;

    move-result-object v2

    sget-object v3, Ld1/i;->j:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Throwable;

    aput-object v0, v4, v1

    const-string v0, "Received exception while registering network callback"

    invoke-virtual {v2, v3, v0, v4}, Lw0/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    invoke-static {}, Lw0/j;->c()Lw0/j;

    move-result-object v0

    sget-object v2, Ld1/i;->j:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Throwable;

    const-string v3, "Registering broadcast receiver"

    invoke-virtual {v0, v2, v3, v1}, Lw0/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    iget-object v0, p0, Ld1/d;->b:Landroid/content/Context;

    iget-object v1, p0, Ld1/i;->i:Ld1/i$a;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_1
    return-void
.end method

.method public f()V
    .locals 5

    invoke-static {}, Ld1/i;->j()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lw0/j;->c()Lw0/j;

    move-result-object v0

    sget-object v2, Ld1/i;->j:Ljava/lang/String;

    const-string v3, "Unregistering network callback"

    new-array v4, v1, [Ljava/lang/Throwable;

    invoke-virtual {v0, v2, v3, v4}, Lw0/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    iget-object v0, p0, Ld1/i;->g:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Ld1/i;->h:Ld1/i$b;

    invoke-static {v0, v2}, Ld1/g;->a(Landroid/net/ConnectivityManager;Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    invoke-static {}, Lw0/j;->c()Lw0/j;

    move-result-object v2

    sget-object v3, Ld1/i;->j:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Throwable;

    aput-object v0, v4, v1

    const-string v0, "Received exception while unregistering network callback"

    invoke-virtual {v2, v3, v0, v4}, Lw0/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    invoke-static {}, Lw0/j;->c()Lw0/j;

    move-result-object v0

    sget-object v2, Ld1/i;->j:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Throwable;

    const-string v3, "Unregistering broadcast receiver"

    invoke-virtual {v0, v2, v3, v1}, Lw0/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    iget-object v0, p0, Ld1/d;->b:Landroid/content/Context;

    iget-object v1, p0, Ld1/i;->i:Ld1/i$a;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :goto_1
    return-void
.end method

.method public g()Lb1/b;
    .locals 6

    iget-object v0, p0, Ld1/i;->g:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p0}, Ld1/i;->i()Z

    move-result v4

    iget-object v5, p0, Ld1/i;->g:Landroid/net/ConnectivityManager;

    invoke-static {v5}, Ly/a;->a(Landroid/net/ConnectivityManager;)Z

    move-result v5

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    new-instance v0, Lb1/b;

    invoke-direct {v0, v3, v4, v5, v1}, Lb1/b;-><init>(ZZZZ)V

    return-object v0
.end method

.method public h()Lb1/b;
    .locals 1

    invoke-virtual {p0}, Ld1/i;->g()Lb1/b;

    move-result-object v0

    return-object v0
.end method

.method public i()Z
    .locals 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x17

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    :try_start_0
    iget-object v2, p0, Ld1/i;->g:Landroid/net/ConnectivityManager;

    invoke-static {v2}, Ld1/e;->a(Landroid/net/ConnectivityManager;)Landroid/net/Network;

    move-result-object v2

    iget-object v3, p0, Ld1/i;->g:Landroid/net/ConnectivityManager;

    invoke-static {v3, v2}, Ld1/f;->a(Landroid/net/ConnectivityManager;Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v2

    if-eqz v2, :cond_1

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :catch_0
    move-exception v2

    invoke-static {}, Lw0/j;->c()Lw0/j;

    move-result-object v3

    sget-object v4, Ld1/i;->j:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Throwable;

    aput-object v2, v0, v1

    const-string v2, "Unable to validate active network"

    invoke-virtual {v3, v4, v2, v0}, Lw0/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    return v1
.end method
