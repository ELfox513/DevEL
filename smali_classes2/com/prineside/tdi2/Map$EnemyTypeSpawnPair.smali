.class public Lcom/prineside/tdi2/Map$EnemyTypeSpawnPair;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EnemyTypeSpawnPair"
.end annotation


# instance fields
.field public enemyType:Lcom/prineside/tdi2/enums/EnemyType;

.field public spawnTile:Lcom/prineside/tdi2/tiles/SpawnTile;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/enums/EnemyType;Lcom/prineside/tdi2/tiles/SpawnTile;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/Map$EnemyTypeSpawnPair;->enemyType:Lcom/prineside/tdi2/enums/EnemyType;

    iput-object p2, p0, Lcom/prineside/tdi2/Map$EnemyTypeSpawnPair;->spawnTile:Lcom/prineside/tdi2/tiles/SpawnTile;

    return-void
.end method
