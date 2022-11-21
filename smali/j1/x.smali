.class public final Lj1/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lj1/a;

.field public final synthetic b:Lj1/b;

.field public final synthetic c:Lcom/android/billingclient/api/b;


# direct methods
.method public constructor <init>(Lcom/android/billingclient/api/b;Lj1/a;Lj1/b;)V
    .locals 0

    iput-object p1, p0, Lj1/x;->c:Lcom/android/billingclient/api/b;

    iput-object p2, p0, Lj1/x;->a:Lj1/a;

    iput-object p3, p0, Lj1/x;->b:Lj1/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Void;
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lj1/x;->c:Lcom/android/billingclient/api/b;

    invoke-static {v1}, Lcom/android/billingclient/api/b;->z(Lcom/android/billingclient/api/b;)Lc5/c;

    move-result-object v1

    const/16 v2, 0x9

    iget-object v3, p0, Lj1/x;->c:Lcom/android/billingclient/api/b;

    invoke-static {v3}, Lcom/android/billingclient/api/b;->l(Lcom/android/billingclient/api/b;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lj1/x;->a:Lj1/a;

    invoke-virtual {v4}, Lj1/a;->a()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lj1/x;->a:Lj1/a;

    iget-object v6, p0, Lj1/x;->c:Lcom/android/billingclient/api/b;

    invoke-static {v6}, Lcom/android/billingclient/api/b;->C(Lcom/android/billingclient/api/b;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lc5/a;->d(Lj1/a;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    invoke-interface {v1, v2, v3, v4, v5}, Lc5/c;->T6(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "BillingClient"

    invoke-static {v1, v2}, Lc5/a;->b(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v2}, Lc5/a;->k(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lj1/x;->c:Lcom/android/billingclient/api/b;

    new-instance v4, Lcom/android/billingclient/api/n;

    invoke-direct {v4, p0, v3, v1}, Lcom/android/billingclient/api/n;-><init>(Lj1/x;ILjava/lang/String;)V

    invoke-static {v2, v4}, Lcom/android/billingclient/api/b;->u(Lcom/android/billingclient/api/b;Ljava/lang/Runnable;)V

    return-object v0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lj1/x;->c:Lcom/android/billingclient/api/b;

    new-instance v3, Lj1/y;

    invoke-direct {v3, p0, v1}, Lj1/y;-><init>(Lj1/x;Ljava/lang/Exception;)V

    invoke-static {v2, v3}, Lcom/android/billingclient/api/b;->u(Lcom/android/billingclient/api/b;Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public final synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lj1/x;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
