.class Lcom/prineside/tdi2/managers/PurchaseManager$1$2;
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
.field public final synthetic a:Lcom/prineside/tdi2/managers/PurchaseManager$1;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/managers/PurchaseManager$1;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/managers/PurchaseManager$1$2;->a:Lcom/prineside/tdi2/managers/PurchaseManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/managers/PurchaseManager$1$2;->a:Lcom/prineside/tdi2/managers/PurchaseManager$1;

    invoke-static {v0}, Lcom/prineside/tdi2/managers/PurchaseManager$1;->a(Lcom/prineside/tdi2/managers/PurchaseManager$1;)Lcom/badlogic/gdx/pay/PurchaseObserver;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/pay/PurchaseObserver;->handlePurchaseError(Ljava/lang/Throwable;)V

    return-void
.end method
