.class public interface abstract Lcom/prineside/tdi2/systems/MapSystem$MapSystemListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/GameListener;


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
    classOnly = true
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/systems/MapSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MapSystemListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/systems/MapSystem$MapSystemListener$MapSystemListenerAdapter;
    }
.end annotation


# virtual methods
.method public abstract buildingRemovedFromMap(Lcom/prineside/tdi2/Building;Lcom/prineside/tdi2/tiles/PlatformTile;)V
.end method

.method public abstract coreTileLeveledUp(Lcom/prineside/tdi2/tiles/CoreTile;)V
.end method

.method public abstract coreTileUpgradeInstalled(II)V
.end method

.method public abstract enemyDespawnedFromMap(Lcom/prineside/tdi2/Enemy;)V
.end method

.method public abstract enemySpawnedOnMap(Lcom/prineside/tdi2/Enemy;)V
.end method

.method public abstract gateChanged(IILcom/prineside/tdi2/Gate$Side;Lcom/prineside/tdi2/Gate;Lcom/prineside/tdi2/Gate;)V
.end method

.method public abstract hoveredGateChanged(Lcom/prineside/tdi2/Gate;)V
.end method

.method public abstract hoveredTileChanged(Lcom/prineside/tdi2/Tile;)V
.end method

.method public abstract minerPlacedOnMap(Lcom/prineside/tdi2/Miner;)V
.end method

.method public abstract minerRemovedFromMap(Lcom/prineside/tdi2/Miner;Lcom/prineside/tdi2/tiles/SourceTile;)V
.end method

.method public abstract modifierPlacedOnMap(Lcom/prineside/tdi2/Modifier;)V
.end method

.method public abstract selectedGateChanged(Lcom/prineside/tdi2/Gate;)V
.end method

.method public abstract selectedTileChanged(Lcom/prineside/tdi2/Tile;)V
.end method

.method public abstract tileChanged(IILcom/prineside/tdi2/Tile;Lcom/prineside/tdi2/Tile;)V
.end method

.method public abstract towerPlacedOnMap(Lcom/prineside/tdi2/Tower;)V
.end method

.method public abstract unitDespawnedFromMap(Lcom/prineside/tdi2/Unit;)V
.end method

.method public abstract unitSpawnedOnMap(Lcom/prineside/tdi2/Unit;)V
.end method
