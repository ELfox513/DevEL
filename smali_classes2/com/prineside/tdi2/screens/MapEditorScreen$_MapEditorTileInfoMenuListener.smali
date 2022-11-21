.class Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorTileInfoMenuListener;
.super Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$MapEditorTileInfoMenuListener$MapEditorTileInfoMenuListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/screens/MapEditorScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "_MapEditorTileInfoMenuListener"
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/screens/MapEditorScreen;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/screens/MapEditorScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorTileInfoMenuListener;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-direct {p0}, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$MapEditorTileInfoMenuListener$MapEditorTileInfoMenuListenerAdapter;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/screens/MapEditorScreen;Lcom/prineside/tdi2/screens/MapEditorScreen$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorTileInfoMenuListener;-><init>(Lcom/prineside/tdi2/screens/MapEditorScreen;)V

    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorTileInfoMenuListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorTileInfoMenuListener;->b()V

    return-void
.end method

.method private synthetic b()V
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorTileInfoMenuListener;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    iget-object v1, v0, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v1, Lcom/prineside/tdi2/GameSystemProvider;->_mapEditor:Lcom/prineside/tdi2/systems/MapEditorSystem;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/prineside/tdi2/systems/MapEditorSystem;->mapChanged:Z

    iget-boolean v2, v0, Lcom/prineside/tdi2/screens/MapEditorScreen;->selectedBarrier:Z

    if-nez v2, :cond_0

    iget-boolean v0, v0, Lcom/prineside/tdi2/screens/MapEditorScreen;->selectedTile:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, v1, Lcom/prineside/tdi2/GameSystemProvider;->_mapRendering:Lcom/prineside/tdi2/systems/MapRenderingSystem;

    invoke-virtual {v0, v3}, Lcom/prineside/tdi2/systems/MapRenderingSystem;->forceTilesRedraw(Z)V

    :cond_1
    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorTileInfoMenuListener;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {v0}, Lcom/prineside/tdi2/screens/MapEditorScreen;->l(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/prineside/tdi2/ItemStack;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorTileInfoMenuListener;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {v0}, Lcom/prineside/tdi2/screens/MapEditorScreen;->n(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;

    move-result-object v0

    iget-object v1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorTileInfoMenuListener;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {v1}, Lcom/prineside/tdi2/screens/MapEditorScreen;->l(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/prineside/tdi2/ItemStack;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;->rebuildSlot(Lcom/prineside/tdi2/ItemStack;Z)V

    :cond_2
    return-void
.end method


# virtual methods
.method public selectedTileModified()V
    .locals 2

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v1, Lcom/prineside/tdi2/screens/d0;

    invoke-direct {v1, p0}, Lcom/prineside/tdi2/screens/d0;-><init>(Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorTileInfoMenuListener;)V

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Application;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public sellButtonHeld()V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorTileInfoMenuListener;->a:Lcom/prineside/tdi2/screens/MapEditorScreen;

    invoke-static {v0}, Lcom/prineside/tdi2/screens/MapEditorScreen;->l(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/prineside/tdi2/ItemStack;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/UiManager;->dialog:Lcom/prineside/tdi2/ui/shared/Dialog;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v2, "sell_item_stack_confirm"

    invoke-virtual {v0, v2}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorTileInfoMenuListener$2;

    invoke-direct {v2, p0}, Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorTileInfoMenuListener$2;-><init>(Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorTileInfoMenuListener;)V

    invoke-virtual {v1, v0, v2}, Lcom/prineside/tdi2/ui/shared/Dialog;->showConfirm(Ljava/lang/CharSequence;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public sellButtonPressed()V
    .locals 3

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/UiManager;->dialog:Lcom/prineside/tdi2/ui/shared/Dialog;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v2, "sell_item_confirm"

    invoke-virtual {v0, v2}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorTileInfoMenuListener$1;

    invoke-direct {v2, p0}, Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorTileInfoMenuListener$1;-><init>(Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorTileInfoMenuListener;)V

    invoke-virtual {v1, v0, v2}, Lcom/prineside/tdi2/ui/shared/Dialog;->showConfirm(Ljava/lang/CharSequence;Ljava/lang/Runnable;)V

    return-void
.end method
