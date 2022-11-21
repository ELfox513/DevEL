.class Lcom/prineside/tdi2/ui/shared/InventoryOverlay$28;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->update(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic o:Lcom/prineside/tdi2/ItemStack;

.field public final synthetic p:Lcom/prineside/tdi2/ui/shared/InventoryOverlay;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;Lcom/prineside/tdi2/ItemStack;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$28;->p:Lcom/prineside/tdi2/ui/shared/InventoryOverlay;

    iput-object p2, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$28;->o:Lcom/prineside/tdi2/ItemStack;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public clicked(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)V
    .locals 0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$28;->p:Lcom/prineside/tdi2/ui/shared/InventoryOverlay;

    const/4 p2, -0x1

    invoke-static {p1, p2}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->i(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;I)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$28;->p:Lcom/prineside/tdi2/ui/shared/InventoryOverlay;

    iget-object p2, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$28;->o:Lcom/prineside/tdi2/ItemStack;

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->setSelectedItem(Lcom/prineside/tdi2/ItemStack;)V

    return-void
.end method
