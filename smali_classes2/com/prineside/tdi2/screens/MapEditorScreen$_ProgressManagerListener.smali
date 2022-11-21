.class Lcom/prineside/tdi2/screens/MapEditorScreen$_ProgressManagerListener;
.super Lcom/prineside/tdi2/managers/ProgressManager$ProgressManagerListener$ProgressManagerListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/screens/MapEditorScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "_ProgressManagerListener"
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/screens/MapEditorScreen;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/screens/MapEditorScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_ProgressManagerListener;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-direct {p0}, Lcom/prineside/tdi2/managers/ProgressManager$ProgressManagerListener$ProgressManagerListenerAdapter;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/screens/MapEditorScreen;Lcom/prineside/tdi2/screens/MapEditorScreen$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/screens/MapEditorScreen$_ProgressManagerListener;-><init>(Lcom/prineside/tdi2/screens/MapEditorScreen;)V

    return-void
.end method


# virtual methods
.method public itemsChanged(Lcom/prineside/tdi2/Item;II)V
    .locals 0

    sget-object p3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p3, p3, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {p3, p1}, Lcom/prineside/tdi2/managers/ProgressManager;->getItemsCount(Lcom/prineside/tdi2/Item;)I

    move-result p3

    sub-int/2addr p3, p2

    if-lez p3, :cond_0

    iget-object p2, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_ProgressManagerListener;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    iget-object p2, p2, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p2, p2, Lcom/prineside/tdi2/GameSystemProvider;->_inventory:Lcom/prineside/tdi2/systems/InventorySystem;

    invoke-virtual {p2, p1, p3}, Lcom/prineside/tdi2/systems/InventorySystem;->add(Lcom/prineside/tdi2/Item;I)Lcom/prineside/tdi2/ItemStack;

    :cond_0
    return-void
.end method
