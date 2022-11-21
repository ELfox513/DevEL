.class public Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/pay/PurchaseManager;
.implements Lj1/g;


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/pay/Information;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Landroid/app/Activity;

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/billingclient/api/SkuDetails;",
            ">;"
        }
    .end annotation
.end field

.field public d:Z

.field public e:Z

.field public f:Lcom/android/billingclient/api/a;

.field public g:Lcom/badlogic/gdx/pay/PurchaseObserver;

.field public h:Lcom/badlogic/gdx/pay/PurchaseManagerConfig;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->c:Ljava/util/Map;

    iput-object p1, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->b:Landroid/app/Activity;

    invoke-static {p1}, Lcom/android/billingclient/api/a;->f(Landroid/content/Context;)Lcom/android/billingclient/api/a$a;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/billingclient/api/a$a;->c(Lj1/g;)Lcom/android/billingclient/api/a$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/billingclient/api/a$a;->b()Lcom/android/billingclient/api/a$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/billingclient/api/a$a;->a()Lcom/android/billingclient/api/a;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->f:Lcom/android/billingclient/api/a;

    return-void
.end method

.method public static synthetic a(Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;)Lcom/badlogic/gdx/pay/PurchaseObserver;
    .locals 0

    iget-object p0, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->g:Lcom/badlogic/gdx/pay/PurchaseObserver;

    return-object p0
.end method

