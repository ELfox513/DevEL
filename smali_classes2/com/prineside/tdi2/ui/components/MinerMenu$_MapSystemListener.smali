.class Lcom/prineside/tdi2/ui/components/MinerMenu$_MapSystemListener;
.super Lcom/prineside/tdi2/systems/MapSystem$MapSystemListener$MapSystemListenerAdapter;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/NAGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/ui/components/MinerMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "_MapSystemListener"
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/components/MinerMenu;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/components/MinerMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/MinerMenu$_MapSystemListener;->a:Lcom/prineside/tdi2/ui/components/MinerMenu;

    invoke-direct {p0}, Lcom/prineside/tdi2/systems/MapSystem$MapSystemListener$MapSystemListenerAdapter;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/ui/components/MinerMenu;Lcom/prineside/tdi2/ui/components/MinerMenu$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/ui/components/MinerMenu$_MapSystemListener;-><init>(Lcom/prineside/tdi2/ui/components/MinerMenu;)V

    return-void
.end method


# virtual methods
.method public minerPlacedOnMap(Lcom/prineside/tdi2/Miner;)V
    .locals 1

    invoke-virtual {p1}, Lcom/prineside/tdi2/Miner;->getTile()Lcom/prineside/tdi2/tiles/SourceTile;

    move-result-object p1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MinerMenu$_MapSystemListener;->a:Lcom/prineside/tdi2/ui/components/MinerMenu;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/components/MinerMenu;->g(Lcom/prineside/tdi2/ui/components/MinerMenu;)Lcom/prineside/tdi2/GameSystemProvider;

    move-result-object v0

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/MapSystem;->getSelectedTile()Lcom/prineside/tdi2/Tile;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MinerMenu$_MapSystemListener;->a:Lcom/prineside/tdi2/ui/components/MinerMenu;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/components/MinerMenu;->c(Lcom/prineside/tdi2/ui/components/MinerMenu;)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MinerMenu$_MapSystemListener;->a:Lcom/prineside/tdi2/ui/components/MinerMenu;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/prineside/tdi2/ui/components/MinerMenu;->a(Lcom/prineside/tdi2/ui/components/MinerMenu;Z)V

    :cond_0
    return-void
.end method

.method public minerRemovedFromMap(Lcom/prineside/tdi2/Miner;Lcom/prineside/tdi2/tiles/SourceTile;)V
    .locals 0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MinerMenu$_MapSystemListener;->a:Lcom/prineside/tdi2/ui/components/MinerMenu;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/components/MinerMenu;->g(Lcom/prineside/tdi2/ui/components/MinerMenu;)Lcom/prineside/tdi2/GameSystemProvider;

    move-result-object p1

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {p1}, Lcom/prineside/tdi2/systems/MapSystem;->getSelectedTile()Lcom/prineside/tdi2/Tile;

    move-result-object p1

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MinerMenu$_MapSystemListener;->a:Lcom/prineside/tdi2/ui/components/MinerMenu;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/prineside/tdi2/ui/components/MinerMenu;->a(Lcom/prineside/tdi2/ui/components/MinerMenu;Z)V

    :cond_0
    return-void
.end method

.method public selectedTileChanged(Lcom/prineside/tdi2/Tile;)V
    .locals 3

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MinerMenu$_MapSystemListener;->a:Lcom/prineside/tdi2/ui/components/MinerMenu;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/components/MinerMenu;->g(Lcom/prineside/tdi2/ui/components/MinerMenu;)Lcom/prineside/tdi2/GameSystemProvider;

    move-result-object p1

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {p1}, Lcom/prineside/tdi2/systems/MapSystem;->getSelectedTile()Lcom/prineside/tdi2/Tile;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/prineside/tdi2/Tile;->type:Lcom/prineside/tdi2/enums/TileType;

    sget-object v2, Lcom/prineside/tdi2/enums/TileType;->SOURCE:Lcom/prineside/tdi2/enums/TileType;

    if-ne v1, v2, :cond_0

    check-cast p1, Lcom/prineside/tdi2/tiles/SourceTile;

    iget-object p1, p1, Lcom/prineside/tdi2/tiles/SourceTile;->miner:Lcom/prineside/tdi2/Miner;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MinerMenu$_MapSystemListener;->a:Lcom/prineside/tdi2/ui/components/MinerMenu;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/components/MinerMenu;->b(Lcom/prineside/tdi2/ui/components/MinerMenu;)Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->setButtonSelected(Z)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MinerMenu$_MapSystemListener;->a:Lcom/prineside/tdi2/ui/components/MinerMenu;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/components/MinerMenu;->c(Lcom/prineside/tdi2/ui/components/MinerMenu;)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MinerMenu$_MapSystemListener;->a:Lcom/prineside/tdi2/ui/components/MinerMenu;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/prineside/tdi2/ui/components/MinerMenu;->a(Lcom/prineside/tdi2/ui/components/MinerMenu;Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MinerMenu$_MapSystemListener;->a:Lcom/prineside/tdi2/ui/components/MinerMenu;

    invoke-static {p1, v0}, Lcom/prineside/tdi2/ui/components/MinerMenu;->a(Lcom/prineside/tdi2/ui/components/MinerMenu;Z)V

    :goto_0
    return-void
.end method
