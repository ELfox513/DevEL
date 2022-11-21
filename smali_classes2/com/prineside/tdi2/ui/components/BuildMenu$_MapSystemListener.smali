.class Lcom/prineside/tdi2/ui/components/BuildMenu$_MapSystemListener;
.super Lcom/prineside/tdi2/systems/MapSystem$MapSystemListener$MapSystemListenerAdapter;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/NAGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/ui/components/BuildMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "_MapSystemListener"
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/components/BuildMenu;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/components/BuildMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/BuildMenu$_MapSystemListener;->a:Lcom/prineside/tdi2/ui/components/BuildMenu;

    invoke-direct {p0}, Lcom/prineside/tdi2/systems/MapSystem$MapSystemListener$MapSystemListenerAdapter;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/ui/components/BuildMenu;Lcom/prineside/tdi2/ui/components/BuildMenu$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/ui/components/BuildMenu$_MapSystemListener;-><init>(Lcom/prineside/tdi2/ui/components/BuildMenu;)V

    return-void
.end method


# virtual methods
.method public buildingRemovedFromMap(Lcom/prineside/tdi2/Building;Lcom/prineside/tdi2/tiles/PlatformTile;)V
    .locals 0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/BuildMenu$_MapSystemListener;->a:Lcom/prineside/tdi2/ui/components/BuildMenu;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/components/BuildMenu;->i(Lcom/prineside/tdi2/ui/components/BuildMenu;)Lcom/prineside/tdi2/GameSystemProvider;

    move-result-object p1

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {p1}, Lcom/prineside/tdi2/systems/MapSystem;->getSelectedTile()Lcom/prineside/tdi2/Tile;

    move-result-object p1

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/BuildMenu$_MapSystemListener;->a:Lcom/prineside/tdi2/ui/components/BuildMenu;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/prineside/tdi2/ui/components/BuildMenu;->j(Lcom/prineside/tdi2/ui/components/BuildMenu;Z)V

    :cond_0
    return-void
.end method

.method public minerPlacedOnMap(Lcom/prineside/tdi2/Miner;)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/BuildMenu$_MapSystemListener;->a:Lcom/prineside/tdi2/ui/components/BuildMenu;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/components/BuildMenu;->i(Lcom/prineside/tdi2/ui/components/BuildMenu;)Lcom/prineside/tdi2/GameSystemProvider;

    move-result-object v0

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/MapSystem;->getSelectedTile()Lcom/prineside/tdi2/Tile;

    move-result-object v0

    invoke-virtual {p1}, Lcom/prineside/tdi2/Miner;->getTile()Lcom/prineside/tdi2/tiles/SourceTile;

    move-result-object p1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/BuildMenu$_MapSystemListener;->a:Lcom/prineside/tdi2/ui/components/BuildMenu;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/prineside/tdi2/ui/components/BuildMenu;->j(Lcom/prineside/tdi2/ui/components/BuildMenu;Z)V

    :cond_0
    return-void
.end method

.method public minerRemovedFromMap(Lcom/prineside/tdi2/Miner;Lcom/prineside/tdi2/tiles/SourceTile;)V
    .locals 0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/BuildMenu$_MapSystemListener;->a:Lcom/prineside/tdi2/ui/components/BuildMenu;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/components/BuildMenu;->i(Lcom/prineside/tdi2/ui/components/BuildMenu;)Lcom/prineside/tdi2/GameSystemProvider;

    move-result-object p1

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {p1}, Lcom/prineside/tdi2/systems/MapSystem;->getSelectedTile()Lcom/prineside/tdi2/Tile;

    move-result-object p1

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/BuildMenu$_MapSystemListener;->a:Lcom/prineside/tdi2/ui/components/BuildMenu;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/prineside/tdi2/ui/components/BuildMenu;->j(Lcom/prineside/tdi2/ui/components/BuildMenu;Z)V

    :cond_0
    return-void
.end method

