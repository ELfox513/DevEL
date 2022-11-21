.class public final Lj1/f0;
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
.field public final synthetic a:Lj1/d;

.field public final synthetic b:Lcom/android/billingclient/api/SkuDetails;

.field public final synthetic c:Lcom/android/billingclient/api/b;


# direct methods
.method public constructor <init>(Lcom/android/billingclient/api/b;Lj1/d;Lcom/android/billingclient/api/SkuDetails;)V
    .locals 0

    iput-object p1, p0, Lj1/f0;->c:Lcom/android/billingclient/api/b;

    iput-object p2, p0, Lj1/f0;->a:Lj1/d;

    iput-object p3, p0, Lj1/f0;->b:Lcom/android/billingclient/api/SkuDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lj1/f0;->c:Lcom/android/billingclient/api/b;

    invoke-static {v0}, Lcom/android/billingclient/api/b;->z(Lcom/android/billingclient/api/b;)Lc5/c;

    move-result-object v1

    iget-object v0, p0, Lj1/f0;->c:Lcom/android/billingclient/api/b;

    invoke-static {v0}, Lcom/android/billingclient/api/b;->l(Lcom/android/billingclient/api/b;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iget-object v2, p0, Lj1/f0;->a:Lj1/d;

    invoke-virtual {v2}, Lj1/d;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v0, v4

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    iget-object v0, p0, Lj1/f0;->b:Lcom/android/billingclient/api/SkuDetails;

    invoke-virtual {v0}, Lcom/android/billingclient/api/SkuDetails;->g()Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x5

    const-string v6, "subs"

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lc5/c;->K2(ILjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