.method public static synthetic b(Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->d:Z

    return p0
.end method

.method public static synthetic c(Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->d:Z

    return p1
.end method

.method public static synthetic d(Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;)V
    .locals 0

    invoke-virtual {p0}, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->l()V

    return-void
.end method

.method public static synthetic e(Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->e:Z

    return p0
.end method

.method public static synthetic f(Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;Lcom/android/billingclient/api/SkuDetails;)Lcom/badlogic/gdx/pay/Information;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->j(Lcom/android/billingclient/api/SkuDetails;)Lcom/badlogic/gdx/pay/Information;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->a:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic h(Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->c:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic i(Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;)V
    .locals 0

    invoke-virtual {p0}, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->p()V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 4

    iget-object v0, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->g:Lcom/badlogic/gdx/pay/PurchaseObserver;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->g:Lcom/badlogic/gdx/pay/PurchaseObserver;

    iput-object v1, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->h:Lcom/badlogic/gdx/pay/PurchaseManagerConfig;

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v2, "GdxPay/GoogleBilling"

    const-string v3, "disposed observer and config"

    invoke-interface {v0, v2, v3}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->f:Lcom/android/billingclient/api/a;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/billingclient/api/a;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->f:Lcom/android/billingclient/api/a;

    invoke-virtual {v0}, Lcom/android/billingclient/api/a;->c()V

    iput-object v1, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->f:Lcom/android/billingclient/api/a;

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->e:Z

    return-void
.end method

.method public getBillingFlowParams(Lcom/android/billingclient/api/SkuDetails;)Lj1/d$a;
    .locals 1

    invoke-static {}, Lj1/d;->e()Lj1/d$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lj1/d$a;->b(Lcom/android/billingclient/api/SkuDetails;)Lj1/d$a;

    move-result-object p1

    return-object p1
.end method

.method public getInformation(Ljava/lang/String;)Lcom/badlogic/gdx/pay/Information;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/pay/Information;

    if-nez p1, :cond_0

    sget-object p1, Lcom/badlogic/gdx/pay/Information;->UNAVAILABLE:Lcom/badlogic/gdx/pay/Information;

    :cond_0
    return-object p1
.end method

.method public install(Lcom/badlogic/gdx/pay/PurchaseObserver;Lcom/badlogic/gdx/pay/PurchaseManagerConfig;Z)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->g:Lcom/badlogic/gdx/pay/PurchaseObserver;

    iput-object p2, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->h:Lcom/badlogic/gdx/pay/PurchaseManagerConfig;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->e:Z

    new-instance p1, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling$1;

    invoke-direct {p1, p0}, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling$1;-><init>(Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;)V

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->q(Ljava/lang/Runnable;)V

    return-void
.end method

.method public installed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->e:Z

    return v0
.end method

.method public final j(Lcom/android/billingclient/api/SkuDetails;)Lcom/badlogic/gdx/pay/Information;
    .locals 5

    invoke-virtual {p1}, Lcom/android/billingclient/api/SkuDetails;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/badlogic/gdx/pay/Information;->newBuilder()Lcom/badlogic/gdx/pay/Information$Builder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/billingclient/api/SkuDetails;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/pay/Information$Builder;->localName(Ljava/lang/String;)Lcom/badlogic/gdx/pay/Information$Builder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/billingclient/api/SkuDetails;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->k(Ljava/lang/String;)Lcom/badlogic/gdx/pay/FreeTrialPeriod;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/pay/Information$Builder;->freeTrialPeriod(Lcom/badlogic/gdx/pay/FreeTrialPeriod;)Lcom/badlogic/gdx/pay/Information$Builder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/billingclient/api/SkuDetails;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/pay/Information$Builder;->localDescription(Ljava/lang/String;)Lcom/badlogic/gdx/pay/Information$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/pay/Information$Builder;->localPricing(Ljava/lang/String;)Lcom/badlogic/gdx/pay/Information$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/billingclient/api/SkuDetails;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/pay/Information$Builder;->priceCurrencyCode(Ljava/lang/String;)Lcom/badlogic/gdx/pay/Information$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/billingclient/api/SkuDetails;->e()J

    move-result-wide v1

    const-wide/16 v3, 0x2710

    div-long/2addr v1, v3

    long-to-int v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/pay/Information$Builder;->priceInCents(Ljava/lang/Integer;)Lcom/badlogic/gdx/pay/Information$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/billingclient/api/SkuDetails;->e()J

    move-result-wide v1

    long-to-double v1, v1

    const-wide v3, 0x412e848000000000L    # 1000000.0

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/pay/Information$Builder;->priceAsDouble(Ljava/lang/Double;)Lcom/badlogic/gdx/pay/Information$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/pay/Information$Builder;->build()Lcom/badlogic/gdx/pay/Information;

    move-result-object p1

    return-object p1
.end method

.method public final k(Ljava/lang/String;)Lcom/badlogic/gdx/pay/FreeTrialPeriod;
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/badlogic/gdx/pay/android/googlebilling/Iso8601DurationStringToFreeTrialPeriodConverter;->convertToFreeTrialPeriod(Ljava/lang/String;)Lcom/badlogic/gdx/pay/FreeTrialPeriod;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v1

    sget-object v2, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to parse iso8601Duration: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "GdxPay/GoogleBilling"

    invoke-interface {v2, v3, p1, v1}, Lcom/badlogic/gdx/Application;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public final l()V
    .locals 5

    iget-object v0, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->h:Lcom/badlogic/gdx/pay/PurchaseManagerConfig;

    invoke-virtual {v0}, Lcom/badlogic/gdx/pay/PurchaseManagerConfig;->getOfferCount()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->h:Lcom/badlogic/gdx/pay/PurchaseManagerConfig;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/pay/PurchaseManagerConfig;->getOffer(I)Lcom/badlogic/gdx/pay/Offer;

    move-result-object v3

    invoke-virtual {p0}, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->storeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/pay/Offer;->getIdentifierForStore(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "GdxPay/GoogleBilling"

    const-string v2, "No skus configured"

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->p()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->f:Lcom/android/billingclient/api/a;

    invoke-static {}, Lcom/android/billingclient/api/d;->c()Lcom/android/billingclient/api/d$a;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/billingclient/api/d$a;->b(Ljava/util/List;)Lcom/android/billingclient/api/d$a;

    move-result-object v1

    invoke-virtual {p0}, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/d$a;->c(Ljava/lang/String;)Lcom/android/billingclient/api/d$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/billingclient/api/d$a;->a()Lcom/android/billingclient/api/d;

    move-result-object v1

    new-instance v2, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling$3;

    invoke-direct {v2, p0}, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling$3;-><init>(Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/billingclient/api/a;->h(Lcom/android/billingclient/api/d;Lj1/h;)V

    return-void
.end method

.method public final m()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->h:Lcom/badlogic/gdx/pay/PurchaseManagerConfig;

    invoke-virtual {v2}, Lcom/badlogic/gdx/pay/PurchaseManagerConfig;->getOfferCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->h:Lcom/badlogic/gdx/pay/PurchaseManagerConfig;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/pay/PurchaseManagerConfig;->getOffer(I)Lcom/badlogic/gdx/pay/Offer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/pay/Offer;->getType()Lcom/badlogic/gdx/pay/OfferType;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->o(Lcom/badlogic/gdx/pay/OfferType;)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot support OfferType Subscription and other types in the same app"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    move-object v0, v2

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public final n(Ljava/util/List;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;Z)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/billingclient/api/Purchase;

    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase;->c()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    new-instance v2, Lcom/badlogic/gdx/pay/Transaction;

    invoke-direct {v2}, Lcom/badlogic/gdx/pay/Transaction;-><init>()V

    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/pay/Transaction;->setIdentifier(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/pay/Transaction;->setOrderId(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/pay/Transaction;->setRequestId(Ljava/lang/String;)V

    const-string v4, "GooglePlay"

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/pay/Transaction;->setStoreName(Ljava/lang/String;)V

    new-instance v4, Ljava/util/Date;

    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase;->d()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/pay/Transaction;->setPurchaseTime(Ljava/util/Date;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Purchased: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/pay/Transaction;->setPurchaseText(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/pay/Transaction;->setReversalTime(Ljava/util/Date;)V

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/pay/Transaction;->setReversalText(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/pay/Transaction;->setTransactionData(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/pay/Transaction;->setTransactionDataSignature(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->g:Lcom/badlogic/gdx/pay/PurchaseObserver;

    invoke-interface {v4, v2}, Lcom/badlogic/gdx/pay/PurchaseObserver;->handlePurchase(Lcom/badlogic/gdx/pay/Transaction;)V

    :goto_1
    iget-object v2, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->h:Lcom/badlogic/gdx/pay/PurchaseManagerConfig;

    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/pay/PurchaseManagerConfig;->getOffer(Ljava/lang/String;)Lcom/badlogic/gdx/pay/Offer;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v4, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling$6;->a:[I

    invoke-virtual {v2}, Lcom/badlogic/gdx/pay/Offer;->getType()Lcom/badlogic/gdx/pay/OfferType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v4, v2

    if-eq v2, v3, :cond_3

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase;->h()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->f:Lcom/android/billingclient/api/a;

    invoke-static {}, Lj1/a;->b()Lj1/a$a;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lj1/a$a;->b(Ljava/lang/String;)Lj1/a$a;

    move-result-object v1

    invoke-virtual {v1}, Lj1/a$a;->a()Lj1/a;

    move-result-object v1

    new-instance v3, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling$5;

    invoke-direct {v3, p0}, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling$5;-><init>(Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;)V

    invoke-virtual {v2, v1, v3}, Lcom/android/billingclient/api/a;->a(Lj1/a;Lj1/b;)V

    goto/16 :goto_0

    :cond_3
    iget-object v2, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->f:Lcom/android/billingclient/api/a;

    invoke-static {}, Lj1/e;->b()Lj1/e$a;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lj1/e$a;->b(Ljava/lang/String;)Lj1/e$a;

    move-result-object v1

    invoke-virtual {v1}, Lj1/e$a;->a()Lj1/e;

    move-result-object v1

    new-instance v3, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling$4;

    invoke-direct {v3, p0}, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling$4;-><init>(Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;)V

    invoke-virtual {v2, v1, v3}, Lcom/android/billingclient/api/a;->b(Lj1/e;Lj1/f;)V

    goto/16 :goto_0

    :cond_4
    if-eqz p2, :cond_5

    iget-object p1, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->g:Lcom/badlogic/gdx/pay/PurchaseObserver;

    const/4 p2, 0x0

    new-array p2, p2, [Lcom/badlogic/gdx/pay/Transaction;

    invoke-interface {v0, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/badlogic/gdx/pay/Transaction;

    invoke-interface {p1, p2}, Lcom/badlogic/gdx/pay/PurchaseObserver;->handleRestore([Lcom/badlogic/gdx/pay/Transaction;)V

    :cond_5
    return-void
.end method

.method public final o(Lcom/badlogic/gdx/pay/OfferType;)Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling$6;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const-string p1, "subs"

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported OfferType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string p1, "inapp"

    return-object p1
.end method

.method public onPurchasesUpdated(Lcom/android/billingclient/api/c;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/c;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/billingclient/api/c;->a()I

    move-result p1

    iget-object v0, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->g:Lcom/badlogic/gdx/pay/PurchaseObserver;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1}, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->n(Ljava/util/List;Z)V

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    invoke-interface {v0}, Lcom/badlogic/gdx/pay/PurchaseObserver;->handlePurchaseCanceled()V

    goto :goto_0

    :cond_2
    const/4 p2, 0x7

    if-ne p1, p2, :cond_3

    new-instance p1, Lcom/badlogic/gdx/pay/ItemAlreadyOwnedException;

    invoke-direct {p1}, Lcom/badlogic/gdx/pay/ItemAlreadyOwnedException;-><init>()V

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/pay/PurchaseObserver;->handlePurchaseError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    const/4 p2, 0x4

    if-ne p1, p2, :cond_4

    new-instance p1, Lcom/badlogic/gdx/pay/InvalidItemException;

    invoke-direct {p1}, Lcom/badlogic/gdx/pay/InvalidItemException;-><init>()V

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/pay/PurchaseObserver;->handlePurchaseError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_4
    sget-object p2, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPurchasesUpdated failed with responseCode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "GdxPay/GoogleBilling"

    invoke-interface {p2, v2, v0}, Lcom/badlogic/gdx/Application;->error(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->g:Lcom/badlogic/gdx/pay/PurchaseObserver;

    new-instance v0, Lcom/badlogic/gdx/pay/GdxPayException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/pay/GdxPayException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v0}, Lcom/badlogic/gdx/pay/PurchaseObserver;->handlePurchaseError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final p()V
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->e:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->e:Z

    iget-object v0, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->g:Lcom/badlogic/gdx/pay/PurchaseObserver;

    invoke-interface {v0}, Lcom/badlogic/gdx/pay/PurchaseObserver;->handleInstall()V

    :cond_0
    return-void
.end method

.method public purchase(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/billingclient/api/SkuDetails;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->g:Lcom/badlogic/gdx/pay/PurchaseObserver;

    new-instance v1, Lcom/badlogic/gdx/pay/InvalidItemException;

    invoke-direct {v1, p1}, Lcom/badlogic/gdx/pay/InvalidItemException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/pay/PurchaseObserver;->handlePurchaseError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->f:Lcom/android/billingclient/api/a;

    iget-object v1, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->b:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->getBillingFlowParams(Lcom/android/billingclient/api/SkuDetails;)Lj1/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lj1/d$a;->a()Lj1/d;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/android/billingclient/api/a;->e(Landroid/app/Activity;Lj1/d;)Lcom/android/billingclient/api/c;

    :goto_0
    return-void
.end method

.method public purchaseRestore()V
    .locals 5

    iget-object v0, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->f:Lcom/android/billingclient/api/a;

    invoke-virtual {p0}, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/a;->g(Ljava/lang/String;)Lcom/android/billingclient/api/Purchase$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase$a;->c()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase$a;->b()Ljava/util/List;

    move-result-object v0

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->n(Ljava/util/List;Z)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryPurchases failed with responseCode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "GdxPay/GoogleBilling"

    invoke-interface {v0, v4, v2}, Lcom/badlogic/gdx/Application;->error(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->g:Lcom/badlogic/gdx/pay/PurchaseObserver;

    new-instance v2, Lcom/badlogic/gdx/pay/GdxPayException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/badlogic/gdx/pay/GdxPayException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lcom/badlogic/gdx/pay/PurchaseObserver;->handleRestoreError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final q(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->f:Lcom/android/billingclient/api/a;

    new-instance v1, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling$2;

    invoke-direct {v1, p0, p1}, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling$2;-><init>(Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/a;->i(Lj1/c;)V

    return-void
.end method

.method public storeName()Ljava/lang/String;
    .locals 1

    const-string v0, "GooglePlay"

    return-object v0
.end method
