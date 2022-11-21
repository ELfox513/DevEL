.class Lcom/prineside/tdi2/screens/MoneyScreen$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/screens/MoneyScreen;->r()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/screens/MoneyScreen;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/screens/MoneyScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/screens/MoneyScreen$2;->a:Lcom/prineside/tdi2/screens/MoneyScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MoneyScreen$2;->a:Lcom/prineside/tdi2/screens/MoneyScreen;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->purchaseManager:Lcom/prineside/tdi2/managers/PurchaseManager;

    sget-object v2, Lcom/prineside/tdi2/Config$ProductId;->DOUBLE_GAIN:Lcom/prineside/tdi2/Config$ProductId;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/PurchaseManager;->getPurchaseIdentifier(Lcom/prineside/tdi2/Config$ProductId;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/prineside/tdi2/screens/MoneyScreen;->d(Lcom/prineside/tdi2/screens/MoneyScreen;Ljava/lang/String;)V

    return-void
.end method
