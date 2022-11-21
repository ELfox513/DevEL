.class public Lcom/prineside/tdi2/Map;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/esotericsoftware/kryo/KryoSerializable;


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/Map$MapListener;,
        Lcom/prineside/tdi2/Map$PathNotFoundForEnemyTypeException;,
        Lcom/prineside/tdi2/Map$EnemyTypeSpawnPair;,
        Lcom/prineside/tdi2/Map$InvalidMapException;
    }
.end annotation


# static fields
.field public static final GATE_HIT_AREA_WIDTH:F = 18.199999f

.field public static final MAX_SIZE:I = 0x18

.field public static final MAX_TECHNICAL_SIZE:I = 0x20

.field public static s:Lcom/prineside/tdi2/Enemy;

.field public static final t:Lcom/badlogic/gdx/ai/pfa/Heuristic;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/ai/pfa/Heuristic<",
            "Lcom/prineside/tdi2/PathNode;",
            ">;"
        }
    .end annotation
.end field

.field public static final u:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/Map$EnemyTypeSpawnPair;",
            ">;"
        }
    .end annotation
.end field

.field public static final v:Lcom/badlogic/gdx/utils/IntSet;

.field public static final w:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/ai/pfa/Connection<",
            "Lcom/prineside/tdi2/PathNode;",
            ">;>;"
        }
    .end annotation
.end field

.field public static x:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Lcom/prineside/tdi2/enums/EnemyType;",
            "Lcom/prineside/tdi2/Path;",
            ">;"
        }
    .end annotation
.end field

.field public static y:Lcom/prineside/tdi2/Gate;

.field public static final z:Lcom/prineside/tdi2/utils/IntRectangle;


# instance fields
.field public a:Lcom/prineside/tdi2/managers/BasicLevelManager$MapPreview;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public allowedEnemies:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/enums/EnemyType;",
            ">;"
        }
    .end annotation
.end field

.field public allowedEnemiesSet:Lcom/badlogic/gdx/utils/ObjectSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectSet<",
            "Lcom/prineside/tdi2/enums/EnemyType;",
            ">;"
        }
    .end annotation
.end field

.field public b:Z

.field public bossTile:Lcom/prineside/tdi2/tiles/BossTile;

.field public coreTiles:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/tiles/CoreTile;",
            ">;"
        }
    .end annotation
.end field

.field public d:[[Lcom/prineside/tdi2/PathNode;

.field public gates:[[[Lcom/prineside/tdi2/Gate;

.field public gatesArray:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/Gate;",
            ">;"
        }
    .end annotation
.end field

.field public heightPixels:I
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public heightTiles:I

.field public k:Lcom/badlogic/gdx/utils/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/IntMap<",
            "Lcom/badlogic/gdx/utils/IntMap<",
            "Lcom/prineside/tdi2/Path;",
            ">;>;"
        }
    .end annotation
.end field

.field public listeners:Lcom/prineside/tdi2/ListenerGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/prineside/tdi2/ListenerGroup<",
            "Lcom/prineside/tdi2/Map$MapListener;",
            ">;"
        }
    .end annotation
.end field

.field public mapSystem:Lcom/prineside/tdi2/systems/MapSystem;

.field public p:I

.field public pathfindingNodes:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/PathNode;",
            ">;"
        }
    .end annotation
.end field

.field public final q:Lcom/badlogic/gdx/ai/pfa/indexed/IndexedGraph;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/ai/pfa/indexed/IndexedGraph<",
            "Lcom/prineside/tdi2/PathNode;",
            ">;"
        }
    .end annotation
.end field

.field public r:Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder<",
            "Lcom/prineside/tdi2/PathNode;",
            ">;"
        }
    .end annotation
.end field

.field public spawnTiles:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/tiles/SpawnTile;",
            ">;"
        }
    .end annotation
.end field

.field public targetTile:Lcom/prineside/tdi2/tiles/TargetTile;

.field public teleportGates:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/gates/TeleportGate;",
            ">;>;"
        }
    .end annotation
.end field

