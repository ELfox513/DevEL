.class Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj1/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling$3;->a:Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSkuDetailsResponse(Lcom/android/billingclient/api/c;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/c;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/SkuDetails;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/billingclient/api/c;->a()I

    move-result p1

    iget-object v0, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling$3;->a:Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;

    invoke-static {v0}, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->a(Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;)Lcom/badlogic/gdx/pay/PurchaseObserver;

    move-result-object v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "GdxPay/GoogleBilling"

    if-eqz p1, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSkuDetailsResponse failed, error code is "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Lcom/badlogic/gdx/Application;->error(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling$3;->a:Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;

    invoke-static {p2}, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->e(Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;)Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling$3;->a:Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;

    invoke-static {p2}, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->a(Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;)Lcom/badlogic/gdx/pay/PurchaseObserver;

    move-result-object p2

    new-instance v0, Lcom/badlogic/gdx/pay/FetchItemInformationException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/pay/FetchItemInformationException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v0}, Lcom/badlogic/gdx/pay/PurchaseObserver;->handleInstallError(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/billingclient/api/SkuDetails;

    iget-object v0, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling$3;->a:Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;

    invoke-static {v0}, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->g(Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/billingclient/api/SkuDetails;->g()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling$3;->a:Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;

    invoke-static {v2, p2}, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->f(Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;Lcom/android/billingclient/api/SkuDetails;)Lcom/badlogic/gdx/pay/Information;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling$3;->a:Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;

    invoke-static {v0}, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->h(Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/billingclient/api/SkuDetails;->g()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const-string p1, "skuDetailsList is null"

    invoke-interface {v0, v1, p1}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object p1, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling$3;->a:Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;

    invoke-static {p1}, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->i(Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;)V

    :cond_4
    :goto_1
    return-void
.end method
