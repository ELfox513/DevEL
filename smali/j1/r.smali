.class public final Lj1/r;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field public final a:Lj1/g;

.field public b:Z

.field public final synthetic c:Lj1/q;


# direct methods
.method public constructor <init>(Lj1/q;Lj1/g;)V
    .locals 0

    iput-object p1, p0, Lj1/r;->c:Lj1/q;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p2, p0, Lj1/r;->a:Lj1/g;

    return-void
.end method

.method public synthetic constructor <init>(Lj1/q;Lj1/g;Lj1/p;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lj1/r;-><init>(Lj1/q;Lj1/g;)V

    return-void
.end method

.method public static synthetic a(Lj1/r;)Lj1/g;
    .locals 0

    iget-object p0, p0, Lj1/r;->a:Lj1/g;

    return-object p0
.end method


# virtual methods
.method public final b(Landroid/content/Context;)V
    .locals 1

    iget-boolean v0, p0, Lj1/r;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj1/r;->c:Lj1/q;

    invoke-static {v0}, Lj1/q;->a(Lj1/q;)Lj1/r;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lj1/r;->b:Z

    return-void

    :cond_0
    const-string p1, "BillingBroadcastManager"

    const-string v0, "Receiver is not registered."

    invoke-static {p1, v0}, Lc5/a;->l(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final c(Landroid/content/Context;Landroid/content/IntentFilter;)V
    .locals 1

    iget-boolean v0, p0, Lj1/r;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lj1/r;->c:Lj1/q;

    invoke-static {v0}, Lj1/q;->a(Lj1/q;)Lj1/r;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lj1/r;->b:Z

    :cond_0
    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "BillingBroadcastManager"

    invoke-static {p2, p1}, Lc5/a;->j(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/billingclient/api/c;

    move-result-object p1

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-static {p2}, Lc5/a;->h(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object p2

    iget-object v0, p0, Lj1/r;->a:Lj1/g;

    invoke-interface {v0, p1, p2}, Lj1/g;->onPurchasesUpdated(Lcom/android/billingclient/api/c;Ljava/util/List;)V

    return-void
.end method
