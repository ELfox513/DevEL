.class public final Lcom/android/billingclient/api/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/billingclient/api/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:Z

.field public d:Lj1/c;

.field public final synthetic k:Lcom/android/billingclient/api/b;


# direct methods
.method public constructor <init>(Lcom/android/billingclient/api/b;Lj1/c;)V
    .locals 0

    iput-object p1, p0, Lcom/android/billingclient/api/b$a;->k:Lcom/android/billingclient/api/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/b$a;->a:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/billingclient/api/b$a;->b:Z

    iput-object p2, p0, Lcom/android/billingclient/api/b$a;->d:Lj1/c;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/billingclient/api/b;Lj1/c;Lj1/u;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/billingclient/api/b$a;-><init>(Lcom/android/billingclient/api/b;Lj1/c;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/billingclient/api/b$a;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/billingclient/api/b$a;->a:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic c(Lcom/android/billingclient/api/b$a;Lcom/android/billingclient/api/c;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/billingclient/api/b$a;->d(Lcom/android/billingclient/api/c;)V

    return-void
.end method

.method public static synthetic e(Lcom/android/billingclient/api/b$a;)Lj1/c;
    .locals 0

    iget-object p0, p0, Lcom/android/billingclient/api/b$a;->d:Lj1/c;

    return-object p0
.end method

.method public static synthetic f(Lcom/android/billingclient/api/b$a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/billingclient/api/b$a;->b:Z

    return p0
.end method


# virtual methods
.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/android/billingclient/api/b$a;->a:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/android/billingclient/api/b$a;->d:Lj1/c;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/billingclient/api/b$a;->b:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final d(Lcom/android/billingclient/api/c;)V
    .locals 2

    iget-object v0, p0, Lcom/android/billingclient/api/b$a;->k:Lcom/android/billingclient/api/b;

    new-instance v1, Lcom/android/billingclient/api/h;

    invoke-direct {v1, p0, p1}, Lcom/android/billingclient/api/h;-><init>(Lcom/android/billingclient/api/b$a;Lcom/android/billingclient/api/c;)V

    invoke-static {v0, v1}, Lcom/android/billingclient/api/b;->u(Lcom/android/billingclient/api/b;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    const-string p1, "BillingClient"

    const-string v0, "Billing service connected."

    invoke-static {p1, v0}, Lc5/a;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/billingclient/api/b$a;->k:Lcom/android/billingclient/api/b;

    invoke-static {p2}, Lc5/b;->j0(Landroid/os/IBinder;)Lc5/c;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/billingclient/api/b;->m(Lcom/android/billingclient/api/b;Lc5/c;)Lc5/c;

    iget-object p1, p0, Lcom/android/billingclient/api/b$a;->k:Lcom/android/billingclient/api/b;

    new-instance p2, Lcom/android/billingclient/api/j;

    invoke-direct {p2, p0}, Lcom/android/billingclient/api/j;-><init>(Lcom/android/billingclient/api/b$a;)V

    new-instance v0, Lcom/android/billingclient/api/i;

    invoke-direct {v0, p0}, Lcom/android/billingclient/api/i;-><init>(Lcom/android/billingclient/api/b$a;)V

    const-wide/16 v1, 0x7530

    invoke-static {p1, p2, v1, v2, v0}, Lcom/android/billingclient/api/b;->r(Lcom/android/billingclient/api/b;Ljava/util/concurrent/Callable;JLjava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/billingclient/api/b$a;->k:Lcom/android/billingclient/api/b;

    invoke-static {p1}, Lcom/android/billingclient/api/b;->I(Lcom/android/billingclient/api/b;)Lcom/android/billingclient/api/c;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/billingclient/api/b$a;->d(Lcom/android/billingclient/api/c;)V

    :cond_0
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "BillingClient"

    const-string v0, "Billing service disconnected."

    invoke-static {p1, v0}, Lc5/a;->l(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/billingclient/api/b$a;->k:Lcom/android/billingclient/api/b;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/billingclient/api/b;->m(Lcom/android/billingclient/api/b;Lc5/c;)Lc5/c;

    iget-object p1, p0, Lcom/android/billingclient/api/b$a;->k:Lcom/android/billingclient/api/b;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/billingclient/api/b;->k(Lcom/android/billingclient/api/b;I)I

    iget-object p1, p0, Lcom/android/billingclient/api/b$a;->a:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/android/billingclient/api/b$a;->d:Lj1/c;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lj1/c;->onBillingServiceDisconnected()V

    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
