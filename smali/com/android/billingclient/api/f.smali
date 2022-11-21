.class public final Lcom/android/billingclient/api/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/billingclient/api/SkuDetails$a;

.field public final synthetic b:Lcom/android/billingclient/api/g;


# direct methods
.method public constructor <init>(Lcom/android/billingclient/api/g;Lcom/android/billingclient/api/SkuDetails$a;)V
    .locals 0

    iput-object p1, p0, Lcom/android/billingclient/api/f;->b:Lcom/android/billingclient/api/g;

    iput-object p2, p0, Lcom/android/billingclient/api/f;->a:Lcom/android/billingclient/api/SkuDetails$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/billingclient/api/f;->b:Lcom/android/billingclient/api/g;

    iget-object v0, v0, Lcom/android/billingclient/api/g;->d:Lj1/h;

    invoke-static {}, Lcom/android/billingclient/api/c;->b()Lcom/android/billingclient/api/c$a;

    move-result-object v1

    iget-object v2, p0, Lcom/android/billingclient/api/f;->a:Lcom/android/billingclient/api/SkuDetails$a;

    invoke-virtual {v2}, Lcom/android/billingclient/api/SkuDetails$a;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/c$a;->c(I)Lcom/android/billingclient/api/c$a;

    move-result-object v1

    iget-object v2, p0, Lcom/android/billingclient/api/f;->a:Lcom/android/billingclient/api/SkuDetails$a;

    invoke-virtual {v2}, Lcom/android/billingclient/api/SkuDetails$a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/c$a;->b(Ljava/lang/String;)Lcom/android/billingclient/api/c$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/billingclient/api/c$a;->a()Lcom/android/billingclient/api/c;

    move-result-object v1

    iget-object v2, p0, Lcom/android/billingclient/api/f;->a:Lcom/android/billingclient/api/SkuDetails$a;

    invoke-virtual {v2}, Lcom/android/billingclient/api/SkuDetails$a;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lj1/h;->onSkuDetailsResponse(Lcom/android/billingclient/api/c;Ljava/util/List;)V

    return-void
.end method