.method public modifierPlacedOnMap(Lcom/prineside/tdi2/Modifier;)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/BuildMenu$_MapSystemListener;->a:Lcom/prineside/tdi2/ui/components/BuildMenu;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/components/BuildMenu;->i(Lcom/prineside/tdi2/ui/components/BuildMenu;)Lcom/prineside/tdi2/GameSystemProvider;

    move-result-object v0

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/MapSystem;->getSelectedTile()Lcom/prineside/tdi2/Tile;

    move-result-object v0

    invoke-virtual {p1}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object p1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/BuildMenu$_MapSystemListener;->a:Lcom/prineside/tdi2/ui/components/BuildMenu;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/prineside/tdi2/ui/components/BuildMenu;->j(Lcom/prineside/tdi2/ui/components/BuildMenu;Z)V

    :cond_0
    return-void
.end method

.method public selectedTileChanged(Lcom/prineside/tdi2/Tile;)V
    .locals 2

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/BuildMenu$_MapSystemListener;->a:Lcom/prineside/tdi2/ui/components/BuildMenu;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/components/BuildMenu;->i(Lcom/prineside/tdi2/ui/components/BuildMenu;)Lcom/prineside/tdi2/GameSystemProvider;

    move-result-object p1

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {p1}, Lcom/prineside/tdi2/systems/MapSystem;->getSelectedTile()Lcom/prineside/tdi2/Tile;

    move-result-object p1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/BuildMenu$_MapSystemListener;->a:Lcom/prineside/tdi2/ui/components/BuildMenu;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/components/BuildMenu;->k(Lcom/prineside/tdi2/ui/components/BuildMenu;)V

    if-eqz p1, :cond_2

    iget-object v0, p1, Lcom/prineside/tdi2/Tile;->type:Lcom/prineside/tdi2/enums/TileType;

    sget-object v1, Lcom/prineside/tdi2/enums/TileType;->PLATFORM:Lcom/prineside/tdi2/enums/TileType;

    if-ne v0, v1, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/prineside/tdi2/tiles/PlatformTile;

    iget-object v1, v1, Lcom/prineside/tdi2/tiles/PlatformTile;->building:Lcom/prineside/tdi2/Building;

    if-eqz v1, :cond_1

    :cond_0
    sget-object v1, Lcom/prineside/tdi2/enums/TileType;->SOURCE:Lcom/prineside/tdi2/enums/TileType;

    if-ne v0, v1, :cond_2

    check-cast p1, Lcom/prineside/tdi2/tiles/SourceTile;

    iget-object p1, p1, Lcom/prineside/tdi2/tiles/SourceTile;->miner:Lcom/prineside/tdi2/Miner;

    if-nez p1, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/BuildMenu$_MapSystemListener;->a:Lcom/prineside/tdi2/ui/components/BuildMenu;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/prineside/tdi2/ui/components/BuildMenu;->j(Lcom/prineside/tdi2/ui/components/BuildMenu;Z)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/BuildMenu$_MapSystemListener;->a:Lcom/prineside/tdi2/ui/components/BuildMenu;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/prineside/tdi2/ui/components/BuildMenu;->j(Lcom/prineside/tdi2/ui/components/BuildMenu;Z)V

    :goto_0
    return-void
.end method

.method public towerPlacedOnMap(Lcom/prineside/tdi2/Tower;)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/BuildMenu$_MapSystemListener;->a:Lcom/prineside/tdi2/ui/components/BuildMenu;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/components/BuildMenu;->i(Lcom/prineside/tdi2/ui/components/BuildMenu;)Lcom/prineside/tdi2/GameSystemProvider;

    move-result-object v0

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/MapSystem;->getSelectedTile()Lcom/prineside/tdi2/Tile;

    move-result-object v0

    invoke-virtual {p1}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object p1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/BuildMenu$_MapSystemListener;->a:Lcom/prineside/tdi2/ui/components/BuildMenu;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/prineside/tdi2/ui/components/BuildMenu;->j(Lcom/prineside/tdi2/ui/components/BuildMenu;Z)V

    :cond_0
    return-void
.end method
