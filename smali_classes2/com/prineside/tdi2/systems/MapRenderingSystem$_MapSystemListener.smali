.class Lcom/prineside/tdi2/systems/MapRenderingSystem$_MapSystemListener;
.super Lcom/prineside/tdi2/systems/MapSystem$MapSystemListener$MapSystemListenerAdapter;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/NAGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/systems/MapRenderingSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "_MapSystemListener"
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/systems/MapRenderingSystem;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/systems/MapRenderingSystem;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem$_MapSystemListener;->a:Lcom/prineside/tdi2/systems/MapRenderingSystem;

    invoke-direct {p0}, Lcom/prineside/tdi2/systems/MapSystem$MapSystemListener$MapSystemListenerAdapter;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/systems/MapRenderingSystem;Lcom/prineside/tdi2/systems/MapRenderingSystem$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/systems/MapRenderingSystem$_MapSystemListener;-><init>(Lcom/prineside/tdi2/systems/MapRenderingSystem;)V

    return-void
.end method


# virtual methods
.method public buildingRemovedFromMap(Lcom/prineside/tdi2/Building;Lcom/prineside/tdi2/tiles/PlatformTile;)V
    .locals 0

    iget-object p1, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem$_MapSystemListener;->a:Lcom/prineside/tdi2/systems/MapRenderingSystem;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/systems/MapRenderingSystem;->forceTilesRedraw(Z)V

    iget-object p1, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem$_MapSystemListener;->a:Lcom/prineside/tdi2/systems/MapRenderingSystem;

    invoke-virtual {p1}, Lcom/prineside/tdi2/systems/MapRenderingSystem;->forceTowersRedraw()V

    return-void
.end method

.method public minerPlacedOnMap(Lcom/prineside/tdi2/Miner;)V
    .locals 1

    iget-object p1, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem$_MapSystemListener;->a:Lcom/prineside/tdi2/systems/MapRenderingSystem;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/systems/MapRenderingSystem;->forceTilesRedraw(Z)V

    return-void
.end method

.method public minerRemovedFromMap(Lcom/prineside/tdi2/Miner;Lcom/prineside/tdi2/tiles/SourceTile;)V
    .locals 0

    iget-object p1, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem$_MapSystemListener;->a:Lcom/prineside/tdi2/systems/MapRenderingSystem;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/systems/MapRenderingSystem;->forceTilesRedraw(Z)V

    return-void
.end method

.method public modifierPlacedOnMap(Lcom/prineside/tdi2/Modifier;)V
    .locals 1

    iget-object p1, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem$_MapSystemListener;->a:Lcom/prineside/tdi2/systems/MapRenderingSystem;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/systems/MapRenderingSystem;->forceTilesRedraw(Z)V

    return-void
.end method

.method public towerPlacedOnMap(Lcom/prineside/tdi2/Tower;)V
    .locals 1

    iget-object p1, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem$_MapSystemListener;->a:Lcom/prineside/tdi2/systems/MapRenderingSystem;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/systems/MapRenderingSystem;->forceTilesRedraw(Z)V

    iget-object p1, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem$_MapSystemListener;->a:Lcom/prineside/tdi2/systems/MapRenderingSystem;

    invoke-virtual {p1}, Lcom/prineside/tdi2/systems/MapRenderingSystem;->forceTowersRedraw()V

    return-void
.end method
