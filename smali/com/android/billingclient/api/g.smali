.class public final Lcom/android/billingclient/api/g;
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
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lj1/h;

.field public final synthetic e:Lcom/android/billingclient/api/b;


# direct methods
.method public constructor <init>(Lcom/android/billingclient/api/b;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lj1/h;)V
    .locals 0

    iput-object p1, p0, Lcom/android/billingclient/api/g;->e:Lcom/android/billingclient/api/b;

    iput-object p2, p0, Lcom/android/billingclient/api/g;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/billingclient/api/g;->b:Ljava/util/List;

    iput-object p4, p0, Lcom/android/billingclient/api/g;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/billingclient/api/g;->d:Lj1/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/android/billingclient/api/g;->e:Lcom/android/billingclient/api/b;

    iget-object v1, p0, Lcom/android/billingclient/api/g;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/billingclient/api/g;->b:Ljava/util/List;

    iget-object v3, p0, Lcom/android/billingclient/api/g;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/billingclient/api/b;->p(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/android/billingclient/api/SkuDetails$a;

    move-result-object v0

    iget-object v1, p0, Lcom/android/billingclient/api/g;->e:Lcom/android/billingclient/api/b;

    new-instance v2, Lcom/android/billingclient/api/f;

    invoke-direct {v2, p0, v0}, Lcom/android/billingclient/api/f;-><init>(Lcom/android/billingclient/api/g;Lcom/android/billingclient/api/SkuDetails$a;)V

    invoke-static {v1, v2}, Lcom/android/billingclient/api/b;->u(Lcom/android/billingclient/api/b;Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    return-object v0
.end method
