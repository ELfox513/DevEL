.class public final Lj1/g0;
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
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/billingclient/api/SkuDetails;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lj1/d;

.field public final synthetic e:Landroid/os/Bundle;

.field public final synthetic f:Lcom/android/billingclient/api/b;


# direct methods
.method public constructor <init>(Lcom/android/billingclient/api/b;ILcom/android/billingclient/api/SkuDetails;Ljava/lang/String;Lj1/d;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lj1/g0;->f:Lcom/android/billingclient/api/b;

    iput p2, p0, Lj1/g0;->a:I

    iput-object p3, p0, Lj1/g0;->b:Lcom/android/billingclient/api/SkuDetails;

    iput-object p4, p0, Lj1/g0;->c:Ljava/lang/String;

    iput-object p5, p0, Lj1/g0;->d:Lj1/d;

    iput-object p6, p0, Lj1/g0;->e:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lj1/g0;->f:Lcom/android/billingclient/api/b;

    invoke-static {v0}, Lcom/android/billingclient/api/b;->z(Lcom/android/billingclient/api/b;)Lc5/c;

    move-result-object v1

    iget v2, p0, Lj1/g0;->a:I

    iget-object v0, p0, Lj1/g0;->f:Lcom/android/billingclient/api/b;

    invoke-static {v0}, Lcom/android/billingclient/api/b;->l(Lcom/android/billingclient/api/b;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lj1/g0;->b:Lcom/android/billingclient/api/SkuDetails;

    invoke-virtual {v0}, Lcom/android/billingclient/api/SkuDetails;->g()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lj1/g0;->c:Ljava/lang/String;

    iget-object v7, p0, Lj1/g0;->e:Landroid/os/Bundle;

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v7}, Lc5/c;->d7(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
