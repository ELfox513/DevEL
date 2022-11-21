.class Lcom/prineside/tdi2/ui/shared/InventoryOverlay$19;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->R()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/shared/InventoryOverlay;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$19;->a:Lcom/prineside/tdi2/ui/shared/InventoryOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$19;->a:Lcom/prineside/tdi2/ui/shared/InventoryOverlay;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->hide(Z)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/UiManager;->luckyWheelOverlay:Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->setVisible(Z)V

    return-void
.end method
