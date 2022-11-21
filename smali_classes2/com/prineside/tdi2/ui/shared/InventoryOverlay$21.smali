.class Lcom/prineside/tdi2/ui/shared/InventoryOverlay$21;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->R()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic o:Lcom/prineside/tdi2/ui/shared/InventoryOverlay;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$21;->o:Lcom/prineside/tdi2/ui/shared/InventoryOverlay;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public clicked(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)V
    .locals 0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$21;->o:Lcom/prineside/tdi2/ui/shared/InventoryOverlay;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->hide(Z)V

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/UiManager;->itemCreationOverlay:Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;

    iget-object p2, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$21;->o:Lcom/prineside/tdi2/ui/shared/InventoryOverlay;

    invoke-static {p2}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->l(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;)Lcom/prineside/tdi2/ItemStack;

    move-result-object p2

    invoke-virtual {p2}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->show(Lcom/prineside/tdi2/Item;)V

    return-void
.end method
