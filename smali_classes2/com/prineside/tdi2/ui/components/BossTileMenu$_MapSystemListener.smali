.class Lcom/prineside/tdi2/ui/components/BossTileMenu$_MapSystemListener;
.super Lcom/prineside/tdi2/systems/MapSystem$MapSystemListener$MapSystemListenerAdapter;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/NAGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/ui/components/BossTileMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "_MapSystemListener"
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/components/BossTileMenu;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/components/BossTileMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/BossTileMenu$_MapSystemListener;->a:Lcom/prineside/tdi2/ui/components/BossTileMenu;

    invoke-direct {p0}, Lcom/prineside/tdi2/systems/MapSystem$MapSystemListener$MapSystemListenerAdapter;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/ui/components/BossTileMenu;Lcom/prineside/tdi2/ui/components/BossTileMenu$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/ui/components/BossTileMenu$_MapSystemListener;-><init>(Lcom/prineside/tdi2/ui/components/BossTileMenu;)V

    return-void
.end method


# virtual methods
.method public selectedTileChanged(Lcom/prineside/tdi2/Tile;)V
    .locals 1

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/BossTileMenu$_MapSystemListener;->a:Lcom/prineside/tdi2/ui/components/BossTileMenu;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/components/BossTileMenu;->b(Lcom/prineside/tdi2/ui/components/BossTileMenu;)Lcom/prineside/tdi2/GameSystemProvider;

    move-result-object p1

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {p1}, Lcom/prineside/tdi2/systems/MapSystem;->getSelectedTile()Lcom/prineside/tdi2/Tile;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/prineside/tdi2/Tile;->type:Lcom/prineside/tdi2/enums/TileType;

    sget-object v0, Lcom/prineside/tdi2/enums/TileType;->BOSS:Lcom/prineside/tdi2/enums/TileType;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/BossTileMenu$_MapSystemListener;->a:Lcom/prineside/tdi2/ui/components/BossTileMenu;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/components/BossTileMenu;->a(Lcom/prineside/tdi2/ui/components/BossTileMenu;)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/BossTileMenu$_MapSystemListener;->a:Lcom/prineside/tdi2/ui/components/BossTileMenu;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/prineside/tdi2/ui/components/BossTileMenu;->c(Lcom/prineside/tdi2/ui/components/BossTileMenu;Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/BossTileMenu$_MapSystemListener;->a:Lcom/prineside/tdi2/ui/components/BossTileMenu;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/prineside/tdi2/ui/components/BossTileMenu;->c(Lcom/prineside/tdi2/ui/components/BossTileMenu;Z)V

    :goto_0
    return-void
.end method
