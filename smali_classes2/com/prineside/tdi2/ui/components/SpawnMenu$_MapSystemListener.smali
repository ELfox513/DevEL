.class Lcom/prineside/tdi2/ui/components/SpawnMenu$_MapSystemListener;
.super Lcom/prineside/tdi2/systems/MapSystem$MapSystemListener$MapSystemListenerAdapter;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/NAGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/ui/components/SpawnMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "_MapSystemListener"
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/components/SpawnMenu;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/components/SpawnMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/SpawnMenu$_MapSystemListener;->a:Lcom/prineside/tdi2/ui/components/SpawnMenu;

    invoke-direct {p0}, Lcom/prineside/tdi2/systems/MapSystem$MapSystemListener$MapSystemListenerAdapter;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/ui/components/SpawnMenu;Lcom/prineside/tdi2/ui/components/SpawnMenu$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/ui/components/SpawnMenu$_MapSystemListener;-><init>(Lcom/prineside/tdi2/ui/components/SpawnMenu;)V

    return-void
.end method


# virtual methods
.method public enemySpawnedOnMap(Lcom/prineside/tdi2/Enemy;)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/SpawnMenu$_MapSystemListener;->a:Lcom/prineside/tdi2/ui/components/SpawnMenu;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/components/SpawnMenu;->c(Lcom/prineside/tdi2/ui/components/SpawnMenu;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/prineside/tdi2/Enemy;->spawnTile:Lcom/prineside/tdi2/tiles/SpawnTile;

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/SpawnMenu$_MapSystemListener;->a:Lcom/prineside/tdi2/ui/components/SpawnMenu;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/components/SpawnMenu;->b(Lcom/prineside/tdi2/ui/components/SpawnMenu;)Lcom/prineside/tdi2/GameSystemProvider;

    move-result-object v0

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/MapSystem;->getSelectedTile()Lcom/prineside/tdi2/Tile;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/SpawnMenu$_MapSystemListener;->a:Lcom/prineside/tdi2/ui/components/SpawnMenu;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/components/SpawnMenu;->d(Lcom/prineside/tdi2/ui/components/SpawnMenu;)V

    :cond_0
    return-void
.end method

.method public selectedTileChanged(Lcom/prineside/tdi2/Tile;)V
    .locals 1

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/SpawnMenu$_MapSystemListener;->a:Lcom/prineside/tdi2/ui/components/SpawnMenu;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/components/SpawnMenu;->b(Lcom/prineside/tdi2/ui/components/SpawnMenu;)Lcom/prineside/tdi2/GameSystemProvider;

    move-result-object p1

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {p1}, Lcom/prineside/tdi2/systems/MapSystem;->getSelectedTile()Lcom/prineside/tdi2/Tile;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/prineside/tdi2/Tile;->type:Lcom/prineside/tdi2/enums/TileType;

    sget-object v0, Lcom/prineside/tdi2/enums/TileType;->SPAWN:Lcom/prineside/tdi2/enums/TileType;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/SpawnMenu$_MapSystemListener;->a:Lcom/prineside/tdi2/ui/components/SpawnMenu;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ui/components/SpawnMenu;->update()V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/SpawnMenu$_MapSystemListener;->a:Lcom/prineside/tdi2/ui/components/SpawnMenu;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/prineside/tdi2/ui/components/SpawnMenu;->e(Lcom/prineside/tdi2/ui/components/SpawnMenu;Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/SpawnMenu$_MapSystemListener;->a:Lcom/prineside/tdi2/ui/components/SpawnMenu;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/prineside/tdi2/ui/components/SpawnMenu;->e(Lcom/prineside/tdi2/ui/components/SpawnMenu;Z)V

    :goto_0
    return-void
.end method
