.class Lcom/prineside/tdi2/managers/PurchaseManager$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/managers/PurchaseManager$1;->purchase(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/prineside/tdi2/managers/PurchaseManager$1;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/managers/PurchaseManager$1;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prineside/tdi2/managers/PurchaseManager$1$1;->b:Lcom/prineside/tdi2/managers/PurchaseManager$1;

    iput-object p2, p0, Lcom/prineside/tdi2/managers/PurchaseManager$1$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    new-instance v0, Lcom/badlogic/gdx/pay/Transaction;

    invoke-direct {v0}, Lcom/badlogic/gdx/pay/Transaction;-><init>()V

    iget-object v1, p0, Lcom/prineside/tdi2/managers/PurchaseManager$1$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/pay/Transaction;->setIdentifier(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/prineside/tdi2/managers/PurchaseManager$1$1;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/pay/Transaction;->setOrderId(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "abcd"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/pay/Transaction;->setRequestId(Ljava/lang/String;)V

    const-string v1, "Windows"

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/pay/Transaction;->setStoreName(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/pay/Transaction;->setPurchaseTime(Ljava/util/Date;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Purchased: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/prineside/tdi2/managers/PurchaseManager$1$1;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/pay/Transaction;->setPurchaseText(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/pay/Transaction;->setReversalTime(Ljava/util/Date;)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/pay/Transaction;->setReversalText(Ljava/lang/String;)V

    const-string v1, "{}"

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/pay/Transaction;->setTransactionData(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/pay/Transaction;->setTransactionDataSignature(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/prineside/tdi2/managers/PurchaseManager$1$1;->b:Lcom/prineside/tdi2/managers/PurchaseManager$1;

    invoke-static {v1}, Lcom/prineside/tdi2/managers/PurchaseManager$1;->a(Lcom/prineside/tdi2/managers/PurchaseManager$1;)Lcom/badlogic/gdx/pay/PurchaseObserver;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/pay/PurchaseObserver;->handlePurchase(Lcom/badlogic/gdx/pay/Transaction;)V

    return-void
.end method
