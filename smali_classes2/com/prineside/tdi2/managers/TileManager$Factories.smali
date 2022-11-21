.class public Lcom/prineside/tdi2/managers/TileManager$Factories;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/managers/TileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factories"
.end annotation


# instance fields
.field public BOSS:Lcom/prineside/tdi2/tiles/BossTile$BossTileFactory;

.field public CORE:Lcom/prineside/tdi2/tiles/CoreTile$CoreTileFactory;

.field public DUMMY:Lcom/prineside/tdi2/tiles/DummyTile$DummyTileFactory;

.field public GAME_VALUE:Lcom/prineside/tdi2/tiles/GameValueTile$GameValueTileFactory;

.field public PLATFORM:Lcom/prineside/tdi2/tiles/PlatformTile$SpaceTileFactory;

.field public ROAD:Lcom/prineside/tdi2/tiles/RoadTile$RoadTileFactory;

.field public SCRIPT:Lcom/prineside/tdi2/tiles/ScriptTile$ScriptTileFactory;

.field public SOURCE:Lcom/prineside/tdi2/tiles/SourceTile$SourceTileFactory;

.field public SPAWN:Lcom/prineside/tdi2/tiles/SpawnTile$SpawnTileFactory;

.field public TARGET:Lcom/prineside/tdi2/tiles/TargetTile$TargetTileFactory;

.field public XM_MUSIC_TRACK:Lcom/prineside/tdi2/tiles/XmMusicTrackTile$XmMusicTrackTileFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
