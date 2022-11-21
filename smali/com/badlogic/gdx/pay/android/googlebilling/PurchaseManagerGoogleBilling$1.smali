.class Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->install(Lcom/badlogic/gdx/pay/PurchaseObserver;Lcom/badlogic/gdx/pay/PurchaseManagerConfig;Z)V
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

    iput-object p1, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling$1;->a:Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling$1;->a:Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;

    invoke-static {v0}, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->a(Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;)Lcom/badlogic/gdx/pay/PurchaseObserver;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling$1;->a:Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;

    invoke-static {v0}, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->b(Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling$1;->a:Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;

    invoke-static {v0}, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->a(Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;)Lcom/badlogic/gdx/pay/PurchaseObserver;

    move-result-object v0

    new-instance v1, Lcom/badlogic/gdx/pay/GdxPayException;

    const-string v2, "Connection to Play Billing not possible"

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/pay/GdxPayException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/pay/PurchaseObserver;->handleInstallError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling$1;->a:Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;

    invoke-static {v0}, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->d(Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;)V

    :goto_0
    return-void
.end method
