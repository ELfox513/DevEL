.class public final Lj1/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/android/billingclient/api/SkuDetails;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/android/billingclient/api/b;


# direct methods
.method public constructor <init>(Lcom/android/billingclient/api/b;Lcom/android/billingclient/api/SkuDetails;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lj1/j;->c:Lcom/android/billingclient/api/b;

    iput-object p2, p0, Lj1/j;->a:Lcom/android/billingclient/api/SkuDetails;

    iput-object p3, p0, Lj1/j;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lj1/j;->c:Lcom/android/billingclient/api/b;

    invoke-static {v0}, Lcom/android/billingclient/api/b;->z(Lcom/android/billingclient/api/b;)Lc5/c;

    move-result-object v1

    iget-object v0, p0, Lj1/j;->c:Lcom/android/billingclient/api/b;

    invoke-static {v0}, Lcom/android/billingclient/api/b;->l(Lcom/android/billingclient/api/b;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lj1/j;->a:Lcom/android/billingclient/api/SkuDetails;

    invoke-virtual {v0}, Lcom/android/billingclient/api/SkuDetails;->g()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lj1/j;->b:Ljava/lang/String;

    const/4 v2, 0x3

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Lc5/c;->k6(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
