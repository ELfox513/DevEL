.class Lcom/prineside/tdi2/ui/components/CoreMenu$_MapSystemListener;
.super Lcom/prineside/tdi2/systems/MapSystem$MapSystemListener$MapSystemListenerAdapter;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/NAGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/ui/components/CoreMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "_MapSystemListener"
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/components/CoreMenu;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/components/CoreMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/CoreMenu$_MapSystemListener;->a:Lcom/prineside/tdi2/ui/components/CoreMenu;

    invoke-direct {p0}, Lcom/prineside/tdi2/systems/MapSystem$MapSystemListener$MapSystemListenerAdapter;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/ui/components/CoreMenu;Lcom/prineside/tdi2/ui/components/CoreMenu$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/ui/components/CoreMenu$_MapSystemListener;-><init>(Lcom/prineside/tdi2/ui/components/CoreMenu;)V

    return-void
.end method


# virtual methods
.method public coreTileLeveledUp(Lcom/prineside/tdi2/tiles/CoreTile;)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/CoreMenu$_MapSystemListener;->a:Lcom/prineside/tdi2/ui/components/CoreMenu;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/components/CoreMenu;->j(Lcom/prineside/tdi2/ui/components/CoreMenu;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/CoreMenu$_MapSystemListener;->a:Lcom/prineside/tdi2/ui/components/CoreMenu;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/components/CoreMenu;->e(Lcom/prineside/tdi2/ui/components/CoreMenu;)Lcom/prineside/tdi2/GameSystemProvider;

    move-result-object v0

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/MapSystem;->getSelectedTile()Lcom/prineside/tdi2/Tile;

    move-result-object v0

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/CoreMenu$_MapSystemListener;->a:Lcom/prineside/tdi2/ui/components/CoreMenu;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/components/CoreMenu;->g(Lcom/prineside/tdi2/ui/components/CoreMenu;)I

    move-result p1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/CoreMenu$_MapSystemListener;->a:Lcom/prineside/tdi2/ui/components/CoreMenu;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/components/CoreMenu;->h(Lcom/prineside/tdi2/ui/components/CoreMenu;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/CoreMenu$_MapSystemListener;->a:Lcom/prineside/tdi2/ui/components/CoreMenu;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/components/CoreMenu;->f(Lcom/prineside/tdi2/ui/components/CoreMenu;)V

    :cond_0
    return-void
.end method

.method public coreTileUpgradeInstalled(II)V
    .locals 0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/CoreMenu$_MapSystemListener;->a:Lcom/prineside/tdi2/ui/components/CoreMenu;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/components/CoreMenu;->j(Lcom/prineside/tdi2/ui/components/CoreMenu;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/CoreMenu$_MapSystemListener;->a:Lcom/prineside/tdi2/ui/components/CoreMenu;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/components/CoreMenu;->f(Lcom/prineside/tdi2/ui/components/CoreMenu;)V

    :cond_0
    return-void
.end method

.method public selectedTileChanged(Lcom/prineside/tdi2/Tile;)V
    .locals 1

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/CoreMenu$_MapSystemListener;->a:Lcom/prineside/tdi2/ui/components/CoreMenu;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/components/CoreMenu;->e(Lcom/prineside/tdi2/ui/components/CoreMenu;)Lcom/prineside/tdi2/GameSystemProvider;

    move-result-object p1

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {p1}, Lcom/prineside/tdi2/systems/MapSystem;->getSelectedTile()Lcom/prineside/tdi2/Tile;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/prineside/tdi2/Tile;->type:Lcom/prineside/tdi2/enums/TileType;

    sget-object v0, Lcom/prineside/tdi2/enums/TileType;->CORE:Lcom/prineside/tdi2/enums/TileType;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/CoreMenu$_MapSystemListener;->a:Lcom/prineside/tdi2/ui/components/CoreMenu;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/components/CoreMenu;->g(Lcom/prineside/tdi2/ui/components/CoreMenu;)I

    move-result p1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/CoreMenu$_MapSystemListener;->a:Lcom/prineside/tdi2/ui/components/CoreMenu;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/components/CoreMenu;->h(Lcom/prineside/tdi2/ui/components/CoreMenu;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/CoreMenu$_MapSystemListener;->a:Lcom/prineside/tdi2/ui/components/CoreMenu;

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcom/prineside/tdi2/ui/components/CoreMenu;->b(Lcom/prineside/tdi2/ui/components/CoreMenu;I)I

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/CoreMenu$_MapSystemListener;->a:Lcom/prineside/tdi2/ui/components/CoreMenu;

    invoke-static {p1, v0}, Lcom/prineside/tdi2/ui/components/CoreMenu;->d(Lcom/prineside/tdi2/ui/components/CoreMenu;I)I

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/CoreMenu$_MapSystemListener;->a:Lcom/prineside/tdi2/ui/components/CoreMenu;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/components/CoreMenu;->f(Lcom/prineside/tdi2/ui/components/CoreMenu;)V

    :cond_0
    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/CoreMenu$_MapSystemListener;->a:Lcom/prineside/tdi2/ui/components/CoreMenu;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/prineside/tdi2/ui/components/CoreMenu;->i(Lcom/prineside/tdi2/ui/components/CoreMenu;Z)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/CoreMenu$_MapSystemListener;->a:Lcom/prineside/tdi2/ui/components/CoreMenu;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/prineside/tdi2/ui/components/CoreMenu;->i(Lcom/prineside/tdi2/ui/components/CoreMenu;Z)V

    :goto_0
    return-void
.end method