.field public throwExceptionOnMissingPath:Z
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public tiles:[[Lcom/prineside/tdi2/Tile;

.field public tilesArray:Lcom/badlogic/gdx/utils/DelayedRemovalArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/DelayedRemovalArray<",
            "Lcom/prineside/tdi2/Tile;",
            ">;"
        }
    .end annotation
.end field

.field public widthPixels:I
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public widthTiles:I

.field public xmMusicTrackTile:Lcom/prineside/tdi2/tiles/XmMusicTrackTile;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/prineside/tdi2/Map$2;

    invoke-direct {v0}, Lcom/prineside/tdi2/Map$2;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/Map;->t:Lcom/badlogic/gdx/ai/pfa/Heuristic;

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/Map;->u:Lcom/badlogic/gdx/utils/Array;

    new-instance v0, Lcom/badlogic/gdx/utils/IntSet;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntSet;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/Map;->v:Lcom/badlogic/gdx/utils/IntSet;

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/Map;->w:Lcom/badlogic/gdx/utils/Array;

    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/Map;->x:Lcom/badlogic/gdx/utils/ObjectMap;

    new-instance v0, Lcom/prineside/tdi2/utils/IntRectangle;

    invoke-direct {v0}, Lcom/prineside/tdi2/utils/IntRectangle;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/Map;->z:Lcom/prineside/tdi2/utils/IntRectangle;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/prineside/tdi2/ListenerGroup;

    const-class v1, Lcom/prineside/tdi2/Map$MapListener;

    invoke-direct {v0, v1}, Lcom/prineside/tdi2/ListenerGroup;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/Map;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    new-instance v0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const-class v1, Lcom/prineside/tdi2/Tile;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/Map;->tilesArray:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/Map;->teleportGates:Lcom/badlogic/gdx/utils/Array;

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/prineside/tdi2/tiles/SpawnTile;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/Map;->spawnTiles:Lcom/badlogic/gdx/utils/Array;

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/prineside/tdi2/Gate;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/Map;->gatesArray:Lcom/badlogic/gdx/utils/Array;

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/prineside/tdi2/tiles/CoreTile;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/Map;->coreTiles:Lcom/badlogic/gdx/utils/Array;

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/prineside/tdi2/enums/EnemyType;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/Map;->allowedEnemies:Lcom/badlogic/gdx/utils/Array;

    new-instance v0, Lcom/badlogic/gdx/utils/ObjectSet;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectSet;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/Map;->allowedEnemiesSet:Lcom/badlogic/gdx/utils/ObjectSet;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prineside/tdi2/Map;->throwExceptionOnMissingPath:Z

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/prineside/tdi2/PathNode;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/Map;->pathfindingNodes:Lcom/badlogic/gdx/utils/Array;

    new-instance v0, Lcom/badlogic/gdx/utils/IntMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntMap;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/Map;->k:Lcom/badlogic/gdx/utils/IntMap;

    const/4 v0, -0x1

    iput v0, p0, Lcom/prineside/tdi2/Map;->p:I

    new-instance v0, Lcom/prineside/tdi2/Map$1;

    invoke-direct {v0, p0}, Lcom/prineside/tdi2/Map$1;-><init>(Lcom/prineside/tdi2/Map;)V

    iput-object v0, p0, Lcom/prineside/tdi2/Map;->q:Lcom/badlogic/gdx/ai/pfa/indexed/IndexedGraph;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 6

    const/4 v0, 0x2

    new-array v1, v0, [I

    const/4 v2, 0x1

    aput p1, v1, v2

    const/4 v3, 0x0

    aput p2, v1, v3

    const-class v4, Lcom/prineside/tdi2/Tile;

    invoke-static {v4, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Lcom/prineside/tdi2/Tile;

    add-int/2addr p2, v2

    add-int/2addr p1, v2

    sget-object v4, Lcom/prineside/tdi2/Gate$Side;->values:[Lcom/prineside/tdi2/Gate$Side;

    array-length v4, v4

    const/4 v5, 0x3

    new-array v5, v5, [I

    aput v4, v5, v0

    aput p1, v5, v2

    aput p2, v5, v3

    const-class p1, Lcom/prineside/tdi2/Gate;

    invoke-static {p1, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[[Lcom/prineside/tdi2/Gate;

    invoke-direct {p0, v1, p1}, Lcom/prineside/tdi2/Map;-><init>([[Lcom/prineside/tdi2/Tile;[[[Lcom/prineside/tdi2/Gate;)V

    return-void
.end method

.method public constructor <init>([[Lcom/prineside/tdi2/Tile;[[[Lcom/prineside/tdi2/Gate;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/prineside/tdi2/ListenerGroup;

    const-class v1, Lcom/prineside/tdi2/Map$MapListener;

    invoke-direct {v0, v1}, Lcom/prineside/tdi2/ListenerGroup;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/Map;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    new-instance v0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const-class v1, Lcom/prineside/tdi2/Tile;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/Map;->tilesArray:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/Map;->teleportGates:Lcom/badlogic/gdx/utils/Array;

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/prineside/tdi2/tiles/SpawnTile;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/Map;->spawnTiles:Lcom/badlogic/gdx/utils/Array;

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/prineside/tdi2/Gate;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/Map;->gatesArray:Lcom/badlogic/gdx/utils/Array;

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/prineside/tdi2/tiles/CoreTile;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/Map;->coreTiles:Lcom/badlogic/gdx/utils/Array;

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/prineside/tdi2/enums/EnemyType;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/Map;->allowedEnemies:Lcom/badlogic/gdx/utils/Array;

    new-instance v0, Lcom/badlogic/gdx/utils/ObjectSet;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectSet;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/Map;->allowedEnemiesSet:Lcom/badlogic/gdx/utils/ObjectSet;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prineside/tdi2/Map;->throwExceptionOnMissingPath:Z

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/prineside/tdi2/PathNode;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/Map;->pathfindingNodes:Lcom/badlogic/gdx/utils/Array;

    new-instance v0, Lcom/badlogic/gdx/utils/IntMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntMap;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/Map;->k:Lcom/badlogic/gdx/utils/IntMap;

    const/4 v0, -0x1

    iput v0, p0, Lcom/prineside/tdi2/Map;->p:I

    new-instance v0, Lcom/prineside/tdi2/Map$1;

    invoke-direct {v0, p0}, Lcom/prineside/tdi2/Map$1;-><init>(Lcom/prineside/tdi2/Map;)V

    iput-object v0, p0, Lcom/prineside/tdi2/Map;->q:Lcom/badlogic/gdx/ai/pfa/indexed/IndexedGraph;

    iput-object p1, p0, Lcom/prineside/tdi2/Map;->tiles:[[Lcom/prineside/tdi2/Tile;

    array-length v0, p1

    iput v0, p0, Lcom/prineside/tdi2/Map;->heightTiles:I

    const/4 v1, 0x0

    aget-object v2, p1, v1

    array-length v2, v2

    iput v2, p0, Lcom/prineside/tdi2/Map;->widthTiles:I

    iput-object p2, p0, Lcom/prineside/tdi2/Map;->gates:[[[Lcom/prineside/tdi2/Gate;

    mul-int/lit16 v2, v2, 0x80

    iput v2, p0, Lcom/prineside/tdi2/Map;->widthPixels:I

    mul-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/prineside/tdi2/Map;->heightPixels:I

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/prineside/tdi2/Map;->heightTiles:I

    if-ge v0, v2, :cond_2

    const/4 v2, 0x0

    :goto_1
    iget v3, p0, Lcom/prineside/tdi2/Map;->widthTiles:I

    if-ge v2, v3, :cond_1

    aget-object v3, p1, v0

    aget-object v3, v3, v2

    if-eqz v3, :cond_0

    invoke-virtual {v3, v2, v0}, Lcom/prineside/tdi2/Tile;->setPos(II)V

    aget-object v3, p1, v0

    aget-object v3, v3, v2

    invoke-virtual {v3, p0}, Lcom/prineside/tdi2/Tile;->setMap(Lcom/prineside/tdi2/Map;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_2
    iget v0, p0, Lcom/prineside/tdi2/Map;->heightTiles:I

    if-gt p1, v0, :cond_6

    const/4 v0, 0x0

    :goto_3
    iget v2, p0, Lcom/prineside/tdi2/Map;->widthTiles:I

    if-gt v0, v2, :cond_5

    sget-object v2, Lcom/prineside/tdi2/Gate$Side;->values:[Lcom/prineside/tdi2/Gate$Side;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v3, :cond_4

    aget-object v5, v2, v4

    aget-object v6, p2, p1

    aget-object v6, v6, v0

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget-object v6, v6, v7

    if-eqz v6, :cond_3

    aget-object v6, p2, p1

    aget-object v6, v6, v0

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget-object v6, v6, v7

    invoke-virtual {v6, v0, p1, v5}, Lcom/prineside/tdi2/Gate;->setPosition(IILcom/prineside/tdi2/Gate$Side;)V

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Lcom/prineside/tdi2/Map;->updateCache()V

    return-void
.end method

.method public static synthetic a()Lcom/prineside/tdi2/Enemy;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/Map;->s:Lcom/prineside/tdi2/Enemy;

    return-object v0
.end method

.method public static synthetic b()Lcom/badlogic/gdx/utils/Array;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/Map;->w:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public static d(Lcom/prineside/tdi2/Tile;)I
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/Tile;->d:I

    mul-int/lit16 v0, v0, 0x800

    iget p0, p0, Lcom/prineside/tdi2/Tile;->b:I

    add-int/2addr v0, p0

    return v0
.end method

.method public static fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/Map;
    .locals 13

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/JsonValue;->isObject()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "width"

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "height"

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "tiles"

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v2

    const/4 v3, 0x2

    new-array v4, v3, [I

    const/4 v5, 0x1

    aput v0, v4, v5

    const/4 v6, 0x0

    aput v1, v4, v6

    const-class v7, Lcom/prineside/tdi2/Tile;

    invoke-static {v7, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[Lcom/prineside/tdi2/Tile;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const-string v8, ":"

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/badlogic/gdx/utils/JsonValue;

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->tileManager:Lcom/prineside/tdi2/managers/TileManager;

    invoke-virtual {v9, v7}, Lcom/prineside/tdi2/managers/TileManager;->createTileFromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/Tile;

    move-result-object v9

    iget v10, v9, Lcom/prineside/tdi2/Tile;->d:I

    aget-object v10, v4, v10

    iget v11, v9, Lcom/prineside/tdi2/Tile;->b:I

    aget-object v12, v10, v11

    if-nez v12, :cond_0

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->tileManager:Lcom/prineside/tdi2/managers/TileManager;

    invoke-virtual {v8, v7}, Lcom/prineside/tdi2/managers/TileManager;->createTileFromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/Tile;

    move-result-object v7

    aput-object v7, v10, v11

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Duplicate tile "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v9, Lcom/prineside/tdi2/Tile;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v9, Lcom/prineside/tdi2/Tile;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    add-int/2addr v1, v5

    add-int/2addr v0, v5

    sget-object v2, Lcom/prineside/tdi2/Gate$Side;->values:[Lcom/prineside/tdi2/Gate$Side;

    array-length v2, v2

    const/4 v7, 0x3

    new-array v7, v7, [I

    aput v2, v7, v3

    aput v0, v7, v5

    aput v1, v7, v6

    const-class v0, Lcom/prineside/tdi2/Gate;

    invoke-static {v0, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[Lcom/prineside/tdi2/Gate;

    const-string v1, "gates"

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/JsonValue;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->gateManager:Lcom/prineside/tdi2/managers/GateManager;

    invoke-virtual {v2, v1}, Lcom/prineside/tdi2/managers/GateManager;->createGateFromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/Gate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/prineside/tdi2/Gate;->getY()I

    move-result v2

    aget-object v2, v0, v2

    invoke-virtual {v1}, Lcom/prineside/tdi2/Gate;->getX()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v1}, Lcom/prineside/tdi2/Gate;->getSide()Lcom/prineside/tdi2/Gate$Side;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget-object v2, v2, v3

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lcom/prineside/tdi2/Gate;->getY()I

    move-result v2

    aget-object v2, v0, v2

    invoke-virtual {v1}, Lcom/prineside/tdi2/Gate;->getX()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v1}, Lcom/prineside/tdi2/Gate;->getSide()Lcom/prineside/tdi2/Gate$Side;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput-object v1, v2, v3

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Duplicate gate "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/prineside/tdi2/Gate;->getX()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/prineside/tdi2/Gate;->getY()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/prineside/tdi2/Gate;->getSide()Lcom/prineside/tdi2/Gate$Side;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Lcom/prineside/tdi2/Map;

    invoke-direct {p0, v4, v0}, Lcom/prineside/tdi2/Map;-><init>([[Lcom/prineside/tdi2/Tile;[[[Lcom/prineside/tdi2/Gate;)V

    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "JsonValue must be an object"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method


# virtual methods
.method public final c()Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder<",
            "Lcom/prineside/tdi2/PathNode;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/prineside/tdi2/Map;->r:Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder;

    if-nez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder;

    iget-object v1, p0, Lcom/prineside/tdi2/Map;->q:Lcom/badlogic/gdx/ai/pfa/indexed/IndexedGraph;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder;-><init>(Lcom/badlogic/gdx/ai/pfa/indexed/IndexedGraph;)V

    iput-object v0, p0, Lcom/prineside/tdi2/Map;->r:Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder;

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/Map;->r:Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder;

    return-object v0
.end method

.method public canAllEnemiesFindPath()Z
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/Map;->getEnemyTypesThatCantFindPath()Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public cpy()Lcom/prineside/tdi2/Map;
    .locals 12

    iget-object v0, p0, Lcom/prineside/tdi2/Map;->tiles:[[Lcom/prineside/tdi2/Tile;

    array-length v1, v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    array-length v0, v0

    const/4 v3, 0x2

    new-array v4, v3, [I

    const/4 v5, 0x1

    aput v0, v4, v5

    aput v1, v4, v2

    const-class v0, Lcom/prineside/tdi2/Tile;

    invoke-static {v0, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lcom/prineside/tdi2/Tile;

    const/4 v1, 0x0

    :goto_0
    iget-object v4, p0, Lcom/prineside/tdi2/Map;->tiles:[[Lcom/prineside/tdi2/Tile;

    array-length v6, v4

    if-ge v1, v6, :cond_2

    const/4 v4, 0x0

    :goto_1
    iget-object v6, p0, Lcom/prineside/tdi2/Map;->tiles:[[Lcom/prineside/tdi2/Tile;

    aget-object v6, v6, v1

    array-length v7, v6

    if-ge v4, v7, :cond_1

    aget-object v6, v6, v4

    if-eqz v6, :cond_0

    aget-object v7, v0, v1

    invoke-virtual {v6}, Lcom/prineside/tdi2/Tile;->cloneTile()Lcom/prineside/tdi2/Tile;

    move-result-object v6

    aput-object v6, v7, v4

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    array-length v1, v4

    add-int/2addr v1, v5

    aget-object v4, v4, v2

    array-length v4, v4

    add-int/2addr v4, v5

    sget-object v6, Lcom/prineside/tdi2/Gate$Side;->values:[Lcom/prineside/tdi2/Gate$Side;

    array-length v6, v6

    const/4 v7, 0x3

    new-array v7, v7, [I

    aput v6, v7, v3

    aput v4, v7, v5

    aput v1, v7, v2

    const-class v1, Lcom/prineside/tdi2/Gate;

    invoke-static {v1, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[[Lcom/prineside/tdi2/Gate;

    const/4 v3, 0x0

    :goto_2
    iget v4, p0, Lcom/prineside/tdi2/Map;->heightTiles:I

    if-gt v3, v4, :cond_6

    const/4 v4, 0x0

    :goto_3
    iget v5, p0, Lcom/prineside/tdi2/Map;->widthTiles:I

    if-gt v4, v5, :cond_5

    sget-object v5, Lcom/prineside/tdi2/Gate$Side;->values:[Lcom/prineside/tdi2/Gate$Side;

    array-length v6, v5

    const/4 v7, 0x0

    :goto_4
    if-ge v7, v6, :cond_4

    aget-object v8, v5, v7

    iget-object v9, p0, Lcom/prineside/tdi2/Map;->gates:[[[Lcom/prineside/tdi2/Gate;

    aget-object v9, v9, v3

    aget-object v9, v9, v4

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget-object v9, v9, v10

    if-eqz v9, :cond_3

    aget-object v9, v1, v3

    aget-object v9, v9, v4

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    iget-object v11, p0, Lcom/prineside/tdi2/Map;->gates:[[[Lcom/prineside/tdi2/Gate;

    aget-object v11, v11, v3

    aget-object v11, v11, v4

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget-object v8, v11, v8

    invoke-virtual {v8}, Lcom/prineside/tdi2/Gate;->cloneGate()Lcom/prineside/tdi2/Gate;

    move-result-object v8

    aput-object v8, v9, v10

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    new-instance v2, Lcom/prineside/tdi2/Map;

    invoke-direct {v2, v0, v1}, Lcom/prineside/tdi2/Map;-><init>([[Lcom/prineside/tdi2/Tile;[[[Lcom/prineside/tdi2/Gate;)V

    return-object v2
.end method

.method public cpyTrimmed()Lcom/prineside/tdi2/Map;
    .locals 13

    invoke-virtual {p0}, Lcom/prineside/tdi2/Map;->getTrimBounds()Lcom/prineside/tdi2/utils/IntRectangle;

    move-result-object v0

    iget v1, v0, Lcom/prineside/tdi2/utils/IntRectangle;->minX:I

    const/4 v2, 0x1

    const v3, 0x7fffffff

    if-ne v1, v3, :cond_0

    new-instance v0, Lcom/prineside/tdi2/Map;

    invoke-direct {v0, v2, v2}, Lcom/prineside/tdi2/Map;-><init>(II)V

    return-object v0

    :cond_0
    iget v3, v0, Lcom/prineside/tdi2/utils/IntRectangle;->maxX:I

    sub-int/2addr v3, v1

    add-int/2addr v3, v2

    iget v1, v0, Lcom/prineside/tdi2/utils/IntRectangle;->maxY:I

    iget v4, v0, Lcom/prineside/tdi2/utils/IntRectangle;->minY:I

    sub-int/2addr v1, v4

    add-int/2addr v1, v2

    const/4 v4, 0x2

    new-array v5, v4, [I

    aput v3, v5, v2

    const/4 v3, 0x0

    aput v1, v5, v3

    const-class v1, Lcom/prineside/tdi2/Tile;

    invoke-static {v1, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Lcom/prineside/tdi2/Tile;

    const/4 v5, 0x0

    :goto_0
    iget-object v6, p0, Lcom/prineside/tdi2/Map;->tiles:[[Lcom/prineside/tdi2/Tile;

    array-length v6, v6

    if-ge v5, v6, :cond_3

    const/4 v6, 0x0

    :goto_1
    iget-object v7, p0, Lcom/prineside/tdi2/Map;->tiles:[[Lcom/prineside/tdi2/Tile;

    aget-object v7, v7, v5

    array-length v8, v7

    if-ge v6, v8, :cond_2

    aget-object v7, v7, v6

    if-eqz v7, :cond_1

    iget v8, v0, Lcom/prineside/tdi2/utils/IntRectangle;->minY:I

    sub-int v8, v5, v8

    aget-object v8, v1, v8

    iget v9, v0, Lcom/prineside/tdi2/utils/IntRectangle;->minX:I

    sub-int v9, v6, v9

    invoke-virtual {v7}, Lcom/prineside/tdi2/Tile;->cloneTile()Lcom/prineside/tdi2/Tile;

    move-result-object v7

    aput-object v7, v8, v9

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    array-length v5, v1

    add-int/2addr v5, v2

    aget-object v6, v1, v3

    array-length v6, v6

    add-int/2addr v6, v2

    sget-object v7, Lcom/prineside/tdi2/Gate$Side;->values:[Lcom/prineside/tdi2/Gate$Side;

    array-length v7, v7

    const/4 v8, 0x3

    new-array v8, v8, [I

    aput v7, v8, v4

    aput v6, v8, v2

    aput v5, v8, v3

    const-class v2, Lcom/prineside/tdi2/Gate;

    invoke-static {v2, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[[Lcom/prineside/tdi2/Gate;

    const/4 v4, 0x0

    :goto_2
    iget v5, p0, Lcom/prineside/tdi2/Map;->heightTiles:I

    if-gt v4, v5, :cond_7

    const/4 v5, 0x0

    :goto_3
    iget v6, p0, Lcom/prineside/tdi2/Map;->widthTiles:I

    if-gt v5, v6, :cond_6

    sget-object v6, Lcom/prineside/tdi2/Gate$Side;->values:[Lcom/prineside/tdi2/Gate$Side;

    array-length v7, v6

    const/4 v8, 0x0

    :goto_4
    if-ge v8, v7, :cond_5

    aget-object v9, v6, v8

    iget-object v10, p0, Lcom/prineside/tdi2/Map;->gates:[[[Lcom/prineside/tdi2/Gate;

    aget-object v10, v10, v4

    aget-object v10, v10, v5

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aget-object v10, v10, v11

    if-eqz v10, :cond_4

    iget v10, v0, Lcom/prineside/tdi2/utils/IntRectangle;->minY:I

    sub-int v10, v4, v10

    aget-object v10, v2, v10

    iget v11, v0, Lcom/prineside/tdi2/utils/IntRectangle;->minX:I

    sub-int v11, v5, v11

    aget-object v10, v10, v11

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    iget-object v12, p0, Lcom/prineside/tdi2/Map;->gates:[[[Lcom/prineside/tdi2/Gate;

    aget-object v12, v12, v4

    aget-object v12, v12, v5

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget-object v9, v12, v9

    invoke-virtual {v9}, Lcom/prineside/tdi2/Gate;->cloneGate()Lcom/prineside/tdi2/Gate;

    move-result-object v9

    aput-object v9, v10, v11

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_7
    new-instance v0, Lcom/prineside/tdi2/Map;

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/Map;-><init>([[Lcom/prineside/tdi2/Tile;[[[Lcom/prineside/tdi2/Gate;)V

    return-object v0
.end method

.method public final e(Lcom/prineside/tdi2/PathNode;Lcom/prineside/tdi2/PathNode;Z)V
    .locals 8

    iget v0, p1, Lcom/prineside/tdi2/PathNode;->x:I

    iget v1, p1, Lcom/prineside/tdi2/PathNode;->y:I

    iget v2, p2, Lcom/prineside/tdi2/PathNode;->x:I

    iget v3, p2, Lcom/prineside/tdi2/PathNode;->y:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/prineside/tdi2/Map;->f(IIII)I

    move-result v0

    iget v1, p2, Lcom/prineside/tdi2/PathNode;->x:I

    iget v2, p2, Lcom/prineside/tdi2/PathNode;->y:I

    iget v3, p1, Lcom/prineside/tdi2/PathNode;->x:I

    iget v4, p1, Lcom/prineside/tdi2/PathNode;->y:I

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/prineside/tdi2/Map;->f(IIII)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/StrictMath;->min(II)I

    move-result v0

    if-eqz p3, :cond_0

    neg-int v0, v0

    :cond_0
    sget-object v1, Lcom/prineside/tdi2/Map;->v:Lcom/badlogic/gdx/utils/IntSet;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/IntSet;->contains(I)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/IntSet;->add(I)Z

    iget-object v0, p1, Lcom/prineside/tdi2/PathNode;->connections:Lcom/badlogic/gdx/utils/Array;

    new-instance v7, Lcom/prineside/tdi2/Path$Connection;

    iget v3, p1, Lcom/prineside/tdi2/PathNode;->index:I

    iget v4, p2, Lcom/prineside/tdi2/PathNode;->index:I

    iget v6, p2, Lcom/prineside/tdi2/PathNode;->cost:F

    move-object v1, v7

    move-object v2, p0

    move v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/prineside/tdi2/Path$Connection;-><init>(Lcom/prineside/tdi2/Map;IIZF)V

    invoke-virtual {v0, v7}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    iget-object v0, p2, Lcom/prineside/tdi2/PathNode;->connections:Lcom/badlogic/gdx/utils/Array;

    new-instance v7, Lcom/prineside/tdi2/Path$Connection;

    iget v3, p2, Lcom/prineside/tdi2/PathNode;->index:I

    iget v4, p1, Lcom/prineside/tdi2/PathNode;->index:I

    iget v6, p1, Lcom/prineside/tdi2/PathNode;->cost:F

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/prineside/tdi2/Path$Connection;-><init>(Lcom/prineside/tdi2/Map;IIZF)V

    invoke-virtual {v0, v7}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final f(IIII)I
    .locals 0

    mul-int/lit16 p2, p2, 0x80

    add-int/2addr p1, p2

    mul-int/lit16 p3, p3, 0x80

    mul-int/lit16 p3, p3, 0x80

    add-int/2addr p1, p3

    mul-int/lit16 p4, p4, 0x80

    mul-int/lit16 p4, p4, 0x80

    mul-int/lit16 p4, p4, 0x80

    add-int/2addr p1, p4

    return p1
.end method

.method public finalize()V
    .locals 0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public findPath(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/Path;Lcom/prineside/tdi2/Tile;)Z
    .locals 2

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/Map;->targetTile:Lcom/prineside/tdi2/tiles/TargetTile;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/prineside/tdi2/Map;->rebuildPathfindingIfNeeded()V

    sput-object p1, Lcom/prineside/tdi2/Map;->s:Lcom/prineside/tdi2/Enemy;

    iget-object p1, p0, Lcom/prineside/tdi2/Map;->d:[[Lcom/prineside/tdi2/PathNode;

    invoke-virtual {p3}, Lcom/prineside/tdi2/Tile;->getY()I

    move-result v0

    aget-object p1, p1, v0

    invoke-virtual {p3}, Lcom/prineside/tdi2/Tile;->getX()I

    move-result p3

    aget-object p1, p1, p3

    iget-object p3, p0, Lcom/prineside/tdi2/Map;->d:[[Lcom/prineside/tdi2/PathNode;

    iget-object v0, p0, Lcom/prineside/tdi2/Map;->targetTile:Lcom/prineside/tdi2/tiles/TargetTile;

    invoke-virtual {v0}, Lcom/prineside/tdi2/Tile;->getY()I

    move-result v0

    aget-object p3, p3, v0

    iget-object v0, p0, Lcom/prineside/tdi2/Map;->targetTile:Lcom/prineside/tdi2/tiles/TargetTile;

    invoke-virtual {v0}, Lcom/prineside/tdi2/Tile;->getX()I

    move-result v0

    aget-object p3, p3, v0

    invoke-virtual {p0}, Lcom/prineside/tdi2/Map;->c()Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder;

    move-result-object v0

    sget-object v1, Lcom/prineside/tdi2/Map;->t:Lcom/badlogic/gdx/ai/pfa/Heuristic;

    invoke-virtual {v0, p1, p3, v1, p2}, Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder;->searchNodePath(Ljava/lang/Object;Ljava/lang/Object;Lcom/badlogic/gdx/ai/pfa/Heuristic;Lcom/badlogic/gdx/ai/pfa/GraphPath;)Z

    move-result p1

    const/4 p2, 0x0

    sput-object p2, Lcom/prineside/tdi2/Map;->s:Lcom/prineside/tdi2/Enemy;

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "targetTile is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "startTile is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "outPath is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "enemy is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public findPath(Lcom/prineside/tdi2/Path;Lcom/prineside/tdi2/Tile;Lcom/prineside/tdi2/Tile;)Z
    .locals 2

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcom/prineside/tdi2/Map;->rebuildPathfindingIfNeeded()V

    const/4 v0, 0x0

    sput-object v0, Lcom/prineside/tdi2/Map;->s:Lcom/prineside/tdi2/Enemy;

    iget-object v0, p0, Lcom/prineside/tdi2/Map;->d:[[Lcom/prineside/tdi2/PathNode;

    invoke-virtual {p2}, Lcom/prineside/tdi2/Tile;->getY()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p2}, Lcom/prineside/tdi2/Tile;->getX()I

    move-result p2

    aget-object p2, v0, p2

    iget-object v0, p0, Lcom/prineside/tdi2/Map;->d:[[Lcom/prineside/tdi2/PathNode;

    invoke-virtual {p3}, Lcom/prineside/tdi2/Tile;->getY()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p3}, Lcom/prineside/tdi2/Tile;->getX()I

    move-result p3

    aget-object p3, v0, p3

    invoke-virtual {p0}, Lcom/prineside/tdi2/Map;->c()Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder;

    move-result-object v0

    sget-object v1, Lcom/prineside/tdi2/Map;->t:Lcom/badlogic/gdx/ai/pfa/Heuristic;

    invoke-virtual {v0, p2, p3, v1, p1}, Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder;->searchNodePath(Ljava/lang/Object;Ljava/lang/Object;Lcom/badlogic/gdx/ai/pfa/Heuristic;Lcom/badlogic/gdx/ai/pfa/GraphPath;)Z

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "targetTile is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "startTile is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "outPath is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public fitGateToMapPos(FFLcom/prineside/tdi2/Gate;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    const/high16 v2, 0x43000000    # 128.0f

    div-float v3, p1, v2

    float-to-int v3, v3

    div-float v4, p2, v2

    float-to-int v4, v4

    rem-float v5, p1, v2

    rem-float v6, p2, v2

    const/high16 v7, 0x42800000    # 64.0f

    invoke-static {v5, v6, v7, v2}, Lcom/prineside/tdi2/utils/PMath;->getSquareDistanceBetweenPoints(FFFF)F

    move-result v8

    const/4 v9, 0x0

    invoke-static {v5, v6, v7, v9}, Lcom/prineside/tdi2/utils/PMath;->getSquareDistanceBetweenPoints(FFFF)F

    move-result v10

    invoke-static {v5, v6, v9, v7}, Lcom/prineside/tdi2/utils/PMath;->getSquareDistanceBetweenPoints(FFFF)F

    move-result v9

    invoke-static {v5, v6, v2, v7}, Lcom/prineside/tdi2/utils/PMath;->getSquareDistanceBetweenPoints(FFFF)F

    move-result v7

    const/4 v11, -0x1

    const v12, 0x41919999    # 18.199999f

    const/4 v13, 0x1

    const/4 v14, 0x0

    cmpg-float v15, v8, v10

    if-gtz v15, :cond_4

    cmpg-float v15, v8, v9

    if-gtz v15, :cond_4

    cmpg-float v15, v8, v7

    if-gtz v15, :cond_4

    sub-float/2addr v2, v6

    cmpl-float v2, v2, v12

    if-lez v2, :cond_0

    return v14

    :cond_0
    if-ltz v3, :cond_3

    iget v2, v0, Lcom/prineside/tdi2/Map;->widthTiles:I

    if-lt v3, v2, :cond_1

    goto :goto_0

    :cond_1
    if-lt v4, v11, :cond_3

    iget v2, v0, Lcom/prineside/tdi2/Map;->heightTiles:I

    if-lt v4, v2, :cond_2

    goto :goto_0

    :cond_2
    add-int/2addr v4, v13

    sget-object v2, Lcom/prineside/tdi2/Gate$Side;->BOTTOM:Lcom/prineside/tdi2/Gate$Side;

    invoke-virtual {v1, v3, v4, v2}, Lcom/prineside/tdi2/Gate;->setPosition(IILcom/prineside/tdi2/Gate$Side;)V

    return v13

    :cond_3
    :goto_0
    return v14

    :cond_4
    const v15, -0x3e6e6667    # -18.199999f

    cmpg-float v16, v10, v8

    if-gtz v16, :cond_9

    cmpg-float v16, v10, v7

    if-gtz v16, :cond_9

    cmpg-float v16, v10, v9

    if-gtz v16, :cond_9

    cmpl-float v2, v6, v12

    if-gtz v2, :cond_8

    cmpg-float v2, v6, v15

    if-gez v2, :cond_5

    goto :goto_1

    :cond_5
    if-ltz v3, :cond_8

    iget v2, v0, Lcom/prineside/tdi2/Map;->widthTiles:I

    if-lt v3, v2, :cond_6

    goto :goto_1

    :cond_6
    if-ltz v4, :cond_8

    iget v2, v0, Lcom/prineside/tdi2/Map;->heightTiles:I

    if-le v4, v2, :cond_7

    goto :goto_1

    :cond_7
    sget-object v2, Lcom/prineside/tdi2/Gate$Side;->BOTTOM:Lcom/prineside/tdi2/Gate$Side;

    invoke-virtual {v1, v3, v4, v2}, Lcom/prineside/tdi2/Gate;->setPosition(IILcom/prineside/tdi2/Gate$Side;)V

    return v13

    :cond_8
    :goto_1
    return v14

    :cond_9
    cmpg-float v6, v9, v8

    if-gtz v6, :cond_e

    cmpg-float v6, v9, v10

    if-gtz v6, :cond_e

    cmpg-float v6, v9, v7

    if-gtz v6, :cond_e

    cmpl-float v2, v5, v12

    if-gtz v2, :cond_d

    cmpg-float v2, v5, v15

    if-gez v2, :cond_a

    goto :goto_2

    :cond_a
    if-ltz v4, :cond_d

    iget v2, v0, Lcom/prineside/tdi2/Map;->heightTiles:I

    if-lt v4, v2, :cond_b

    goto :goto_2

    :cond_b
    if-ltz v3, :cond_d

    iget v2, v0, Lcom/prineside/tdi2/Map;->widthTiles:I

    if-le v3, v2, :cond_c

    goto :goto_2

    :cond_c
    sget-object v2, Lcom/prineside/tdi2/Gate$Side;->LEFT:Lcom/prineside/tdi2/Gate$Side;

    invoke-virtual {v1, v3, v4, v2}, Lcom/prineside/tdi2/Gate;->setPosition(IILcom/prineside/tdi2/Gate$Side;)V

    return v13

    :cond_d
    :goto_2
    return v14

    :cond_e
    sub-float/2addr v2, v5

    cmpl-float v2, v2, v12

    if-lez v2, :cond_f

    return v14

    :cond_f
    if-ltz v4, :cond_12

    iget v2, v0, Lcom/prineside/tdi2/Map;->heightTiles:I

    if-lt v4, v2, :cond_10

    goto :goto_3

    :cond_10
    if-lt v3, v11, :cond_12

    iget v2, v0, Lcom/prineside/tdi2/Map;->widthTiles:I

    if-lt v3, v2, :cond_11

    goto :goto_3

    :cond_11
    add-int/2addr v3, v13

    sget-object v2, Lcom/prineside/tdi2/Gate$Side;->LEFT:Lcom/prineside/tdi2/Gate$Side;

    invoke-virtual {v1, v3, v4, v2}, Lcom/prineside/tdi2/Gate;->setPosition(IILcom/prineside/tdi2/Gate$Side;)V

    return v13

    :cond_12
    :goto_3
    return v14
.end method

.method public final g(II)V
    .locals 6

    const/4 v0, -0x1

    const/4 v1, -0x1

    :goto_0
    const/4 v2, 0x1

    if-gt v1, v2, :cond_3

    const/4 v3, -0x1

    :goto_1
    if-gt v3, v2, :cond_2

    if-nez v1, :cond_0

    if-nez v3, :cond_0

    goto :goto_2

    :cond_0
    add-int v4, p1, v1

    add-int v5, p2, v3

    invoke-virtual {p0, v4, v5}, Lcom/prineside/tdi2/Map;->getTile(II)Lcom/prineside/tdi2/Tile;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/prineside/tdi2/Tile;->resetNeighborTilesCache()V

    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public generateSeed()I
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Lcom/prineside/tdi2/Map;->heightTiles:I

    if-ge v2, v3, :cond_3

    const/4 v3, 0x0

    :goto_1
    iget v4, p0, Lcom/prineside/tdi2/Map;->widthTiles:I

    if-ge v3, v4, :cond_2

    iget-object v4, p0, Lcom/prineside/tdi2/Map;->tiles:[[Lcom/prineside/tdi2/Tile;

    aget-object v4, v4, v2

    aget-object v4, v4, v3

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/prineside/tdi2/Tile;->generateSeedSalt()I

    move-result v5

    if-eqz v5, :cond_0

    mul-int/lit8 v1, v1, 0x13

    add-int/2addr v1, v5

    :cond_0
    mul-int/lit8 v1, v1, 0x17

    iget-object v5, v4, Lcom/prineside/tdi2/Tile;->type:Lcom/prineside/tdi2/enums/TileType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    add-int/2addr v1, v5

    mul-int/lit8 v1, v1, 0x1d

    iget v5, v4, Lcom/prineside/tdi2/Tile;->b:I

    add-int/2addr v1, v5

    mul-int/lit8 v1, v1, 0x1f

    iget v4, v4, Lcom/prineside/tdi2/Tile;->d:I

    add-int/2addr v1, v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public getAverageDifficulty()I
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/Map;->spawnTiles:Lcom/badlogic/gdx/utils/Array;

    iget v1, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/tiles/SpawnTile;

    iget v2, v2, Lcom/prineside/tdi2/tiles/SpawnTile;->difficulty:I

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/Map;->spawnTiles:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    div-int/2addr v1, v0

    return v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No spawn tiles on map"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public getBossWaves()Lcom/badlogic/gdx/utils/IntMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/IntMap<",
            "Lcom/prineside/tdi2/enums/BossType;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/prineside/tdi2/Map;->spawnTiles:Lcom/badlogic/gdx/utils/Array;

    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v3, :cond_1

    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/prineside/tdi2/tiles/SpawnTile;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/prineside/tdi2/tiles/SpawnTile;->getAllowedEnemiesSet()Lcom/badlogic/gdx/utils/ObjectSet;

    move-result-object v2

    sget-object v3, Lcom/prineside/tdi2/enums/EnemyType;->BOSS:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/ObjectSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    const/4 v2, 0x0

    if-eqz v1, :cond_5

    move-object v3, v2

    const/4 v1, 0x0

    :goto_2
    iget v4, p0, Lcom/prineside/tdi2/Map;->heightTiles:I

    if-ge v1, v4, :cond_4

    const/4 v4, 0x0

    :goto_3
    iget v5, p0, Lcom/prineside/tdi2/Map;->widthTiles:I

    if-ge v4, v5, :cond_3

    iget-object v5, p0, Lcom/prineside/tdi2/Map;->tiles:[[Lcom/prineside/tdi2/Tile;

    aget-object v5, v5, v1

    aget-object v5, v5, v4

    instance-of v6, v5, Lcom/prineside/tdi2/tiles/BossTile;

    if-eqz v6, :cond_2

    move-object v3, v5

    check-cast v3, Lcom/prineside/tdi2/tiles/BossTile;

    goto :goto_4

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_3
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/prineside/tdi2/tiles/BossTile;->getBossWaveMap()Lcom/badlogic/gdx/utils/IntMap;

    move-result-object v0

    return-object v0

    :cond_5
    return-object v2
.end method

.method public getComplexityWaveMilestones()[I
    .locals 5

    iget-object v0, p0, Lcom/prineside/tdi2/Map;->tilesArray:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    iget-object v4, p0, Lcom/prineside/tdi2/Map;->tilesArray:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget-object v4, v4, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v4, [Lcom/prineside/tdi2/Tile;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lcom/prineside/tdi2/Tile;->getQuality()F

    move-result v4

    add-float/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/high16 v0, 0x44100000    # 576.0f

    div-float/2addr v2, v0

    const/4 v0, 0x3

    new-array v0, v0, [I

    const/high16 v3, 0x41700000    # 15.0f

    mul-float v4, v2, v3

    add-float/2addr v4, v3

    invoke-static {v4}, Ljava/lang/StrictMath;->round(F)I

    move-result v3

    aput v3, v0, v1

    const/high16 v1, 0x41d80000    # 27.0f

    mul-float v3, v2, v1

    add-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/StrictMath;->round(F)I

    move-result v1

    const/4 v3, 0x1

    aput v1, v0, v3

    const/4 v1, 0x2

    const/high16 v3, 0x42200000    # 40.0f

    mul-float v2, v2, v3

    add-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/StrictMath;->round(F)I

    move-result v2

    aput v2, v0, v1

    return-object v0
.end method

.method public getDefaultPath(Lcom/prineside/tdi2/enums/EnemyType;Lcom/prineside/tdi2/tiles/SpawnTile;)Lcom/prineside/tdi2/Path;
    .locals 5

    if-eqz p2, :cond_5

    invoke-virtual {p0}, Lcom/prineside/tdi2/Map;->rebuildPathfindingIfNeeded()V

    invoke-static {p2}, Lcom/prineside/tdi2/Map;->d(Lcom/prineside/tdi2/Tile;)I

    move-result v0

    iget-object v1, p0, Lcom/prineside/tdi2/Map;->k:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/IntMap;->containsKey(I)Z

    move-result v1

    const-string v2, "No paths from "

    const/4 v3, 0x0

    if-nez v1, :cond_2

    iget-boolean p1, p0, Lcom/prineside/tdi2/Map;->throwExceptionOnMissingPath:Z

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/prineside/tdi2/Map;->k:Lcom/badlogic/gdx/utils/IntMap;

    iget v0, v0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " total paths:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Map"

    invoke-static {v0, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/prineside/tdi2/Map;->k:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/IntMap;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/IntMap$Entry;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/badlogic/gdx/utils/IntMap$Entry;->key:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/IntMap$Entry;->value:Ljava/lang/Object;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-object v3

    :cond_2
    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->enemyManager:Lcom/prineside/tdi2/managers/EnemyManager;

    invoke-virtual {v1, p1}, Lcom/prineside/tdi2/managers/EnemyManager;->getMainEnemyType(Lcom/prineside/tdi2/enums/EnemyType;)Lcom/prineside/tdi2/enums/EnemyType;

    move-result-object p1

    iget-object v1, p0, Lcom/prineside/tdi2/Map;->k:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/IntMap;->containsKey(I)Z

    move-result v1

    if-nez v1, :cond_4

    iget-boolean v0, p0, Lcom/prineside/tdi2/Map;->throwExceptionOnMissingPath:Z

    if-nez v0, :cond_3

    return-object v3

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/prineside/tdi2/Tile;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " for enemy type "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/IntMap;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/Path;

    return-object p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "spawnTile is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public getDefaultPathWithoutStateChanges(Lcom/prineside/tdi2/enums/EnemyType;Lcom/prineside/tdi2/tiles/SpawnTile;)Lcom/prineside/tdi2/Path;
    .locals 2

    if-eqz p2, :cond_2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->enemyManager:Lcom/prineside/tdi2/managers/EnemyManager;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/managers/EnemyManager;->getMainEnemyType(Lcom/prineside/tdi2/enums/EnemyType;)Lcom/prineside/tdi2/enums/EnemyType;

    move-result-object p1

    invoke-static {p2}, Lcom/prineside/tdi2/Map;->d(Lcom/prineside/tdi2/Tile;)I

    move-result p2

    iget-object v0, p0, Lcom/prineside/tdi2/Map;->k:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/IntMap;->containsKey(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/Map;->k:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/IntMap;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/utils/IntMap;->containsKey(I)Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/utils/IntMap;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/Path;

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "spawnTile is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getEnemyTypesThatCantFindPath()Lcom/badlogic/gdx/utils/Array;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/Map$EnemyTypeSpawnPair;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/prineside/tdi2/Map;->u:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    invoke-virtual {p0}, Lcom/prineside/tdi2/Map;->rebuildPathfindingIfNeeded()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/prineside/tdi2/Map;->spawnTiles:Lcom/badlogic/gdx/utils/Array;

    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v3, :cond_3

    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/prineside/tdi2/tiles/SpawnTile;

    aget-object v2, v2, v1

    invoke-static {v2}, Lcom/prineside/tdi2/Map;->d(Lcom/prineside/tdi2/Tile;)I

    move-result v3

    invoke-virtual {v2}, Lcom/prineside/tdi2/tiles/SpawnTile;->getAllowedEnemies()Lcom/badlogic/gdx/utils/Array;

    move-result-object v4

    const/4 v5, 0x0

    :goto_1
    iget v6, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v5, v6, :cond_2

    iget-object v6, p0, Lcom/prineside/tdi2/Map;->k:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v6, v3}, Lcom/badlogic/gdx/utils/IntMap;->containsKey(I)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/prineside/tdi2/Map;->k:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v6, v3}, Lcom/badlogic/gdx/utils/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;

    iget-object v7, v7, Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;->enemyType:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/utils/IntMap;->containsKey(I)Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    sget-object v6, Lcom/prineside/tdi2/Map;->u:Lcom/badlogic/gdx/utils/Array;

    new-instance v7, Lcom/prineside/tdi2/Map$EnemyTypeSpawnPair;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;

    iget-object v8, v8, Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;->enemyType:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-direct {v7, v8, v2}, Lcom/prineside/tdi2/Map$EnemyTypeSpawnPair;-><init>(Lcom/prineside/tdi2/enums/EnemyType;Lcom/prineside/tdi2/tiles/SpawnTile;)V

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/prineside/tdi2/Map;->u:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public getGate(IILcom/prineside/tdi2/Gate$Side;)Lcom/prineside/tdi2/Gate;
    .locals 1

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/prineside/tdi2/Map;->widthTiles:I

    if-gt p1, v0, :cond_0

    if-ltz p2, :cond_0

    iget v0, p0, Lcom/prineside/tdi2/Map;->heightTiles:I

    if-gt p2, v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/Map;->gates:[[[Lcom/prineside/tdi2/Gate;

    aget-object p2, v0, p2

    aget-object p1, p2, p1

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget-object p1, p1, p2

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getGateByMapPos(FF)Lcom/prineside/tdi2/Gate;
    .locals 3

    sget-object v0, Lcom/prineside/tdi2/Map;->y:Lcom/prineside/tdi2/Gate;

    if-nez v0, :cond_0

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->gateManager:Lcom/prineside/tdi2/managers/GateManager;

    sget-object v1, Lcom/prineside/tdi2/enums/GateType;->values:[Lcom/prineside/tdi2/enums/GateType;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/GateManager;->getFactory(Lcom/prineside/tdi2/enums/GateType;)Lcom/prineside/tdi2/Gate$Factory;

    move-result-object v0

    invoke-interface {v0}, Lcom/prineside/tdi2/Gate$Factory;->create()Lcom/prineside/tdi2/Gate;

    move-result-object v0

    sput-object v0, Lcom/prineside/tdi2/Map;->y:Lcom/prineside/tdi2/Gate;

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/Map;->y:Lcom/prineside/tdi2/Gate;

    invoke-virtual {p0, p1, p2, v0}, Lcom/prineside/tdi2/Map;->fitGateToMapPos(FFLcom/prineside/tdi2/Gate;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/prineside/tdi2/Map;->y:Lcom/prineside/tdi2/Gate;

    invoke-virtual {p1}, Lcom/prineside/tdi2/Gate;->getX()I

    move-result p1

    sget-object p2, Lcom/prineside/tdi2/Map;->y:Lcom/prineside/tdi2/Gate;

    invoke-virtual {p2}, Lcom/prineside/tdi2/Gate;->getY()I

    move-result p2

    sget-object v0, Lcom/prineside/tdi2/Map;->y:Lcom/prineside/tdi2/Gate;

    invoke-virtual {v0}, Lcom/prineside/tdi2/Gate;->getSide()Lcom/prineside/tdi2/Gate$Side;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/prineside/tdi2/Map;->getGate(IILcom/prineside/tdi2/Gate$Side;)Lcom/prineside/tdi2/Gate;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getMaxedAbilitiesConfiguration()Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;
    .locals 13

    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    sget-object v1, Lcom/prineside/tdi2/enums/AbilityType;->values:[Lcom/prineside/tdi2/enums/AbilityType;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->abilityManager:Lcom/prineside/tdi2/managers/AbilityManager;

    invoke-virtual {v6, v5}, Lcom/prineside/tdi2/managers/AbilityManager;->getMaxPerGameGameValueType(Lcom/prineside/tdi2/enums/AbilityType;)Lcom/prineside/tdi2/enums/GameValueType;

    move-result-object v6

    invoke-virtual {v0, v6, v5}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/badlogic/gdx/utils/Array;

    const-class v2, Lcom/prineside/tdi2/GameValueConfig;

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/prineside/tdi2/Map;->targetTile:Lcom/prineside/tdi2/tiles/TargetTile;

    invoke-virtual {v2}, Lcom/prineside/tdi2/tiles/TargetTile;->getGameValues()Lcom/badlogic/gdx/utils/Array;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Array;->addAll(Lcom/badlogic/gdx/utils/Array;)V

    const/4 v2, 0x0

    :goto_1
    iget-object v4, p0, Lcom/prineside/tdi2/Map;->tilesArray:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v5, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v2, v5, :cond_2

    iget-object v4, v4, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v4, [Lcom/prineside/tdi2/Tile;

    aget-object v4, v4, v2

    iget-object v5, v4, Lcom/prineside/tdi2/Tile;->type:Lcom/prineside/tdi2/enums/TileType;

    sget-object v6, Lcom/prineside/tdi2/enums/TileType;->GAME_VALUE:Lcom/prineside/tdi2/enums/TileType;

    if-ne v5, v6, :cond_1

    check-cast v4, Lcom/prineside/tdi2/tiles/GameValueTile;

    new-instance v11, Lcom/prineside/tdi2/GameValueConfig;

    invoke-virtual {v4}, Lcom/prineside/tdi2/tiles/GameValueTile;->getGameValueType()Lcom/prineside/tdi2/enums/GameValueType;

    move-result-object v6

    invoke-virtual {v4}, Lcom/prineside/tdi2/tiles/GameValueTile;->getDelta()D

    move-result-wide v7

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Lcom/prineside/tdi2/GameValueConfig;-><init>(Lcom/prineside/tdi2/enums/GameValueType;DZZ)V

    invoke-virtual {v1, v11}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    new-instance v2, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;

    invoke-direct {v2}, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_2
    iget v6, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v4, v6, :cond_6

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/prineside/tdi2/GameValueConfig;

    iget-object v7, v6, Lcom/prineside/tdi2/GameValueConfig;->type:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v0, v7}, Lcom/badlogic/gdx/utils/ObjectMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 v7, 0x0

    :goto_3
    const/4 v8, 0x6

    if-ge v7, v8, :cond_4

    iget-object v9, v2, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;->slots:[Lcom/prineside/tdi2/enums/AbilityType;

    aget-object v9, v9, v7

    iget-object v10, v6, Lcom/prineside/tdi2/GameValueConfig;->type:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v0, v10}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-ne v9, v10, :cond_3

    iget-object v9, v2, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;->counts:[I

    aget v10, v9, v7

    iget-wide v11, v6, Lcom/prineside/tdi2/GameValueConfig;->value:D

    double-to-float v11, v11

    invoke-static {v11}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v11

    add-int/2addr v10, v11

    aput v10, v9, v7

    const/4 v7, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_4
    const/4 v7, 0x0

    :goto_4
    if-nez v7, :cond_5

    iget-object v7, v2, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;->slots:[Lcom/prineside/tdi2/enums/AbilityType;

    iget-object v9, v6, Lcom/prineside/tdi2/GameValueConfig;->type:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v0, v9}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/prineside/tdi2/enums/AbilityType;

    aput-object v9, v7, v5

    iget-object v7, v2, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;->counts:[I

    iget-wide v9, v6, Lcom/prineside/tdi2/GameValueConfig;->value:D

    double-to-float v6, v9

    invoke-static {v6}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v6

    aput v6, v7, v5

    add-int/lit8 v5, v5, 0x1

    if-ne v5, v8, :cond_5

    goto :goto_5

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    :goto_5
    return-object v2
.end method

.method public getNewPath(Lcom/prineside/tdi2/enums/EnemyType;Lcom/prineside/tdi2/tiles/SpawnTile;)Lcom/prineside/tdi2/Path;
    .locals 1

    new-instance v0, Lcom/prineside/tdi2/Path;

    invoke-virtual {p0, p1, p2}, Lcom/prineside/tdi2/Map;->getDefaultPath(Lcom/prineside/tdi2/enums/EnemyType;Lcom/prineside/tdi2/tiles/SpawnTile;)Lcom/prineside/tdi2/Path;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/prineside/tdi2/Path;-><init>(Lcom/prineside/tdi2/Path;)V

    return-object v0
.end method

.method public getPrestigeScore()D
    .locals 6

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lcom/prineside/tdi2/Map;->tilesArray:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v5, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v3, v5, :cond_0

    iget-object v4, v4, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v4, [Lcom/prineside/tdi2/Tile;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lcom/prineside/tdi2/Tile;->getPrestigeScore()D

    move-result-wide v4

    add-double/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/prineside/tdi2/Map;->gatesArray:Lcom/badlogic/gdx/utils/Array;

    iget v4, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v4, :cond_1

    iget-object v3, v3, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Lcom/prineside/tdi2/Gate;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/prineside/tdi2/Gate;->getPrestigeScore()D

    move-result-wide v3

    add-double/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-wide v1
.end method

.method public getPreview()Lcom/prineside/tdi2/managers/BasicLevelManager$MapPreview;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/Map;->a:Lcom/prineside/tdi2/managers/BasicLevelManager$MapPreview;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/prineside/tdi2/Map;->regeneratePreview()V

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/Map;->a:Lcom/prineside/tdi2/managers/BasicLevelManager$MapPreview;

    return-object v0
.end method

.method public getResourcesCount()[I
    .locals 12

    sget-object v0, Lcom/prineside/tdi2/enums/ResourceType;->values:[Lcom/prineside/tdi2/enums/ResourceType;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/prineside/tdi2/Map;->tilesArray:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    iget-object v4, p0, Lcom/prineside/tdi2/Map;->tilesArray:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget-object v4, v4, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v4, [Lcom/prineside/tdi2/Tile;

    aget-object v4, v4, v3

    instance-of v5, v4, Lcom/prineside/tdi2/tiles/SourceTile;

    if-eqz v5, :cond_1

    check-cast v4, Lcom/prineside/tdi2/tiles/SourceTile;

    sget-object v5, Lcom/prineside/tdi2/enums/ResourceType;->values:[Lcom/prineside/tdi2/enums/ResourceType;

    array-length v6, v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_1
    if-ge v7, v6, :cond_0

    aget-object v9, v5, v7

    invoke-virtual {v4, v9}, Lcom/prineside/tdi2/tiles/SourceTile;->getResourcesCount(Lcom/prineside/tdi2/enums/ResourceType;)I

    move-result v10

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget v11, v0, v9

    add-int/2addr v11, v10

    aput v11, v0, v9

    add-int/2addr v8, v10

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    sget-object v5, Lcom/prineside/tdi2/enums/ResourceType;->values:[Lcom/prineside/tdi2/enums/ResourceType;

    array-length v5, v5

    aget v6, v0, v5

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v4}, Lcom/prineside/tdi2/tiles/SourceTile;->getResourceDensity()F

    move-result v4

    sub-float/2addr v7, v4

    int-to-float v4, v8

    mul-float v7, v7, v4

    invoke-static {v7}, Ljava/lang/StrictMath;->round(F)I

    move-result v4

    add-int/2addr v6, v4

    aput v6, v0, v5

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getTile(II)Lcom/prineside/tdi2/Tile;
    .locals 2

    const/4 v0, -0x1

    if-le p2, v0, :cond_0

    iget v1, p0, Lcom/prineside/tdi2/Map;->heightTiles:I

    if-ge p2, v1, :cond_0

    if-le p1, v0, :cond_0

    iget v0, p0, Lcom/prineside/tdi2/Map;->widthTiles:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/Map;->tiles:[[Lcom/prineside/tdi2/Tile;

    aget-object p2, v0, p2

    aget-object p1, p2, p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getTileByMapPos(FF)Lcom/prineside/tdi2/Tile;
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-ltz v1, :cond_1

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x43000000    # 128.0f

    div-float/2addr p1, v0

    float-to-int p1, p1

    div-float/2addr p2, v0

    float-to-int p2, p2

    invoke-virtual {p0, p1, p2}, Lcom/prineside/tdi2/Map;->getTile(II)Lcom/prineside/tdi2/Tile;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getTrimBounds()Lcom/prineside/tdi2/utils/IntRectangle;
    .locals 12

    const/high16 v0, -0x80000000

    const v1, 0x7fffffff

    const/4 v2, 0x0

    const/high16 v1, -0x80000000

    const v3, 0x7fffffff

    const v4, 0x7fffffff

    const/4 v5, 0x0

    :goto_0
    iget-object v6, p0, Lcom/prineside/tdi2/Map;->tiles:[[Lcom/prineside/tdi2/Tile;

    array-length v6, v6

    if-ge v5, v6, :cond_5

    const/4 v6, 0x0

    :goto_1
    iget-object v7, p0, Lcom/prineside/tdi2/Map;->tiles:[[Lcom/prineside/tdi2/Tile;

    aget-object v7, v7, v5

    array-length v8, v7

    if-ge v6, v8, :cond_4

    aget-object v7, v7, v6

    if-eqz v7, :cond_3

    if-ge v6, v3, :cond_0

    move v3, v6

    :cond_0
    if-le v6, v0, :cond_1

    move v0, v6

    :cond_1
    if-ge v5, v4, :cond_2

    move v4, v5

    :cond_2
    if-le v5, v1, :cond_3

    move v1, v5

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    const/4 v5, 0x0

    :goto_2
    iget v6, p0, Lcom/prineside/tdi2/Map;->heightTiles:I

    if-gt v5, v6, :cond_c

    const/4 v6, 0x0

    :goto_3
    iget v7, p0, Lcom/prineside/tdi2/Map;->widthTiles:I

    if-gt v6, v7, :cond_b

    sget-object v7, Lcom/prineside/tdi2/Gate$Side;->values:[Lcom/prineside/tdi2/Gate$Side;

    array-length v8, v7

    const/4 v9, 0x0

    :goto_4
    if-ge v9, v8, :cond_a

    aget-object v10, v7, v9

    iget-object v11, p0, Lcom/prineside/tdi2/Map;->gates:[[[Lcom/prineside/tdi2/Gate;

    aget-object v11, v11, v5

    aget-object v11, v11, v6

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget-object v10, v11, v10

    if-eqz v10, :cond_9

    if-ge v6, v3, :cond_6

    move v3, v6

    :cond_6
    if-le v6, v0, :cond_7

    move v0, v6

    :cond_7
    if-ge v5, v4, :cond_8

    move v4, v5

    :cond_8
    if-le v5, v1, :cond_9

    move v1, v5

    :cond_9
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_c
    sget-object v2, Lcom/prineside/tdi2/Map;->z:Lcom/prineside/tdi2/utils/IntRectangle;

    invoke-virtual {v2, v3, v0, v4, v1}, Lcom/prineside/tdi2/utils/IntRectangle;->set(IIII)V

    return-object v2
.end method

.method public hasTileThatAllowsWalkablePlatforms()Z
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/prineside/tdi2/Map;->tilesArray:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v3, :cond_3

    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, [Lcom/prineside/tdi2/Tile;

    aget-object v3, v3, v1

    iget-object v3, v3, Lcom/prineside/tdi2/Tile;->type:Lcom/prineside/tdi2/enums/TileType;

    sget-object v4, Lcom/prineside/tdi2/enums/TileType;->TARGET:Lcom/prineside/tdi2/enums/TileType;

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    const/4 v7, 0x1

    if-ne v3, v4, :cond_1

    check-cast v2, [Lcom/prineside/tdi2/Tile;

    aget-object v2, v2, v1

    check-cast v2, Lcom/prineside/tdi2/tiles/TargetTile;

    invoke-virtual {v2}, Lcom/prineside/tdi2/tiles/TargetTile;->getGameValues()Lcom/badlogic/gdx/utils/Array;

    move-result-object v2

    const/4 v3, 0x0

    :goto_1
    iget v4, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v3, v4, :cond_2

    iget-object v4, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v4, [Lcom/prineside/tdi2/GameValueConfig;

    aget-object v4, v4, v3

    iget-object v8, v4, Lcom/prineside/tdi2/GameValueConfig;->type:Lcom/prineside/tdi2/enums/GameValueType;

    sget-object v9, Lcom/prineside/tdi2/enums/GameValueType;->ENEMIES_WALK_ON_PLATFORMS:Lcom/prineside/tdi2/enums/GameValueType;

    if-ne v8, v9, :cond_0

    iget-wide v8, v4, Lcom/prineside/tdi2/GameValueConfig;->value:D

    cmpl-double v4, v8, v5

    if-ltz v4, :cond_0

    return v7

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    move-object v3, v2

    check-cast v3, [Lcom/prineside/tdi2/Tile;

    aget-object v3, v3, v1

    iget-object v3, v3, Lcom/prineside/tdi2/Tile;->type:Lcom/prineside/tdi2/enums/TileType;

    sget-object v4, Lcom/prineside/tdi2/enums/TileType;->GAME_VALUE:Lcom/prineside/tdi2/enums/TileType;

    if-ne v3, v4, :cond_2

    check-cast v2, [Lcom/prineside/tdi2/Tile;

    aget-object v2, v2, v1

    check-cast v2, Lcom/prineside/tdi2/tiles/GameValueTile;

    invoke-virtual {v2}, Lcom/prineside/tdi2/tiles/GameValueTile;->getGameValueType()Lcom/prineside/tdi2/enums/GameValueType;

    move-result-object v3

    sget-object v4, Lcom/prineside/tdi2/enums/GameValueType;->ENEMIES_WALK_ON_PLATFORMS:Lcom/prineside/tdi2/enums/GameValueType;

    if-ne v3, v4, :cond_2

    invoke-virtual {v2}, Lcom/prineside/tdi2/tiles/GameValueTile;->getDelta()D

    move-result-wide v2

    cmpl-double v4, v2, v5

    if-ltz v4, :cond_2

    return v7

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method public multiplyPortalsDifficulty(F)V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/Map;->spawnTiles:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/tiles/SpawnTile;

    iget v2, v1, Lcom/prineside/tdi2/tiles/SpawnTile;->difficulty:I

    int-to-float v2, v2

    mul-float v2, v2, p1

    invoke-static {v2}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v2

    iput v2, v1, Lcom/prineside/tdi2/tiles/SpawnTile;->difficulty:I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public prepareDefaultPathsIfNeeded()V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/Map;->k:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntMap;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/IntMap$Entry;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/IntMap$Entry;->value:Ljava/lang/Object;

    check-cast v1, Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/IntMap;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/utils/IntMap$Entry;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/IntMap$Entry;->value:Ljava/lang/Object;

    if-eqz v2, :cond_1

    check-cast v2, Lcom/prineside/tdi2/Path;

    invoke-virtual {v2}, Lcom/prineside/tdi2/Path;->prepareIfNeeded()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 2

    const-class v0, Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/ListenerGroup;

    iput-object v0, p0, Lcom/prineside/tdi2/Map;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    const-class v0, [[Lcom/prineside/tdi2/Tile;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lcom/prineside/tdi2/Tile;

    iput-object v0, p0, Lcom/prineside/tdi2/Map;->tiles:[[Lcom/prineside/tdi2/Tile;

    const-class v0, [[[Lcom/prineside/tdi2/Gate;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[Lcom/prineside/tdi2/Gate;

    iput-object v0, p0, Lcom/prineside/tdi2/Map;->gates:[[[Lcom/prineside/tdi2/Gate;

    const-class v0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iput-object v0, p0, Lcom/prineside/tdi2/Map;->tilesArray:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const-class v0, Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/Array;

    iput-object v0, p0, Lcom/prineside/tdi2/Map;->teleportGates:Lcom/badlogic/gdx/utils/Array;

    const-class v0, Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/Array;

    iput-object v0, p0, Lcom/prineside/tdi2/Map;->spawnTiles:Lcom/badlogic/gdx/utils/Array;

    const-class v0, Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/Array;

    iput-object v0, p0, Lcom/prineside/tdi2/Map;->gatesArray:Lcom/badlogic/gdx/utils/Array;

    const-class v0, Lcom/prineside/tdi2/tiles/TargetTile;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/tiles/TargetTile;

    iput-object v0, p0, Lcom/prineside/tdi2/Map;->targetTile:Lcom/prineside/tdi2/tiles/TargetTile;

    const-class v0, Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/Array;

    iput-object v0, p0, Lcom/prineside/tdi2/Map;->coreTiles:Lcom/badlogic/gdx/utils/Array;

    const-class v0, Lcom/prineside/tdi2/tiles/BossTile;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/tiles/BossTile;

    iput-object v0, p0, Lcom/prineside/tdi2/Map;->bossTile:Lcom/prineside/tdi2/tiles/BossTile;

    const-class v0, Lcom/prineside/tdi2/tiles/XmMusicTrackTile;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/tiles/XmMusicTrackTile;

    iput-object v0, p0, Lcom/prineside/tdi2/Map;->xmMusicTrackTile:Lcom/prineside/tdi2/tiles/XmMusicTrackTile;

    const-class v0, Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/Array;

    iput-object v0, p0, Lcom/prineside/tdi2/Map;->allowedEnemies:Lcom/badlogic/gdx/utils/Array;

    const-class v0, Lcom/badlogic/gdx/utils/ObjectSet;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/ObjectSet;

    iput-object v0, p0, Lcom/prineside/tdi2/Map;->allowedEnemiesSet:Lcom/badlogic/gdx/utils/ObjectSet;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result v1

    iput v1, p0, Lcom/prineside/tdi2/Map;->widthTiles:I

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/Map;->heightTiles:I

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/prineside/tdi2/Map;->b:Z

    const-class v0, Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/Array;

    iput-object v0, p0, Lcom/prineside/tdi2/Map;->pathfindingNodes:Lcom/badlogic/gdx/utils/Array;

    const-class v0, [[Lcom/prineside/tdi2/PathNode;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lcom/prineside/tdi2/PathNode;

    iput-object v0, p0, Lcom/prineside/tdi2/Map;->d:[[Lcom/prineside/tdi2/PathNode;

    const-class v0, Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/IntMap;

    iput-object v0, p0, Lcom/prineside/tdi2/Map;->k:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readInt()I

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/Map;->p:I

    const-class v0, Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/systems/MapSystem;

    iput-object p1, p0, Lcom/prineside/tdi2/Map;->mapSystem:Lcom/prineside/tdi2/systems/MapSystem;

    iget p1, p0, Lcom/prineside/tdi2/Map;->widthTiles:I

    mul-int/lit16 p1, p1, 0x80

    iput p1, p0, Lcom/prineside/tdi2/Map;->widthPixels:I

    iget p1, p0, Lcom/prineside/tdi2/Map;->heightTiles:I

    mul-int/lit16 p1, p1, 0x80

    iput p1, p0, Lcom/prineside/tdi2/Map;->heightPixels:I

    return-void
.end method

.method public rebuildPathfinding()V
    .locals 17

    move-object/from16 v1, p0

    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/prineside/tdi2/Map;->r:Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder;

    iget-object v0, v1, Lcom/prineside/tdi2/Map;->pathfindingNodes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    iget-object v0, v1, Lcom/prineside/tdi2/Map;->d:[[Lcom/prineside/tdi2/PathNode;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_2

    array-length v5, v0

    iget v6, v1, Lcom/prineside/tdi2/Map;->heightTiles:I

    if-ne v5, v6, :cond_2

    aget-object v0, v0, v3

    array-length v0, v0

    iget v5, v1, Lcom/prineside/tdi2/Map;->widthTiles:I

    if-eq v0, v5, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v5, v1, Lcom/prineside/tdi2/Map;->heightTiles:I

    if-ge v0, v5, :cond_3

    const/4 v5, 0x0

    :goto_1
    iget v6, v1, Lcom/prineside/tdi2/Map;->widthTiles:I

    if-ge v5, v6, :cond_1

    iget-object v6, v1, Lcom/prineside/tdi2/Map;->d:[[Lcom/prineside/tdi2/PathNode;

    aget-object v6, v6, v0

    aput-object v2, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    iget v0, v1, Lcom/prineside/tdi2/Map;->heightTiles:I

    iget v5, v1, Lcom/prineside/tdi2/Map;->widthTiles:I

    const/4 v6, 0x2

    new-array v6, v6, [I

    aput v5, v6, v4

    aput v0, v6, v3

    const-class v0, Lcom/prineside/tdi2/PathNode;

    invoke-static {v0, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lcom/prineside/tdi2/PathNode;

    iput-object v0, v1, Lcom/prineside/tdi2/Map;->d:[[Lcom/prineside/tdi2/PathNode;

    :cond_3
    const/4 v0, 0x0

    const/4 v11, 0x0

    :goto_3
    iget-object v5, v1, Lcom/prineside/tdi2/Map;->tilesArray:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v6, v5, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v6, :cond_4

    iget-object v5, v5, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v5, [Lcom/prineside/tdi2/Tile;

    aget-object v12, v5, v0

    new-instance v13, Lcom/prineside/tdi2/PathNode;

    invoke-direct {v13}, Lcom/prineside/tdi2/PathNode;-><init>()V

    invoke-virtual {v12}, Lcom/prineside/tdi2/Tile;->getX()I

    move-result v7

    invoke-virtual {v12}, Lcom/prineside/tdi2/Tile;->getY()I

    move-result v8

    invoke-virtual {v12}, Lcom/prineside/tdi2/Tile;->getWalkCost()F

    move-result v9

    iget-object v10, v12, Lcom/prineside/tdi2/Tile;->type:Lcom/prineside/tdi2/enums/TileType;

    move-object v5, v13

    move v6, v11

    invoke-virtual/range {v5 .. v10}, Lcom/prineside/tdi2/PathNode;->setup(IIIFLcom/prineside/tdi2/enums/TileType;)V

    iget-object v5, v1, Lcom/prineside/tdi2/Map;->d:[[Lcom/prineside/tdi2/PathNode;

    invoke-virtual {v12}, Lcom/prineside/tdi2/Tile;->getY()I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {v12}, Lcom/prineside/tdi2/Tile;->getX()I

    move-result v6

    aput-object v13, v5, v6

    iget-object v5, v1, Lcom/prineside/tdi2/Map;->pathfindingNodes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v5, v13}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/2addr v11, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    sget-object v0, Lcom/prineside/tdi2/Map;->v:Lcom/badlogic/gdx/utils/IntSet;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntSet;->clear()V

    const/4 v0, 0x0

    :goto_4
    iget-object v5, v1, Lcom/prineside/tdi2/Map;->pathfindingNodes:Lcom/badlogic/gdx/utils/Array;

    iget v6, v5, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v6, :cond_7

    iget-object v5, v5, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v5, [Lcom/prineside/tdi2/PathNode;

    aget-object v5, v5, v0

    iget-object v6, v5, Lcom/prineside/tdi2/PathNode;->connections:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v6}, Lcom/badlogic/gdx/utils/Array;->clear()V

    iget v6, v5, Lcom/prineside/tdi2/PathNode;->x:I

    if-lez v6, :cond_5

    iget-object v7, v1, Lcom/prineside/tdi2/Map;->d:[[Lcom/prineside/tdi2/PathNode;

    iget v8, v5, Lcom/prineside/tdi2/PathNode;->y:I

    aget-object v7, v7, v8

    add-int/lit8 v6, v6, -0x1

    aget-object v6, v7, v6

    if-eqz v6, :cond_5

    invoke-virtual {v1, v5, v6, v3}, Lcom/prineside/tdi2/Map;->e(Lcom/prineside/tdi2/PathNode;Lcom/prineside/tdi2/PathNode;Z)V

    :cond_5
    iget v6, v5, Lcom/prineside/tdi2/PathNode;->y:I

    if-lez v6, :cond_6

    iget-object v7, v1, Lcom/prineside/tdi2/Map;->d:[[Lcom/prineside/tdi2/PathNode;

    add-int/lit8 v6, v6, -0x1

    aget-object v6, v7, v6

    iget v7, v5, Lcom/prineside/tdi2/PathNode;->x:I

    aget-object v6, v6, v7

    if-eqz v6, :cond_6

    invoke-virtual {v1, v5, v6, v3}, Lcom/prineside/tdi2/Map;->e(Lcom/prineside/tdi2/PathNode;Lcom/prineside/tdi2/PathNode;Z)V

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_7
    iget-object v0, v1, Lcom/prineside/tdi2/Map;->teleportGates:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/utils/Array;

    iget v6, v5, Lcom/badlogic/gdx/utils/Array;->size:I

    if-le v6, v4, :cond_8

    const/4 v6, 0x0

    :goto_5
    iget v7, v5, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v6, v7, :cond_8

    iget-object v7, v5, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v7, [Lcom/prineside/tdi2/gates/TeleportGate;

    aget-object v7, v7, v6

    invoke-virtual {v7}, Lcom/prineside/tdi2/Gate;->getX()I

    move-result v8

    iget v9, v1, Lcom/prineside/tdi2/Map;->widthTiles:I

    if-eq v8, v9, :cond_a

    invoke-virtual {v7}, Lcom/prineside/tdi2/Gate;->getY()I

    move-result v8

    iget v9, v1, Lcom/prineside/tdi2/Map;->heightTiles:I

    if-ne v8, v9, :cond_9

    goto :goto_6

    :cond_9
    iget-object v8, v1, Lcom/prineside/tdi2/Map;->d:[[Lcom/prineside/tdi2/PathNode;

    invoke-virtual {v7}, Lcom/prineside/tdi2/Gate;->getY()I

    move-result v9

    aget-object v8, v8, v9

    invoke-virtual {v7}, Lcom/prineside/tdi2/Gate;->getX()I

    move-result v9

    aget-object v8, v8, v9

    goto :goto_7

    :cond_a
    :goto_6
    move-object v8, v2

    :goto_7
    invoke-virtual {v7}, Lcom/prineside/tdi2/Gate;->getSide()Lcom/prineside/tdi2/Gate$Side;

    move-result-object v9

    sget-object v10, Lcom/prineside/tdi2/Gate$Side;->BOTTOM:Lcom/prineside/tdi2/Gate$Side;

    if-ne v9, v10, :cond_d

    invoke-virtual {v7}, Lcom/prineside/tdi2/Gate;->getX()I

    move-result v9

    iget v10, v1, Lcom/prineside/tdi2/Map;->widthTiles:I

    if-eq v9, v10, :cond_c

    invoke-virtual {v7}, Lcom/prineside/tdi2/Gate;->getY()I

    move-result v9

    if-nez v9, :cond_b

    goto :goto_8

    :cond_b
    iget-object v9, v1, Lcom/prineside/tdi2/Map;->d:[[Lcom/prineside/tdi2/PathNode;

    invoke-virtual {v7}, Lcom/prineside/tdi2/Gate;->getY()I

    move-result v10

    sub-int/2addr v10, v4

    aget-object v9, v9, v10

    invoke-virtual {v7}, Lcom/prineside/tdi2/Gate;->getX()I

    move-result v10

    aget-object v9, v9, v10

    goto :goto_9

    :cond_c
    :goto_8
    move-object v9, v2

    goto :goto_9

    :cond_d
    invoke-virtual {v7}, Lcom/prineside/tdi2/Gate;->getX()I

    move-result v9

    if-eqz v9, :cond_c

    invoke-virtual {v7}, Lcom/prineside/tdi2/Gate;->getY()I

    move-result v9

    iget v10, v1, Lcom/prineside/tdi2/Map;->heightTiles:I

    if-ne v9, v10, :cond_e

    goto :goto_8

    :cond_e
    iget-object v9, v1, Lcom/prineside/tdi2/Map;->d:[[Lcom/prineside/tdi2/PathNode;

    invoke-virtual {v7}, Lcom/prineside/tdi2/Gate;->getY()I

    move-result v10

    aget-object v9, v9, v10

    invoke-virtual {v7}, Lcom/prineside/tdi2/Gate;->getX()I

    move-result v10

    sub-int/2addr v10, v4

    aget-object v9, v9, v10

    :goto_9
    const/4 v10, 0x0

    :goto_a
    iget v11, v5, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v10, v11, :cond_1a

    if-ne v10, v6, :cond_f

    goto/16 :goto_f

    :cond_f
    iget-object v11, v5, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v11, [Lcom/prineside/tdi2/gates/TeleportGate;

    aget-object v11, v11, v10

    invoke-virtual {v11}, Lcom/prineside/tdi2/Gate;->getX()I

    move-result v12

    iget v13, v1, Lcom/prineside/tdi2/Map;->widthTiles:I

    if-eq v12, v13, :cond_11

    invoke-virtual {v11}, Lcom/prineside/tdi2/Gate;->getY()I

    move-result v12

    iget v13, v1, Lcom/prineside/tdi2/Map;->heightTiles:I

    if-ne v12, v13, :cond_10

    goto :goto_b

    :cond_10
    iget-object v12, v1, Lcom/prineside/tdi2/Map;->d:[[Lcom/prineside/tdi2/PathNode;

    invoke-virtual {v11}, Lcom/prineside/tdi2/Gate;->getY()I

    move-result v13

    aget-object v12, v12, v13

    invoke-virtual {v11}, Lcom/prineside/tdi2/Gate;->getX()I

    move-result v13

    aget-object v12, v12, v13

    goto :goto_c

    :cond_11
    :goto_b
    move-object v12, v2

    :goto_c
    invoke-virtual {v11}, Lcom/prineside/tdi2/Gate;->getSide()Lcom/prineside/tdi2/Gate$Side;

    move-result-object v13

    sget-object v14, Lcom/prineside/tdi2/Gate$Side;->BOTTOM:Lcom/prineside/tdi2/Gate$Side;

    if-ne v13, v14, :cond_14

    invoke-virtual {v11}, Lcom/prineside/tdi2/Gate;->getX()I

    move-result v13

    iget v14, v1, Lcom/prineside/tdi2/Map;->widthTiles:I

    if-eq v13, v14, :cond_13

    invoke-virtual {v11}, Lcom/prineside/tdi2/Gate;->getY()I

    move-result v13

    if-nez v13, :cond_12

    goto :goto_d

    :cond_12
    iget-object v13, v1, Lcom/prineside/tdi2/Map;->d:[[Lcom/prineside/tdi2/PathNode;

    invoke-virtual {v11}, Lcom/prineside/tdi2/Gate;->getY()I

    move-result v14

    sub-int/2addr v14, v4

    aget-object v13, v13, v14

    invoke-virtual {v11}, Lcom/prineside/tdi2/Gate;->getX()I

    move-result v11

    aget-object v11, v13, v11

    goto :goto_e

    :cond_13
    :goto_d
    move-object v11, v2

    goto :goto_e

    :cond_14
    invoke-virtual {v11}, Lcom/prineside/tdi2/Gate;->getX()I

    move-result v13

    if-eqz v13, :cond_13

    invoke-virtual {v11}, Lcom/prineside/tdi2/Gate;->getY()I

    move-result v13

    iget v14, v1, Lcom/prineside/tdi2/Map;->heightTiles:I

    if-ne v13, v14, :cond_15

    goto :goto_d

    :cond_15
    iget-object v13, v1, Lcom/prineside/tdi2/Map;->d:[[Lcom/prineside/tdi2/PathNode;

    invoke-virtual {v11}, Lcom/prineside/tdi2/Gate;->getY()I

    move-result v14

    aget-object v13, v13, v14

    invoke-virtual {v11}, Lcom/prineside/tdi2/Gate;->getX()I

    move-result v11

    sub-int/2addr v11, v4

    aget-object v11, v13, v11

    :goto_e
    if-eqz v8, :cond_17

    if-eqz v12, :cond_16

    invoke-virtual {v1, v8, v12, v4}, Lcom/prineside/tdi2/Map;->e(Lcom/prineside/tdi2/PathNode;Lcom/prineside/tdi2/PathNode;Z)V

    :cond_16
    if-eqz v11, :cond_17

    invoke-virtual {v1, v8, v11, v4}, Lcom/prineside/tdi2/Map;->e(Lcom/prineside/tdi2/PathNode;Lcom/prineside/tdi2/PathNode;Z)V

    :cond_17
    if-eqz v9, :cond_19

    if-eqz v12, :cond_18

    invoke-virtual {v1, v9, v12, v4}, Lcom/prineside/tdi2/Map;->e(Lcom/prineside/tdi2/PathNode;Lcom/prineside/tdi2/PathNode;Z)V

    :cond_18
    if-eqz v11, :cond_19

    invoke-virtual {v1, v9, v11, v4}, Lcom/prineside/tdi2/Map;->e(Lcom/prineside/tdi2/PathNode;Lcom/prineside/tdi2/PathNode;Z)V

    :cond_19
    :goto_f
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_a

    :cond_1a
    if-eqz v8, :cond_1c

    invoke-virtual {v7}, Lcom/prineside/tdi2/Gate;->getSide()Lcom/prineside/tdi2/Gate$Side;

    move-result-object v10

    sget-object v11, Lcom/prineside/tdi2/Gate$Side;->LEFT:Lcom/prineside/tdi2/Gate$Side;

    if-ne v10, v11, :cond_1b

    iget-object v8, v8, Lcom/prineside/tdi2/PathNode;->teleportIndices:[I

    sget-object v10, Lcom/prineside/tdi2/Path$MoveDirection;->LEFT:Lcom/prineside/tdi2/Path$MoveDirection;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    iget v11, v7, Lcom/prineside/tdi2/gates/TeleportGate;->index:I

    aput v11, v8, v10

    goto :goto_10

    :cond_1b
    iget-object v8, v8, Lcom/prineside/tdi2/PathNode;->teleportIndices:[I

    sget-object v10, Lcom/prineside/tdi2/Path$MoveDirection;->BOTTOM:Lcom/prineside/tdi2/Path$MoveDirection;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    iget v11, v7, Lcom/prineside/tdi2/gates/TeleportGate;->index:I

    aput v11, v8, v10

    :cond_1c
    :goto_10
    if-eqz v9, :cond_1e

    invoke-virtual {v7}, Lcom/prineside/tdi2/Gate;->getSide()Lcom/prineside/tdi2/Gate$Side;

    move-result-object v8

    sget-object v10, Lcom/prineside/tdi2/Gate$Side;->LEFT:Lcom/prineside/tdi2/Gate$Side;

    if-ne v8, v10, :cond_1d

    iget-object v8, v9, Lcom/prineside/tdi2/PathNode;->teleportIndices:[I

    sget-object v9, Lcom/prineside/tdi2/Path$MoveDirection;->RIGHT:Lcom/prineside/tdi2/Path$MoveDirection;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    iget v7, v7, Lcom/prineside/tdi2/gates/TeleportGate;->index:I

    aput v7, v8, v9

    goto :goto_11

    :cond_1d
    iget-object v8, v9, Lcom/prineside/tdi2/PathNode;->teleportIndices:[I

    sget-object v9, Lcom/prineside/tdi2/Path$MoveDirection;->TOP:Lcom/prineside/tdi2/Path$MoveDirection;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    iget v7, v7, Lcom/prineside/tdi2/gates/TeleportGate;->index:I

    aput v7, v8, v9

    :cond_1e
    :goto_11
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_5

    :cond_1f
    iput-boolean v3, v1, Lcom/prineside/tdi2/Map;->b:Z

    iget-object v0, v1, Lcom/prineside/tdi2/Map;->k:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntMap;->clear()V

    const/4 v0, 0x1

    const/4 v5, 0x0

    :goto_12
    iget-object v6, v1, Lcom/prineside/tdi2/Map;->spawnTiles:Lcom/badlogic/gdx/utils/Array;

    iget v7, v6, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v5, v7, :cond_26

    iget-object v6, v6, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v6, [Lcom/prineside/tdi2/tiles/SpawnTile;

    aget-object v6, v6, v5

    sget-object v7, Lcom/prineside/tdi2/Map;->x:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v7}, Lcom/badlogic/gdx/utils/ObjectMap;->clear()V

    new-instance v7, Lcom/badlogic/gdx/utils/IntMap;

    invoke-direct {v7}, Lcom/badlogic/gdx/utils/IntMap;-><init>()V

    invoke-static {v6}, Lcom/prineside/tdi2/Map;->d(Lcom/prineside/tdi2/Tile;)I

    move-result v8

    iget-object v9, v1, Lcom/prineside/tdi2/Map;->k:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v9, v8, v7}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6}, Lcom/prineside/tdi2/tiles/SpawnTile;->getAllowedEnemies()Lcom/badlogic/gdx/utils/Array;

    move-result-object v8

    move v9, v0

    const/4 v10, 0x0

    :goto_13
    iget v0, v8, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v10, v0, :cond_25

    iget-object v0, v8, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v0, [Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;

    aget-object v0, v0, v10

    iget-object v11, v0, Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;->enemyType:Lcom/prineside/tdi2/enums/EnemyType;

    new-instance v0, Lcom/prineside/tdi2/Path;

    invoke-direct {v0}, Lcom/prineside/tdi2/Path;-><init>()V

    :try_start_0
    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->enemyManager:Lcom/prineside/tdi2/managers/EnemyManager;

    invoke-virtual {v12, v11}, Lcom/prineside/tdi2/managers/EnemyManager;->getFactory(Lcom/prineside/tdi2/enums/EnemyType;)Lcom/prineside/tdi2/Enemy$Factory;

    move-result-object v12

    invoke-virtual {v12}, Lcom/prineside/tdi2/Enemy$Factory;->obtain()Lcom/prineside/tdi2/Enemy;

    move-result-object v13

    invoke-virtual {v1, v13, v0, v6}, Lcom/prineside/tdi2/Map;->findPath(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/Path;Lcom/prineside/tdi2/Tile;)Z

    move-result v14

    invoke-virtual {v12, v13}, Lcom/prineside/tdi2/Enemy$Factory;->free(Lcom/prineside/tdi2/Enemy;)V

    if-eqz v14, :cond_22

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    invoke-virtual {v7, v12, v0}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v12, 0x0

    :goto_14
    iget-object v13, v0, Lcom/prineside/tdi2/Path;->nodes:Lcom/badlogic/gdx/utils/Array;

    iget v14, v13, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v12, v14, :cond_21

    iget-object v13, v13, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v13, [Lcom/prineside/tdi2/PathNode;

    aget-object v13, v13, v12

    mul-int/lit8 v14, v9, 0x1f

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    add-int/2addr v9, v14

    mul-int/lit8 v14, v9, 0x1f

    iget-object v15, v13, Lcom/prineside/tdi2/PathNode;->tileType:Lcom/prineside/tdi2/enums/TileType;

    invoke-virtual {v15}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    add-int/2addr v9, v14

    mul-int/lit8 v14, v9, 0x1f

    iget v9, v13, Lcom/prineside/tdi2/PathNode;->x:I

    add-int/2addr v9, v14

    mul-int/lit8 v14, v9, 0x1f

    iget v9, v13, Lcom/prineside/tdi2/PathNode;->y:I

    add-int/2addr v9, v14

    iget-object v13, v13, Lcom/prineside/tdi2/PathNode;->teleportIndices:[I

    array-length v14, v13

    const/4 v15, 0x0

    :goto_15
    if-ge v15, v14, :cond_20

    aget v16, v13, v15

    mul-int/lit8 v9, v9, 0x1f

    add-int v9, v9, v16

    add-int/lit8 v15, v15, 0x1

    goto :goto_15

    :cond_20
    add-int/lit8 v12, v12, 0x1

    goto :goto_14

    :cond_21
    const/4 v12, 0x0

    :goto_16
    iget-object v13, v0, Lcom/prineside/tdi2/Path;->moveSides:Lcom/badlogic/gdx/utils/Array;

    iget v14, v13, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v12, v14, :cond_23

    iget-object v13, v13, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v13, [Lcom/prineside/tdi2/Path$MoveSide;

    aget-object v13, v13, v12

    mul-int/lit8 v14, v9, 0x1f

    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    move-result v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v9, v14

    add-int/lit8 v12, v12, 0x1

    goto :goto_16

    :cond_22
    mul-int/lit8 v9, v9, 0x1f

    add-int/lit16 v9, v9, 0x2329

    goto :goto_17

    :catch_0
    move-exception v0

    mul-int/lit8 v9, v9, 0x1f

    add-int/lit16 v9, v9, 0x232a

    iget-boolean v12, v1, Lcom/prineside/tdi2/Map;->throwExceptionOnMissingPath:Z

    if-nez v12, :cond_24

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {v7, v0, v2}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_23
    :goto_17
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_13

    :cond_24
    new-instance v2, Lcom/prineside/tdi2/Map$PathNotFoundForEnemyTypeException;

    invoke-direct {v2, v11, v0}, Lcom/prineside/tdi2/Map$PathNotFoundForEnemyTypeException;-><init>(Lcom/prineside/tdi2/enums/EnemyType;Ljava/lang/Throwable;)V

    throw v2

    :cond_25
    add-int/lit8 v5, v5, 0x1

    move v0, v9

    goto/16 :goto_12

    :cond_26
    iget v2, v1, Lcom/prineside/tdi2/Map;->p:I

    if-eq v2, v0, :cond_27

    goto :goto_18

    :cond_27
    const/4 v4, 0x0

    :goto_18
    iput v0, v1, Lcom/prineside/tdi2/Map;->p:I

    iget-object v0, v1, Lcom/prineside/tdi2/Map;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ListenerGroup;->begin()V

    :goto_19
    iget-object v0, v1, Lcom/prineside/tdi2/Map;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ListenerGroup;->size()I

    move-result v0

    if-ge v3, v0, :cond_28

    iget-object v0, v1, Lcom/prineside/tdi2/Map;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v0, v3}, Lcom/prineside/tdi2/ListenerGroup;->get(I)Lcom/prineside/tdi2/GameListener;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/Map$MapListener;

    invoke-interface {v0, v4}, Lcom/prineside/tdi2/Map$MapListener;->pathfindingRebuilt(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    :cond_28
    iget-object v0, v1, Lcom/prineside/tdi2/Map;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ListenerGroup;->end()V

    return-void
.end method

.method public rebuildPathfindingIfNeeded()V
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/Map;->b:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/prineside/tdi2/Map;->rebuildPathfinding()V

    :cond_0
    return-void
.end method

.method public regeneratePreview()V
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    invoke-virtual {v0, p0}, Lcom/prineside/tdi2/managers/BasicLevelManager;->generatePreview(Lcom/prineside/tdi2/Map;)Lcom/prineside/tdi2/managers/BasicLevelManager$MapPreview;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/Map;->a:Lcom/prineside/tdi2/managers/BasicLevelManager$MapPreview;

    return-void
.end method

.method public requirePathfindingRebuild()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prineside/tdi2/Map;->b:Z

    return-void
.end method

.method public setGate(IILcom/prineside/tdi2/Gate$Side;Lcom/prineside/tdi2/Gate;)V
    .locals 3

    const-string v0, ")"

    const-string v1, " (max "

    if-ltz p1, :cond_4

    iget v2, p0, Lcom/prineside/tdi2/Map;->widthTiles:I

    if-gt p1, v2, :cond_4

    if-ltz p2, :cond_3

    iget v2, p0, Lcom/prineside/tdi2/Map;->heightTiles:I

    if-gt p2, v2, :cond_3

    invoke-virtual {p0, p1, p2, p3}, Lcom/prineside/tdi2/Map;->getGate(IILcom/prineside/tdi2/Gate$Side;)Lcom/prineside/tdi2/Gate;

    move-result-object v0

    if-nez v0, :cond_0

    if-nez p4, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    sget-object v1, Lcom/prineside/tdi2/Gate$Side;->LEFT:Lcom/prineside/tdi2/Gate$Side;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1}, Lcom/prineside/tdi2/Gate;->setPosition(IILcom/prineside/tdi2/Gate$Side;)V

    :cond_1
    iget-object v0, p0, Lcom/prineside/tdi2/Map;->gates:[[[Lcom/prineside/tdi2/Gate;

    aget-object v0, v0, p2

    aget-object v0, v0, p1

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput-object p4, v0, v1

    if-eqz p4, :cond_2

    invoke-virtual {p4, p1, p2, p3}, Lcom/prineside/tdi2/Gate;->setPosition(IILcom/prineside/tdi2/Gate$Side;)V

    :cond_2
    invoke-virtual {p0}, Lcom/prineside/tdi2/Map;->updateCache()V

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "y is out of range: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/prineside/tdi2/Map;->heightTiles:I

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "x is out of range: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/prineside/tdi2/Map;->widthTiles:I

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public setRegistered(Lcom/prineside/tdi2/systems/MapSystem;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/Map;->mapSystem:Lcom/prineside/tdi2/systems/MapSystem;

    return-void
.end method

.method public setSize(II)V
    .locals 12

    iget v0, p0, Lcom/prineside/tdi2/Map;->widthTiles:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/prineside/tdi2/Map;->heightTiles:I

    if-ne v0, p2, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-lt p1, v0, :cond_7

    const/16 v1, 0x20

    if-gt p1, v1, :cond_7

    if-lt p2, v0, :cond_6

    if-gt p2, v1, :cond_6

    const/4 v1, 0x2

    new-array v2, v1, [I

    aput p1, v2, v0

    const/4 v3, 0x0

    aput p2, v2, v3

    const-class v4, Lcom/prineside/tdi2/Tile;

    invoke-static {v4, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Lcom/prineside/tdi2/Tile;

    add-int/lit8 v4, p2, 0x1

    add-int/lit8 v5, p1, 0x1

    sget-object v6, Lcom/prineside/tdi2/Gate$Side;->values:[Lcom/prineside/tdi2/Gate$Side;

    array-length v6, v6

    const/4 v7, 0x3

    new-array v7, v7, [I

    aput v6, v7, v1

    aput v5, v7, v0

    aput v4, v7, v3

    const-class v1, Lcom/prineside/tdi2/Gate;

    invoke-static {v1, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[[Lcom/prineside/tdi2/Gate;

    const/4 v4, 0x0

    :goto_0
    if-ge v4, p2, :cond_2

    const/4 v5, 0x0

    :goto_1
    if-ge v5, p1, :cond_1

    aget-object v6, v2, v4

    invoke-virtual {p0, v5, v4}, Lcom/prineside/tdi2/Map;->getTile(II)Lcom/prineside/tdi2/Tile;

    move-result-object v7

    aput-object v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_2
    if-gt v4, p2, :cond_5

    const/4 v5, 0x0

    :goto_3
    if-gt v5, p1, :cond_4

    sget-object v6, Lcom/prineside/tdi2/Gate$Side;->values:[Lcom/prineside/tdi2/Gate$Side;

    array-length v7, v6

    const/4 v8, 0x0

    :goto_4
    if-ge v8, v7, :cond_3

    aget-object v9, v6, v8

    aget-object v10, v1, v4

    aget-object v10, v10, v5

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    invoke-virtual {p0, v5, v4, v9}, Lcom/prineside/tdi2/Map;->getGate(IILcom/prineside/tdi2/Gate$Side;)Lcom/prineside/tdi2/Gate;

    move-result-object v9

    aput-object v9, v10, v11

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    iput-object v2, p0, Lcom/prineside/tdi2/Map;->tiles:[[Lcom/prineside/tdi2/Tile;

    iput-object v1, p0, Lcom/prineside/tdi2/Map;->gates:[[[Lcom/prineside/tdi2/Gate;

    array-length p1, v2

    iput p1, p0, Lcom/prineside/tdi2/Map;->heightTiles:I

    aget-object p2, v2, v3

    array-length p2, p2

    iput p2, p0, Lcom/prineside/tdi2/Map;->widthTiles:I

    mul-int/lit16 p2, p2, 0x80

    iput p2, p0, Lcom/prineside/tdi2/Map;->widthPixels:I

    mul-int/lit16 p1, p1, 0x80

    iput p1, p0, Lcom/prineside/tdi2/Map;->heightPixels:I

    iput-boolean v0, p0, Lcom/prineside/tdi2/Map;->b:Z

    invoke-virtual {p0}, Lcom/prineside/tdi2/Map;->updateCache()V

    return-void

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :goto_5
    throw p2

    :goto_6
    goto :goto_5
.end method

.method public setTile(IILcom/prineside/tdi2/Tile;)V
    .locals 3

    const-string v0, ")"

    const-string v1, " (max "

    if-ltz p1, :cond_4

    iget v2, p0, Lcom/prineside/tdi2/Map;->widthTiles:I

    if-ge p1, v2, :cond_4

    if-ltz p2, :cond_3

    iget v2, p0, Lcom/prineside/tdi2/Map;->heightTiles:I

    if-ge p2, v2, :cond_3

    invoke-virtual {p0, p1, p2}, Lcom/prineside/tdi2/Map;->getTile(II)Lcom/prineside/tdi2/Tile;

    move-result-object v0

    if-ne v0, p3, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/prineside/tdi2/Tile;->setPos(II)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/Tile;->setMap(Lcom/prineside/tdi2/Map;)V

    iget-object v1, p0, Lcom/prineside/tdi2/Map;->tilesArray:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->removeValue(Ljava/lang/Object;Z)Z

    :cond_1
    iget-object v0, p0, Lcom/prineside/tdi2/Map;->tiles:[[Lcom/prineside/tdi2/Tile;

    aget-object v1, v0, p2

    aput-object p3, v1, p1

    if-eqz p3, :cond_2

    aget-object v0, v0, p2

    aget-object v0, v0, p1

    invoke-virtual {v0, p1, p2}, Lcom/prineside/tdi2/Tile;->setPos(II)V

    iget-object v0, p0, Lcom/prineside/tdi2/Map;->tiles:[[Lcom/prineside/tdi2/Tile;

    aget-object v0, v0, p2

    aget-object v0, v0, p1

    invoke-virtual {v0, p0}, Lcom/prineside/tdi2/Tile;->setMap(Lcom/prineside/tdi2/Map;)V

    invoke-virtual {p3}, Lcom/prineside/tdi2/Tile;->resetNeighborTilesCache()V

    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/prineside/tdi2/Map;->g(II)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/Map;->updateCache()V

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "y is out of range: "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/prineside/tdi2/Map;->heightTiles:I

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "x is out of range: "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/prineside/tdi2/Map;->widthTiles:I

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public setUnregistered()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prineside/tdi2/Map;->mapSystem:Lcom/prineside/tdi2/systems/MapSystem;

    return-void
.end method

.method public toJson(Lcom/badlogic/gdx/utils/Json;)V
    .locals 9

    iget v0, p0, Lcom/prineside/tdi2/Map;->widthTiles:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "width"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget v0, p0, Lcom/prineside/tdi2/Map;->heightTiles:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "height"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "tiles"

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Json;->writeArrayStart(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/prineside/tdi2/Map;->heightTiles:I

    if-ge v1, v2, :cond_2

    const/4 v2, 0x0

    :goto_1
    iget v3, p0, Lcom/prineside/tdi2/Map;->widthTiles:I

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/prineside/tdi2/Map;->tiles:[[Lcom/prineside/tdi2/Tile;

    aget-object v3, v3, v1

    aget-object v3, v3, v2

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart()V

    iget-object v3, p0, Lcom/prineside/tdi2/Map;->tiles:[[Lcom/prineside/tdi2/Tile;

    aget-object v3, v3, v1

    aget-object v3, v3, v2

    invoke-virtual {v3, p1}, Lcom/prineside/tdi2/Tile;->toJson(Lcom/badlogic/gdx/utils/Json;)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Json;->writeArrayEnd()V

    const-string v1, "gates"

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/Json;->writeArrayStart(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_2
    iget v2, p0, Lcom/prineside/tdi2/Map;->heightTiles:I

    if-gt v1, v2, :cond_6

    const/4 v2, 0x0

    :goto_3
    iget v3, p0, Lcom/prineside/tdi2/Map;->widthTiles:I

    if-gt v2, v3, :cond_5

    sget-object v3, Lcom/prineside/tdi2/Gate$Side;->values:[Lcom/prineside/tdi2/Gate$Side;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v4, :cond_4

    aget-object v6, v3, v5

    iget-object v7, p0, Lcom/prineside/tdi2/Map;->gates:[[[Lcom/prineside/tdi2/Gate;

    aget-object v7, v7, v1

    aget-object v7, v7, v2

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget-object v7, v7, v8

    if-eqz v7, :cond_3

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart()V

    iget-object v7, p0, Lcom/prineside/tdi2/Map;->gates:[[[Lcom/prineside/tdi2/Gate;

    aget-object v7, v7, v1

    aget-object v7, v7, v2

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget-object v6, v7, v6

    invoke-virtual {v6, p1}, Lcom/prineside/tdi2/Gate;->toJson(Lcom/badlogic/gdx/utils/Json;)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Json;->writeArrayEnd()V

    return-void
.end method

.method public tryReplaceGate(IILcom/prineside/tdi2/Gate$Side;Lcom/prineside/tdi2/Gate;)V
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcom/prineside/tdi2/Map;->getGate(IILcom/prineside/tdi2/Gate$Side;)Lcom/prineside/tdi2/Gate;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/prineside/tdi2/Map;->setGate(IILcom/prineside/tdi2/Gate$Side;Lcom/prineside/tdi2/Gate;)V

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/prineside/tdi2/Map;->setGate(IILcom/prineside/tdi2/Gate$Side;Lcom/prineside/tdi2/Gate;)V

    return-void
.end method

.method public tryReplaceTile(IILcom/prineside/tdi2/Tile;)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/prineside/tdi2/Map;->getTile(II)Lcom/prineside/tdi2/Tile;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3}, Lcom/prineside/tdi2/Map;->setTile(IILcom/prineside/tdi2/Tile;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/prineside/tdi2/Map;->setTile(IILcom/prineside/tdi2/Tile;)V

    return-void
.end method

.method public updateCache()V
    .locals 12

    iget-object v0, p0, Lcom/prineside/tdi2/Map;->spawnTiles:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prineside/tdi2/Map;->targetTile:Lcom/prineside/tdi2/tiles/TargetTile;

    iget-object v1, p0, Lcom/prineside/tdi2/Map;->coreTiles:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->clear()V

    iput-object v0, p0, Lcom/prineside/tdi2/Map;->bossTile:Lcom/prineside/tdi2/tiles/BossTile;

    iput-object v0, p0, Lcom/prineside/tdi2/Map;->xmMusicTrackTile:Lcom/prineside/tdi2/tiles/XmMusicTrackTile;

    iget-object v1, p0, Lcom/prineside/tdi2/Map;->tilesArray:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->clear()V

    iget-object v1, p0, Lcom/prineside/tdi2/Map;->teleportGates:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->clear()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Lcom/prineside/tdi2/Map;->heightTiles:I

    if-ge v2, v3, :cond_6

    const/4 v3, 0x0

    :goto_1
    iget v4, p0, Lcom/prineside/tdi2/Map;->widthTiles:I

    if-ge v3, v4, :cond_5

    iget-object v4, p0, Lcom/prineside/tdi2/Map;->tiles:[[Lcom/prineside/tdi2/Tile;

    aget-object v4, v4, v2

    aget-object v4, v4, v3

    if-eqz v4, :cond_4

    iget-object v5, p0, Lcom/prineside/tdi2/Map;->tilesArray:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    iget-object v5, v4, Lcom/prineside/tdi2/Tile;->type:Lcom/prineside/tdi2/enums/TileType;

    sget-object v6, Lcom/prineside/tdi2/enums/TileType;->SPAWN:Lcom/prineside/tdi2/enums/TileType;

    if-ne v5, v6, :cond_0

    iget-object v5, p0, Lcom/prineside/tdi2/Map;->spawnTiles:Lcom/badlogic/gdx/utils/Array;

    check-cast v4, Lcom/prineside/tdi2/tiles/SpawnTile;

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    sget-object v6, Lcom/prineside/tdi2/enums/TileType;->TARGET:Lcom/prineside/tdi2/enums/TileType;

    if-ne v5, v6, :cond_1

    check-cast v4, Lcom/prineside/tdi2/tiles/TargetTile;

    iput-object v4, p0, Lcom/prineside/tdi2/Map;->targetTile:Lcom/prineside/tdi2/tiles/TargetTile;

    goto :goto_2

    :cond_1
    sget-object v6, Lcom/prineside/tdi2/enums/TileType;->CORE:Lcom/prineside/tdi2/enums/TileType;

    if-ne v5, v6, :cond_2

    iget-object v5, p0, Lcom/prineside/tdi2/Map;->coreTiles:Lcom/badlogic/gdx/utils/Array;

    check-cast v4, Lcom/prineside/tdi2/tiles/CoreTile;

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    sget-object v6, Lcom/prineside/tdi2/enums/TileType;->BOSS:Lcom/prineside/tdi2/enums/TileType;

    if-ne v5, v6, :cond_3

    check-cast v4, Lcom/prineside/tdi2/tiles/BossTile;

    iput-object v4, p0, Lcom/prineside/tdi2/Map;->bossTile:Lcom/prineside/tdi2/tiles/BossTile;

    goto :goto_2

    :cond_3
    sget-object v6, Lcom/prineside/tdi2/enums/TileType;->XM_MUSIC_TRACK:Lcom/prineside/tdi2/enums/TileType;

    if-ne v5, v6, :cond_4

    check-cast v4, Lcom/prineside/tdi2/tiles/XmMusicTrackTile;

    iput-object v4, p0, Lcom/prineside/tdi2/Map;->xmMusicTrackTile:Lcom/prineside/tdi2/tiles/XmMusicTrackTile;

    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/prineside/tdi2/Map;->allowedEnemiesSet:Lcom/badlogic/gdx/utils/ObjectSet;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/ObjectSet;->clear()V

    iget-object v2, p0, Lcom/prineside/tdi2/Map;->allowedEnemies:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->clear()V

    const/4 v2, 0x0

    :goto_3
    iget-object v3, p0, Lcom/prineside/tdi2/Map;->spawnTiles:Lcom/badlogic/gdx/utils/Array;

    iget v4, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v2, v4, :cond_9

    iget-object v3, v3, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Lcom/prineside/tdi2/tiles/SpawnTile;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/prineside/tdi2/tiles/SpawnTile;->getAllowedEnemies()Lcom/badlogic/gdx/utils/Array;

    move-result-object v3

    iget v4, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v4, :cond_8

    iget-object v6, v3, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v6, [Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;

    aget-object v6, v6, v5

    iget-object v6, v6, Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;->enemyType:Lcom/prineside/tdi2/enums/EnemyType;

    iget-object v7, p0, Lcom/prineside/tdi2/Map;->allowedEnemiesSet:Lcom/badlogic/gdx/utils/ObjectSet;

    invoke-virtual {v7, v6}, Lcom/badlogic/gdx/utils/ObjectSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    iget-object v7, p0, Lcom/prineside/tdi2/Map;->allowedEnemies:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v7, v6}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    iget-object v7, p0, Lcom/prineside/tdi2/Map;->allowedEnemiesSet:Lcom/badlogic/gdx/utils/ObjectSet;

    invoke-virtual {v7, v6}, Lcom/badlogic/gdx/utils/ObjectSet;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_9
    iget-object v2, p0, Lcom/prineside/tdi2/Map;->tilesArray:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v2, :cond_a

    iget-object v4, p0, Lcom/prineside/tdi2/Map;->tilesArray:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget-object v4, v4, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v4, [Lcom/prineside/tdi2/Tile;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lcom/prineside/tdi2/Tile;->resetNeighborTilesCache()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_a
    iget-object v2, p0, Lcom/prineside/tdi2/Map;->gatesArray:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->clear()V

    iget-object v2, p0, Lcom/prineside/tdi2/Map;->teleportGates:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/Array;->clear()V

    goto :goto_6

    :cond_b
    const/4 v2, 0x0

    :goto_7
    iget v3, p0, Lcom/prineside/tdi2/Map;->widthTiles:I

    if-gt v2, v3, :cond_13

    const/4 v3, 0x0

    :goto_8
    iget v4, p0, Lcom/prineside/tdi2/Map;->heightTiles:I

    if-gt v3, v4, :cond_12

    sget-object v4, Lcom/prineside/tdi2/Gate$Side;->values:[Lcom/prineside/tdi2/Gate$Side;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_9
    if-ge v6, v5, :cond_11

    aget-object v7, v4, v6

    invoke-virtual {p0, v2, v3, v7}, Lcom/prineside/tdi2/Map;->getGate(IILcom/prineside/tdi2/Gate$Side;)Lcom/prineside/tdi2/Gate;

    move-result-object v7

    if-eqz v7, :cond_c

    iget-object v8, p0, Lcom/prineside/tdi2/Map;->gatesArray:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v8, v7}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_c
    instance-of v8, v7, Lcom/prineside/tdi2/gates/TeleportGate;

    if-eqz v8, :cond_10

    check-cast v7, Lcom/prineside/tdi2/gates/TeleportGate;

    const/4 v8, 0x0

    :goto_a
    iget-object v9, p0, Lcom/prineside/tdi2/Map;->teleportGates:Lcom/badlogic/gdx/utils/Array;

    iget v10, v9, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v11, -0x1

    if-ge v8, v10, :cond_e

    iget-object v9, v9, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v9, [Lcom/badlogic/gdx/utils/Array;

    aget-object v9, v9, v8

    invoke-virtual {v9}, Lcom/badlogic/gdx/utils/Array;->first()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/prineside/tdi2/gates/TeleportGate;

    iget v9, v9, Lcom/prineside/tdi2/gates/TeleportGate;->index:I

    iget v10, v7, Lcom/prineside/tdi2/gates/TeleportGate;->index:I

    if-ne v9, v10, :cond_d

    goto :goto_b

    :cond_d
    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    :cond_e
    const/4 v8, -0x1

    :goto_b
    if-ne v8, v11, :cond_f

    new-instance v8, Lcom/badlogic/gdx/utils/Array;

    const-class v9, Lcom/prineside/tdi2/gates/TeleportGate;

    invoke-direct {v8, v9}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v8, v7}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    iget-object v7, p0, Lcom/prineside/tdi2/Map;->teleportGates:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_c

    :cond_f
    iget-object v9, p0, Lcom/prineside/tdi2/Map;->teleportGates:Lcom/badlogic/gdx/utils/Array;

    iget-object v9, v9, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v9, [Lcom/badlogic/gdx/utils/Array;

    aget-object v8, v9, v8

    invoke-virtual {v8, v7}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_10
    :goto_c
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_13
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/prineside/tdi2/Map;->b:Z

    iput-object v0, p0, Lcom/prineside/tdi2/Map;->a:Lcom/prineside/tdi2/managers/BasicLevelManager$MapPreview;

    return-void
.end method

.method public validate()V
    .locals 13

    invoke-virtual {p0}, Lcom/prineside/tdi2/Map;->updateCache()V

    :try_start_0
    invoke-virtual {p0}, Lcom/prineside/tdi2/Map;->rebuildPathfindingIfNeeded()V
    :try_end_0
    .catch Lcom/prineside/tdi2/Map$PathNotFoundForEnemyTypeException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/prineside/tdi2/Map;->tilesArray:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/prineside/tdi2/Tile;

    iget-object v4, v4, Lcom/prineside/tdi2/Tile;->type:Lcom/prineside/tdi2/enums/TileType;

    sget-object v6, Lcom/prineside/tdi2/enums/TileType;->SPAWN:Lcom/prineside/tdi2/enums/TileType;

    if-ne v4, v6, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    sget-object v6, Lcom/prineside/tdi2/enums/TileType;->TARGET:Lcom/prineside/tdi2/enums/TileType;

    if-ne v4, v6, :cond_0

    if-eqz v2, :cond_4

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iget-object v1, p0, Lcom/prineside/tdi2/Map;->tilesArray:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/Tile;

    iget-object v3, v2, Lcom/prineside/tdi2/Tile;->type:Lcom/prineside/tdi2/enums/TileType;

    sget-object v4, Lcom/prineside/tdi2/enums/TileType;->TARGET:Lcom/prineside/tdi2/enums/TileType;

    if-ne v3, v4, :cond_2

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    new-instance v1, Lcom/prineside/tdi2/Map$InvalidMapException;

    sget-object v2, Lcom/prineside/tdi2/Map$InvalidMapException$Reason;->MULTIPLE_TARGETS:Lcom/prineside/tdi2/Map$InvalidMapException$Reason;

    invoke-direct {v1, v2, v0}, Lcom/prineside/tdi2/Map$InvalidMapException;-><init>(Lcom/prineside/tdi2/Map$InvalidMapException$Reason;Lcom/badlogic/gdx/utils/Array;)V

    throw v1

    :cond_4
    const/4 v2, 0x1

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_2
    iget v9, p0, Lcom/prineside/tdi2/Map;->heightTiles:I

    if-ge v0, v9, :cond_1a

    const/4 v9, 0x0

    :goto_3
    iget v10, p0, Lcom/prineside/tdi2/Map;->widthTiles:I

    if-ge v9, v10, :cond_19

    iget-object v10, p0, Lcom/prineside/tdi2/Map;->tiles:[[Lcom/prineside/tdi2/Tile;

    aget-object v10, v10, v0

    aget-object v10, v10, v9

    if-eqz v10, :cond_a

    iget-object v11, v10, Lcom/prineside/tdi2/Tile;->type:Lcom/prineside/tdi2/enums/TileType;

    sget-object v12, Lcom/prineside/tdi2/enums/TileType;->XM_MUSIC_TRACK:Lcom/prineside/tdi2/enums/TileType;

    if-ne v11, v12, :cond_a

    if-eqz v4, :cond_9

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    const/4 v2, 0x0

    :goto_4
    iget v3, p0, Lcom/prineside/tdi2/Map;->heightTiles:I

    if-ge v2, v3, :cond_8

    const/4 v3, 0x0

    :goto_5
    iget v4, p0, Lcom/prineside/tdi2/Map;->widthTiles:I

    if-ge v3, v4, :cond_7

    iget-object v4, p0, Lcom/prineside/tdi2/Map;->tiles:[[Lcom/prineside/tdi2/Tile;

    aget-object v4, v4, v2

    aget-object v4, v4, v3

    if-eqz v4, :cond_6

    iget-object v5, v4, Lcom/prineside/tdi2/Tile;->type:Lcom/prineside/tdi2/enums/TileType;

    sget-object v6, Lcom/prineside/tdi2/enums/TileType;->XM_MUSIC_TRACK:Lcom/prineside/tdi2/enums/TileType;

    if-ne v5, v6, :cond_6

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_8
    new-instance v1, Lcom/prineside/tdi2/Map$InvalidMapException;

    sget-object v2, Lcom/prineside/tdi2/Map$InvalidMapException$Reason;->MULTIPLE_SOUND_TRACKS:Lcom/prineside/tdi2/Map$InvalidMapException$Reason;

    invoke-direct {v1, v2, v0}, Lcom/prineside/tdi2/Map$InvalidMapException;-><init>(Lcom/prineside/tdi2/Map$InvalidMapException$Reason;Lcom/badlogic/gdx/utils/Array;)V

    throw v1

    :cond_9
    const/4 v4, 0x1

    goto/16 :goto_c

    :cond_a
    if-eqz v10, :cond_f

    iget-object v11, v10, Lcom/prineside/tdi2/Tile;->type:Lcom/prineside/tdi2/enums/TileType;

    sget-object v12, Lcom/prineside/tdi2/enums/TileType;->CORE:Lcom/prineside/tdi2/enums/TileType;

    if-ne v11, v12, :cond_f

    if-eqz v6, :cond_e

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    const/4 v2, 0x0

    :goto_6
    iget v3, p0, Lcom/prineside/tdi2/Map;->heightTiles:I

    if-ge v2, v3, :cond_d

    const/4 v3, 0x0

    :goto_7
    iget v4, p0, Lcom/prineside/tdi2/Map;->widthTiles:I

    if-ge v3, v4, :cond_c

    iget-object v4, p0, Lcom/prineside/tdi2/Map;->tiles:[[Lcom/prineside/tdi2/Tile;

    aget-object v4, v4, v2

    aget-object v4, v4, v3

    if-eqz v4, :cond_b

    iget-object v5, v4, Lcom/prineside/tdi2/Tile;->type:Lcom/prineside/tdi2/enums/TileType;

    sget-object v6, Lcom/prineside/tdi2/enums/TileType;->CORE:Lcom/prineside/tdi2/enums/TileType;

    if-ne v5, v6, :cond_b

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_d
    new-instance v1, Lcom/prineside/tdi2/Map$InvalidMapException;

    sget-object v2, Lcom/prineside/tdi2/Map$InvalidMapException$Reason;->MULTIPLE_CORES:Lcom/prineside/tdi2/Map$InvalidMapException$Reason;

    invoke-direct {v1, v2, v0}, Lcom/prineside/tdi2/Map$InvalidMapException;-><init>(Lcom/prineside/tdi2/Map$InvalidMapException$Reason;Lcom/badlogic/gdx/utils/Array;)V

    throw v1

    :cond_e
    const/4 v6, 0x1

    goto/16 :goto_c

    :cond_f
    if-eqz v10, :cond_14

    iget-object v11, v10, Lcom/prineside/tdi2/Tile;->type:Lcom/prineside/tdi2/enums/TileType;

    sget-object v12, Lcom/prineside/tdi2/enums/TileType;->BOSS:Lcom/prineside/tdi2/enums/TileType;

    if-ne v11, v12, :cond_14

    if-eqz v7, :cond_13

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    const/4 v2, 0x0

    :goto_8
    iget v3, p0, Lcom/prineside/tdi2/Map;->heightTiles:I

    if-ge v2, v3, :cond_12

    const/4 v3, 0x0

    :goto_9
    iget v4, p0, Lcom/prineside/tdi2/Map;->widthTiles:I

    if-ge v3, v4, :cond_11

    iget-object v4, p0, Lcom/prineside/tdi2/Map;->tiles:[[Lcom/prineside/tdi2/Tile;

    aget-object v4, v4, v2

    aget-object v4, v4, v3

    if-eqz v4, :cond_10

    iget-object v5, v4, Lcom/prineside/tdi2/Tile;->type:Lcom/prineside/tdi2/enums/TileType;

    sget-object v6, Lcom/prineside/tdi2/enums/TileType;->BOSS:Lcom/prineside/tdi2/enums/TileType;

    if-ne v5, v6, :cond_10

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_12
    new-instance v1, Lcom/prineside/tdi2/Map$InvalidMapException;

    sget-object v2, Lcom/prineside/tdi2/Map$InvalidMapException$Reason;->MULTIPLE_BOSS_TILES:Lcom/prineside/tdi2/Map$InvalidMapException$Reason;

    invoke-direct {v1, v2, v0}, Lcom/prineside/tdi2/Map$InvalidMapException;-><init>(Lcom/prineside/tdi2/Map$InvalidMapException$Reason;Lcom/badlogic/gdx/utils/Array;)V

    throw v1

    :cond_13
    const/4 v7, 0x1

    goto :goto_c

    :cond_14
    if-eqz v10, :cond_18

    iget-object v10, v10, Lcom/prineside/tdi2/Tile;->type:Lcom/prineside/tdi2/enums/TileType;

    sget-object v11, Lcom/prineside/tdi2/enums/TileType;->SPAWN:Lcom/prineside/tdi2/enums/TileType;

    if-ne v10, v11, :cond_18

    add-int/lit8 v8, v8, 0x1

    const/16 v10, 0x8

    if-le v8, v10, :cond_18

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    const/4 v2, 0x0

    :goto_a
    iget v3, p0, Lcom/prineside/tdi2/Map;->heightTiles:I

    if-ge v2, v3, :cond_17

    const/4 v3, 0x0

    :goto_b
    iget v4, p0, Lcom/prineside/tdi2/Map;->widthTiles:I

    if-ge v3, v4, :cond_16

    iget-object v4, p0, Lcom/prineside/tdi2/Map;->tiles:[[Lcom/prineside/tdi2/Tile;

    aget-object v4, v4, v2

    aget-object v4, v4, v3

    if-eqz v4, :cond_15

    iget-object v5, v4, Lcom/prineside/tdi2/Tile;->type:Lcom/prineside/tdi2/enums/TileType;

    sget-object v6, Lcom/prineside/tdi2/enums/TileType;->SPAWN:Lcom/prineside/tdi2/enums/TileType;

    if-ne v5, v6, :cond_15

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_17
    new-instance v1, Lcom/prineside/tdi2/Map$InvalidMapException;

    sget-object v2, Lcom/prineside/tdi2/Map$InvalidMapException$Reason;->TOO_MANY_PORTALS:Lcom/prineside/tdi2/Map$InvalidMapException$Reason;

    invoke-direct {v1, v2, v0}, Lcom/prineside/tdi2/Map$InvalidMapException;-><init>(Lcom/prineside/tdi2/Map$InvalidMapException$Reason;Lcom/badlogic/gdx/utils/Array;)V

    throw v1

    :cond_18
    :goto_c
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_3

    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    :cond_1a
    if-eqz v3, :cond_23

    if-eqz v2, :cond_22

    invoke-virtual {p0}, Lcom/prineside/tdi2/Map;->getEnemyTypesThatCantFindPath()Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    iget v2, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eqz v2, :cond_1d

    new-instance v2, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v2}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    :goto_d
    iget v3, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v3, :cond_1c

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/prineside/tdi2/Map$EnemyTypeSpawnPair;

    iget-object v3, v3, Lcom/prineside/tdi2/Map$EnemyTypeSpawnPair;->spawnTile:Lcom/prineside/tdi2/tiles/SpawnTile;

    invoke-virtual {v2, v3, v5}, Lcom/badlogic/gdx/utils/Array;->contains(Ljava/lang/Object;Z)Z

    move-result v3

    if-nez v3, :cond_1b

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/prineside/tdi2/Map$EnemyTypeSpawnPair;

    iget-object v3, v3, Lcom/prineside/tdi2/Map$EnemyTypeSpawnPair;->spawnTile:Lcom/prineside/tdi2/tiles/SpawnTile;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_1c
    new-instance v1, Lcom/prineside/tdi2/Map$InvalidMapException;

    sget-object v3, Lcom/prineside/tdi2/Map$InvalidMapException$Reason;->NO_PATH_FOUND:Lcom/prineside/tdi2/Map$InvalidMapException$Reason;

    invoke-direct {v1, v3, v2}, Lcom/prineside/tdi2/Map$InvalidMapException;-><init>(Lcom/prineside/tdi2/Map$InvalidMapException$Reason;Lcom/badlogic/gdx/utils/Array;)V

    iget-object v2, v1, Lcom/prineside/tdi2/Map$InvalidMapException;->enemiesThatCantFindPath:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->addAll(Lcom/badlogic/gdx/utils/Array;)V

    throw v1

    :cond_1d
    invoke-virtual {p0}, Lcom/prineside/tdi2/Map;->hasTileThatAllowsWalkablePlatforms()Z

    move-result v2

    if-nez v2, :cond_21

    const/4 v2, 0x0

    :goto_e
    iget-object v3, p0, Lcom/prineside/tdi2/Map;->spawnTiles:Lcom/badlogic/gdx/utils/Array;

    iget v4, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v2, v4, :cond_21

    iget-object v3, v3, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Lcom/prineside/tdi2/tiles/SpawnTile;

    aget-object v3, v3, v2

    invoke-static {v3}, Lcom/prineside/tdi2/Map;->d(Lcom/prineside/tdi2/Tile;)I

    move-result v4

    invoke-virtual {v3}, Lcom/prineside/tdi2/tiles/SpawnTile;->getAllowedEnemies()Lcom/badlogic/gdx/utils/Array;

    move-result-object v3

    const/4 v5, 0x0

    :goto_f
    iget v6, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v5, v6, :cond_20

    iget-object v6, p0, Lcom/prineside/tdi2/Map;->k:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v6, v4}, Lcom/badlogic/gdx/utils/IntMap;->containsKey(I)Z

    move-result v6

    if-eqz v6, :cond_1f

    iget-object v6, p0, Lcom/prineside/tdi2/Map;->k:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v6, v4}, Lcom/badlogic/gdx/utils/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;

    iget-object v7, v7, Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;->enemyType:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/utils/IntMap;->containsKey(I)Z

    move-result v6

    if-eqz v6, :cond_1f

    iget-object v6, p0, Lcom/prineside/tdi2/Map;->k:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v6, v4}, Lcom/badlogic/gdx/utils/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;

    iget-object v7, v7, Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;->enemyType:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/utils/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/prineside/tdi2/Path;

    sget-object v7, Lcom/prineside/tdi2/enums/TileType;->PLATFORM:Lcom/prineside/tdi2/enums/TileType;

    invoke-virtual {v6, v7}, Lcom/prineside/tdi2/Path;->passesThroughTileType(Lcom/prineside/tdi2/enums/TileType;)Z

    move-result v6

    if-nez v6, :cond_1e

    goto :goto_10

    :cond_1e
    new-instance v1, Lcom/prineside/tdi2/Map$InvalidMapException;

    sget-object v2, Lcom/prineside/tdi2/Map$InvalidMapException$Reason;->PATH_ON_PLATFORM_NOT_ALLOWED:Lcom/prineside/tdi2/Map$InvalidMapException$Reason;

    new-instance v3, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v3}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/prineside/tdi2/Map$InvalidMapException;-><init>(Lcom/prineside/tdi2/Map$InvalidMapException$Reason;Lcom/badlogic/gdx/utils/Array;)V

    iget-object v2, v1, Lcom/prineside/tdi2/Map$InvalidMapException;->enemiesThatCantFindPath:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->addAll(Lcom/badlogic/gdx/utils/Array;)V

    throw v1

    :cond_1f
    :goto_10
    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_21
    return-void

    :cond_22
    new-instance v0, Lcom/prineside/tdi2/Map$InvalidMapException;

    sget-object v1, Lcom/prineside/tdi2/Map$InvalidMapException$Reason;->TARGET_NOT_FOUND:Lcom/prineside/tdi2/Map$InvalidMapException$Reason;

    new-instance v2, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v2}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/Map$InvalidMapException;-><init>(Lcom/prineside/tdi2/Map$InvalidMapException$Reason;Lcom/badlogic/gdx/utils/Array;)V

    throw v0

    :cond_23
    new-instance v0, Lcom/prineside/tdi2/Map$InvalidMapException;

    sget-object v1, Lcom/prineside/tdi2/Map$InvalidMapException$Reason;->SPAWN_NOT_FOUND:Lcom/prineside/tdi2/Map$InvalidMapException$Reason;

    new-instance v2, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v2}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/Map$InvalidMapException;-><init>(Lcom/prineside/tdi2/Map$InvalidMapException$Reason;Lcom/badlogic/gdx/utils/Array;)V

    throw v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/prineside/tdi2/Map$InvalidMapException;

    sget-object v2, Lcom/prineside/tdi2/Map$InvalidMapException$Reason;->NO_PATH_FOUND:Lcom/prineside/tdi2/Map$InvalidMapException$Reason;

    new-instance v3, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v3}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/prineside/tdi2/Map$InvalidMapException;-><init>(Lcom/prineside/tdi2/Map$InvalidMapException$Reason;Lcom/badlogic/gdx/utils/Array;)V

    iget-object v2, v1, Lcom/prineside/tdi2/Map$InvalidMapException;->enemiesThatCantFindPath:Lcom/badlogic/gdx/utils/Array;

    new-instance v3, Lcom/prineside/tdi2/Map$EnemyTypeSpawnPair;

    iget-object v0, v0, Lcom/prineside/tdi2/Map$PathNotFoundForEnemyTypeException;->enemyType:Lcom/prineside/tdi2/enums/EnemyType;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Lcom/prineside/tdi2/Map$EnemyTypeSpawnPair;-><init>(Lcom/prineside/tdi2/enums/EnemyType;Lcom/prineside/tdi2/tiles/SpawnTile;)V

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_12

    :goto_11
    throw v1

    :goto_12
    goto :goto_11
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/Map;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/Map;->tiles:[[Lcom/prineside/tdi2/Tile;

    const-class v1, [[Lcom/prineside/tdi2/Tile;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/prineside/tdi2/Map;->gates:[[[Lcom/prineside/tdi2/Gate;

    const-class v1, [[[Lcom/prineside/tdi2/Gate;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/prineside/tdi2/Map;->tilesArray:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/Map;->teleportGates:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/Map;->spawnTiles:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/Map;->gatesArray:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/Map;->targetTile:Lcom/prineside/tdi2/tiles/TargetTile;

    const-class v1, Lcom/prineside/tdi2/tiles/TargetTile;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/prineside/tdi2/Map;->coreTiles:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/Map;->bossTile:Lcom/prineside/tdi2/tiles/BossTile;

    const-class v1, Lcom/prineside/tdi2/tiles/BossTile;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/prineside/tdi2/Map;->xmMusicTrackTile:Lcom/prineside/tdi2/tiles/XmMusicTrackTile;

    const-class v1, Lcom/prineside/tdi2/tiles/XmMusicTrackTile;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/prineside/tdi2/Map;->allowedEnemies:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/Map;->allowedEnemiesSet:Lcom/badlogic/gdx/utils/ObjectSet;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget v0, p0, Lcom/prineside/tdi2/Map;->widthTiles:I

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    iget v0, p0, Lcom/prineside/tdi2/Map;->heightTiles:I

    invoke-virtual {p2, v0, v1}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    iget-boolean v0, p0, Lcom/prineside/tdi2/Map;->b:Z

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/Map;->pathfindingNodes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/Map;->d:[[Lcom/prineside/tdi2/PathNode;

    const-class v1, [[Lcom/prineside/tdi2/PathNode;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/prineside/tdi2/Map;->k:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget v0, p0, Lcom/prineside/tdi2/Map;->p:I

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeInt(I)V

    iget-object v0, p0, Lcom/prineside/tdi2/Map;->mapSystem:Lcom/prineside/tdi2/systems/MapSystem;

    const-class v1, Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    return-void
.end method
