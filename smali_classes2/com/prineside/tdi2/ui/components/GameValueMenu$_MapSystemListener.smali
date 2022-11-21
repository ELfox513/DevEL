.class Lcom/prineside/tdi2/ui/components/GameValueMenu$_MapSystemListener;
.super Lcom/prineside/tdi2/systems/MapSystem$MapSystemListener$MapSystemListenerAdapter;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/NAGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/ui/components/GameValueMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "_MapSystemListener"
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/components/GameValueMenu;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/components/GameValueMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/GameValueMenu$_MapSystemListener;->a:Lcom/prineside/tdi2/ui/components/GameValueMenu;

    invoke-direct {p0}, Lcom/prineside/tdi2/systems/MapSystem$MapSystemListener$MapSystemListenerAdapter;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/ui/components/GameValueMenu;Lcom/prineside/tdi2/ui/components/GameValueMenu$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/ui/components/GameValueMenu$_MapSystemListener;-><init>(Lcom/prineside/tdi2/ui/components/GameValueMenu;)V

    return-void
.end method


# virtual methods
.method public selectedTileChanged(Lcom/prineside/tdi2/Tile;)V
    .locals 2

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/GameValueMenu$_MapSystemListener;->a:Lcom/prineside/tdi2/ui/components/GameValueMenu;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/components/GameValueMenu;->b(Lcom/prineside/tdi2/ui/components/GameValueMenu;)Lcom/prineside/tdi2/GameSystemProvider;

    move-result-object p1

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {p1}, Lcom/prineside/tdi2/systems/MapSystem;->getSelectedTile()Lcom/prineside/tdi2/Tile;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/prineside/tdi2/Tile;->type:Lcom/prineside/tdi2/enums/TileType;

    sget-object v1, Lcom/prineside/tdi2/enums/TileType;->GAME_VALUE:Lcom/prineside/tdi2/enums/TileType;

    if-ne v0, v1, :cond_0

    check-cast p1, Lcom/prineside/tdi2/tiles/GameValueTile;

    invoke-virtual {p1}, Lcom/prineside/tdi2/tiles/GameValueTile;->getGameValueType()Lcom/prineside/tdi2/enums/GameValueType;

    move-result-object p1

    sget-object v0, Lcom/prineside/tdi2/enums/GameValueType;->DUMMY:Lcom/prineside/tdi2/enums/GameValueType;

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/GameValueMenu$_MapSystemListener;->a:Lcom/prineside/tdi2/ui/components/GameValueMenu;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/components/GameValueMenu;->a(Lcom/prineside/tdi2/ui/components/GameValueMenu;)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/GameValueMenu$_MapSystemListener;->a:Lcom/prineside/tdi2/ui/components/GameValueMenu;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/prineside/tdi2/ui/components/GameValueMenu;->c(Lcom/prineside/tdi2/ui/components/GameValueMenu;Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/GameValueMenu$_MapSystemListener;->a:Lcom/prineside/tdi2/ui/components/GameValueMenu;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/prineside/tdi2/ui/components/GameValueMenu;->c(Lcom/prineside/tdi2/ui/components/GameValueMenu;Z)V

    :goto_0
    return-void
.end method
