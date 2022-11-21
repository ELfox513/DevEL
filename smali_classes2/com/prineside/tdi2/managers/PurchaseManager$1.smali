.class Lcom/prineside/tdi2/managers/PurchaseManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/pay/PurchaseManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/managers/PurchaseManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:Lcom/badlogic/gdx/pay/PurchaseObserver;

.field public b:Lcom/badlogic/gdx/pay/PurchaseManagerConfig;


# direct methods
.method public static synthetic a(Lcom/prineside/tdi2/managers/PurchaseManager$1;)Lcom/badlogic/gdx/pay/PurchaseObserver;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/managers/PurchaseManager$1;->a:Lcom/badlogic/gdx/pay/PurchaseObserver;

    return-object p0
.end method


# virtual methods
.method public dispose()V
    .locals 0

    return-void
.end method

.method public getInformation(Ljava/lang/String;)Lcom/badlogic/gdx/pay/Information;
    .locals 2

    invoke-static {}, Lcom/badlogic/gdx/pay/Information;->newBuilder()Lcom/badlogic/gdx/pay/Information$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/pay/Information$Builder;->localName(Ljava/lang/String;)Lcom/badlogic/gdx/pay/Information$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " description"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/pay/Information$Builder;->localDescription(Ljava/lang/String;)Lcom/badlogic/gdx/pay/Information$Builder;

    move-result-object p1

    const-string v0, "19,99 USD"

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/pay/Information$Builder;->localPricing(Ljava/lang/String;)Lcom/badlogic/gdx/pay/Information$Builder;

    move-result-object p1

    const-string v0, "USD"

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/pay/Information$Builder;->priceCurrencyCode(Ljava/lang/String;)Lcom/badlogic/gdx/pay/Information$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/pay/Information$Builder;->build()Lcom/badlogic/gdx/pay/Information;

    move-result-object p1

    return-object p1
.end method

.method public install(Lcom/badlogic/gdx/pay/PurchaseObserver;Lcom/badlogic/gdx/pay/PurchaseManagerConfig;Z)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/managers/PurchaseManager$1;->a:Lcom/badlogic/gdx/pay/PurchaseObserver;

    iput-object p2, p0, Lcom/prineside/tdi2/managers/PurchaseManager$1;->b:Lcom/badlogic/gdx/pay/PurchaseManagerConfig;

    invoke-interface {p1}, Lcom/badlogic/gdx/pay/PurchaseObserver;->handleInstall()V

    return-void
.end method

.method public installed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public purchase(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/UiManager;->dialog:Lcom/prineside/tdi2/ui/shared/Dialog;

    new-instance v1, Lcom/prineside/tdi2/managers/PurchaseManager$1$1;

    invoke-direct {v1, p0, p1}, Lcom/prineside/tdi2/managers/PurchaseManager$1$1;-><init>(Lcom/prineside/tdi2/managers/PurchaseManager$1;Ljava/lang/String;)V

    new-instance p1, Lcom/prineside/tdi2/managers/PurchaseManager$1$2;

    invoke-direct {p1, p0}, Lcom/prineside/tdi2/managers/PurchaseManager$1$2;-><init>(Lcom/prineside/tdi2/managers/PurchaseManager$1;)V

    const-string v2, "Confirm purchase?"

    invoke-virtual {v0, v2, v1, p1}, Lcom/prineside/tdi2/ui/shared/Dialog;->showConfirm(Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public purchaseRestore()V
    .locals 0

    return-void
.end method

.method public storeName()Ljava/lang/String;
    .locals 1

    const-string v0, "Windows"

    return-object v0
.end method
