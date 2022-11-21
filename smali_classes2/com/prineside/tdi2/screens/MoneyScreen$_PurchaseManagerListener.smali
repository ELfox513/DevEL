.class Lcom/prineside/tdi2/screens/MoneyScreen$_PurchaseManagerListener;
.super Lcom/prineside/tdi2/managers/PurchaseManager$PurchaseManagerListener$PurchaseManagerListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/screens/MoneyScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "_PurchaseManagerListener"
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/screens/MoneyScreen;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/screens/MoneyScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/screens/MoneyScreen$_PurchaseManagerListener;->a:Lcom/prineside/tdi2/screens/MoneyScreen;

    invoke-direct {p0}, Lcom/prineside/tdi2/managers/PurchaseManager$PurchaseManagerListener$PurchaseManagerListenerAdapter;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/screens/MoneyScreen;Lcom/prineside/tdi2/screens/MoneyScreen$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/screens/MoneyScreen$_PurchaseManagerListener;-><init>(Lcom/prineside/tdi2/screens/MoneyScreen;)V

    return-void
.end method


# virtual methods
.method public gotResponse(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    iget-object p1, p0, Lcom/prineside/tdi2/screens/MoneyScreen$_PurchaseManagerListener;->a:Lcom/prineside/tdi2/screens/MoneyScreen;

    invoke-static {p1}, Lcom/prineside/tdi2/screens/MoneyScreen;->j(Lcom/prineside/tdi2/screens/MoneyScreen;)Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    return-void
.end method

.method public purchased(Lcom/badlogic/gdx/pay/Transaction;)V
    .locals 0

    iget-object p1, p0, Lcom/prineside/tdi2/screens/MoneyScreen$_PurchaseManagerListener;->a:Lcom/prineside/tdi2/screens/MoneyScreen;

    invoke-static {p1}, Lcom/prineside/tdi2/screens/MoneyScreen;->i(Lcom/prineside/tdi2/screens/MoneyScreen;)V

    return-void
.end method
