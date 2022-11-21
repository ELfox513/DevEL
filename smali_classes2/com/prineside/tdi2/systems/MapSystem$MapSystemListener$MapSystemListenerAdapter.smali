.class public abstract Lcom/prineside/tdi2/systems/MapSystem$MapSystemListener$MapSystemListenerAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/systems/MapSystem$MapSystemListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/systems/MapSystem$MapSystemListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "MapSystemListenerAdapter"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public affectsGameState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public buildingRemovedFromMap(Lcom/prineside/tdi2/Building;Lcom/prineside/tdi2/tiles/PlatformTile;)V
    .locals 0

    return-void
.end method

.method public coreTileLeveledUp(Lcom/prineside/tdi2/tiles/CoreTile;)V
    .locals 0

    return-void
.end method

.method public coreTileUpgradeInstalled(II)V
    .locals 0

    return-void
.end method

.method public enemyDespawnedFromMap(Lcom/prineside/tdi2/Enemy;)V
    .locals 0

    return-void
.end method

.method public enemySpawnedOnMap(Lcom/prineside/tdi2/Enemy;)V
    .locals 0

    return-void
.end method

.method public gateChanged(IILcom/prineside/tdi2/Gate$Side;Lcom/prineside/tdi2/Gate;Lcom/prineside/tdi2/Gate;)V
    .locals 0

    return-void
.end method

.method public getConstantId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hoveredGateChanged(Lcom/prineside/tdi2/Gate;)V
    .locals 0

    return-void
.end method

.method public hoveredTileChanged(Lcom/prineside/tdi2/Tile;)V
    .locals 0

    return-void
.end method

.method public minerPlacedOnMap(Lcom/prineside/tdi2/Miner;)V
    .locals 0

    return-void
.end method

.method public minerRemovedFromMap(Lcom/prineside/tdi2/Miner;Lcom/prineside/tdi2/tiles/SourceTile;)V
    .locals 0

    return-void
.end method

.method public modifierPlacedOnMap(Lcom/prineside/tdi2/Modifier;)V
    .locals 0

    return-void
.end method

.method public selectedGateChanged(Lcom/prineside/tdi2/Gate;)V
    .locals 0

    return-void
.end method

.method public selectedTileChanged(Lcom/prineside/tdi2/Tile;)V
    .locals 0

    return-void
.end method

.method public tileChanged(IILcom/prineside/tdi2/Tile;Lcom/prineside/tdi2/Tile;)V
    .locals 0

    return-void
.end method

.method public towerPlacedOnMap(Lcom/prineside/tdi2/Tower;)V
    .locals 0

    return-void
.end method

.method public unitDespawnedFromMap(Lcom/prineside/tdi2/Unit;)V
    .locals 0

    return-void
.end method

.method public unitSpawnedOnMap(Lcom/prineside/tdi2/Unit;)V
    .locals 0

    return-void
.end method
