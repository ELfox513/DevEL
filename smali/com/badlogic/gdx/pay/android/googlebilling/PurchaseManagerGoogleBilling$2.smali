.class Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj1/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->q(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/Runnable;

.field public final synthetic b:Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling$2;->b:Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;

    iput-object p2, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling$2;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBillingServiceDisconnected()V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling$2;->b:Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->c(Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;Z)Z

    return-void
.end method

.method public onBillingSetupFinished(Lcom/android/billingclient/api/c;)V
    .locals 3

    invoke-virtual {p1}, Lcom/android/billingclient/api/c;->a()I

    move-result p1

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setup finished. Response code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GdxPay/GoogleBilling"

    invoke-interface {v0, v2, v1}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling$2;->b:Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {v0, p1}, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->c(Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;Z)Z

    iget-object p1, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling$2;->a:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method
