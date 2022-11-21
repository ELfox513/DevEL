.class Lcom/prineside/tdi2/managers/PurchaseManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/pay/PurchaseObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/managers/PurchaseManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/managers/PurchaseManager;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/managers/PurchaseManager;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/managers/PurchaseManager$2;->a:Lcom/prineside/tdi2/managers/PurchaseManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/managers/PurchaseManager$2;Lcom/badlogic/gdx/pay/Transaction;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/managers/PurchaseManager$2;->b(Lcom/badlogic/gdx/pay/Transaction;)V

    return-void
.end method

.method private synthetic b(Lcom/badlogic/gdx/pay/Transaction;)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/PurchaseManager$2;->a:Lcom/prineside/tdi2/managers/PurchaseManager;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/managers/PurchaseManager;->handlePurchase(Lcom/badlogic/gdx/pay/Transaction;)V

    return-void
.end method


# virtual methods
.method public handleInstall()V
    .locals 2

    const-string v0, "PurchaseManager"

    const-string v1, "handleInstall"

    invoke-static {v0, v1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/PurchaseManager$2;->a:Lcom/prineside/tdi2/managers/PurchaseManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/prineside/tdi2/managers/PurchaseManager;->a(Lcom/prineside/tdi2/managers/PurchaseManager;Z)Z

    return-void
.end method

.method public handleInstallError(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "PurchaseManager"

    const-string v1, "handleInstallError"

    invoke-static {v0, v1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public handlePurchase(Lcom/badlogic/gdx/pay/Transaction;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handlePurchase "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/badlogic/gdx/pay/Transaction;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PurchaseManager"

    invoke-static {v1, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v1, Lcom/prineside/tdi2/managers/y;

    invoke-direct {v1, p0, p1}, Lcom/prineside/tdi2/managers/y;-><init>(Lcom/prineside/tdi2/managers/PurchaseManager$2;Lcom/badlogic/gdx/pay/Transaction;)V

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Application;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public handlePurchaseCanceled()V
    .locals 2

    const-string v0, "PurchaseManager"

    const-string v1, "handlePurchaseCanceled"

    invoke-static {v0, v1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v1, Lcom/prineside/tdi2/managers/PurchaseManager$2$4;

    invoke-direct {v1, p0}, Lcom/prineside/tdi2/managers/PurchaseManager$2$4;-><init>(Lcom/prineside/tdi2/managers/PurchaseManager$2;)V

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Application;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public handlePurchaseError(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "PurchaseManager"

    const-string v1, "handlePurchaseError"

    invoke-static {v0, v1, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v1, Lcom/prineside/tdi2/managers/PurchaseManager$2$3;

    invoke-direct {v1, p0, p1}, Lcom/prineside/tdi2/managers/PurchaseManager$2$3;-><init>(Lcom/prineside/tdi2/managers/PurchaseManager$2;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Application;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public handleRestore([Lcom/badlogic/gdx/pay/Transaction;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleRestore - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " transactions"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PurchaseManager"

    invoke-static {v1, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    array-length v0, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    invoke-virtual {v3}, Lcom/badlogic/gdx/pay/Transaction;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v1, Lcom/prineside/tdi2/managers/PurchaseManager$2$1;

    invoke-direct {v1, p0, p1}, Lcom/prineside/tdi2/managers/PurchaseManager$2$1;-><init>(Lcom/prineside/tdi2/managers/PurchaseManager$2;[Lcom/badlogic/gdx/pay/Transaction;)V

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Application;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public handleRestoreError(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "PurchaseManager"

    const-string v1, "handleRestoreError"

    invoke-static {v0, v1, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v1, Lcom/prineside/tdi2/managers/PurchaseManager$2$2;

    invoke-direct {v1, p0, p1}, Lcom/prineside/tdi2/managers/PurchaseManager$2$2;-><init>(Lcom/prineside/tdi2/managers/PurchaseManager$2;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Application;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method
