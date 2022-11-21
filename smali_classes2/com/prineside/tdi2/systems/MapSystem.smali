.class public Lcom/prineside/tdi2/systems/MapSystem;
.super Lcom/prineside/tdi2/GameSystem;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/systems/MapSystem$MapSystemListener;,
        Lcom/prineside/tdi2/systems/MapSystem$AabbEnemyEntry;,
        Lcom/prineside/tdi2/systems/MapSystem$_UnitSystemListener;,
        Lcom/prineside/tdi2/systems/MapSystem$_WaveSystemListener;,
        Lcom/prineside/tdi2/systems/MapSystem$_GameValueSystemListener;
    }
.end annotation


# static fields
.field public static final F:Lcom/badlogic/gdx/graphics/Color;

.field public static final G:Lcom/badlogic/gdx/graphics/Color;

.field public static final H:Lcom/badlogic/gdx/graphics/Color;

.field public static final I:Lcom/badlogic/gdx/math/Vector2;

.field public static final J:Lcom/badlogic/gdx/math/Vector2;

.field public static final TOWER_RANGE_HOVER_COLOR:Lcom/badlogic/gdx/graphics/Color;

.field public static final TOWER_RANGE_SELECTED_COLOR:Lcom/badlogic/gdx/graphics/Color;


# instance fields
.field public A:Z

.field public B:[Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/systems/MapSystem$AabbEnemyEntry;",
            ">;"
        }
    .end annotation
.end field

.field public C:Lcom/prineside/tdi2/utils/BitVector;

.field public D:B

.field public E:B

.field public a:Lcom/prineside/tdi2/Tile;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public b:Lcom/prineside/tdi2/Tile;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public d:Lcom/prineside/tdi2/Gate;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public drawPathTraces:Z
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public k:Lcom/prineside/tdi2/Gate;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public listeners:Lcom/prineside/tdi2/ListenerGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/prineside/tdi2/ListenerGroup<",
            "Lcom/prineside/tdi2/systems/MapSystem$MapSystemListener;",
            ">;"
        }
    .end annotation
.end field

.field public final p:Lcom/badlogic/gdx/utils/Array;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/Tile;",
            ">;"
        }
    .end annotation
.end field

.field public final q:Lcom/badlogic/gdx/utils/Array;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/Gate;",
            ">;"
        }
    .end annotation
.end field

.field public r:F
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public s:Lcom/prineside/tdi2/shapes/RangeCircle;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public spawnedEnemies:Lcom/badlogic/gdx/utils/DelayedRemovalArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/DelayedRemovalArray<",
            "Lcom/prineside/tdi2/Enemy$EnemyReference;",
            ">;"
        }
    .end annotation
.end field

.field public spawnedUnits:Lcom/badlogic/gdx/utils/DelayedRemovalArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/DelayedRemovalArray<",
            "Lcom/prineside/tdi2/Unit;",
            ">;"
        }
    .end annotation
.end field

.field public t:Z
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public u:Lcom/prineside/tdi2/shapes/RangeCircle;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public v:Lcom/prineside/tdi2/shapes/RangeCircle;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public w:F
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public x:Z

.field public y:Lcom/prineside/tdi2/Map;

.field public z:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x4caf5022    # 9.1914512E7f

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    sput-object v0, Lcom/prineside/tdi2/systems/MapSystem;->F:Lcom/badlogic/gdx/graphics/Color;

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0xbcd422

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    sput-object v0, Lcom/prineside/tdi2/systems/MapSystem;->TOWER_RANGE_SELECTED_COLOR:Lcom/badlogic/gdx/graphics/Color;

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/16 v1, -0xef

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    sput-object v0, Lcom/prineside/tdi2/systems/MapSystem;->TOWER_RANGE_HOVER_COLOR:Lcom/badlogic/gdx/graphics/Color;

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$RED;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(Lcom/badlogic/gdx/graphics/Color;)V

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3e0f5c29    # 0.14f

    invoke-virtual {v0, v2, v2, v2, v3}, Lcom/badlogic/gdx/graphics/Color;->mul(FFFF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    sput-object v0, Lcom/prineside/tdi2/systems/MapSystem;->G:Lcom/badlogic/gdx/graphics/Color;

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(Lcom/badlogic/gdx/graphics/Color;)V

    const v1, 0x3f47ae14    # 0.78f

    invoke-virtual {v0, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/Color;->mul(FFFF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    sput-object v0, Lcom/prineside/tdi2/systems/MapSystem;->H:Lcom/badlogic/gdx/graphics/Color;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/systems/MapSystem;->I:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/systems/MapSystem;->J:Lcom/badlogic/gdx/math/Vector2;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/prineside/tdi2/GameSystem;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/MapSystem;->p:Lcom/badlogic/gdx/utils/Array;

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/MapSystem;->q:Lcom/badlogic/gdx/utils/Array;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prineside/tdi2/systems/MapSystem;->drawPathTraces:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prineside/tdi2/systems/MapSystem;->t:Z

    iput-boolean v0, p0, Lcom/prineside/tdi2/systems/MapSystem;->x:Z

    new-instance v1, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const-class v2, Lcom/prineside/tdi2/Enemy$EnemyReference;

    const/16 v3, 0x8

    invoke-direct {v1, v0, v3, v2}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;-><init>(ZILjava/lang/Class;)V

    iput-object v1, p0, Lcom/prineside/tdi2/systems/MapSystem;->spawnedEnemies:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    new-instance v1, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const-class v2, Lcom/prineside/tdi2/Unit;

    invoke-direct {v1, v0, v3, v2}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;-><init>(ZILjava/lang/Class;)V

    iput-object v1, p0, Lcom/prineside/tdi2/systems/MapSystem;->spawnedUnits:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    new-instance v0, Lcom/prineside/tdi2/ListenerGroup;

    const-class v1, Lcom/prineside/tdi2/systems/MapSystem$MapSystemListener;

    invoke-direct {v0, v1}, Lcom/prineside/tdi2/ListenerGroup;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/MapSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    new-instance v0, Lcom/prineside/tdi2/utils/BitVector;

    invoke-direct {v0}, Lcom/prineside/tdi2/utils/BitVector;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/MapSystem;->C:Lcom/prineside/tdi2/utils/BitVector;

    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/utils/ObjectFilter;FLcom/badlogic/gdx/utils/Array;Lcom/prineside/tdi2/systems/MapSystem$AabbEnemyEntry;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/prineside/tdi2/systems/MapSystem;->o(Lcom/prineside/tdi2/utils/ObjectFilter;FLcom/badlogic/gdx/utils/Array;Lcom/prineside/tdi2/systems/MapSystem$AabbEnemyEntry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(FLcom/badlogic/gdx/utils/Array;Lcom/prineside/tdi2/systems/MapSystem$AabbEnemyEntry;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/prineside/tdi2/systems/MapSystem;->n(FLcom/badlogic/gdx/utils/Array;Lcom/prineside/tdi2/systems/MapSystem$AabbEnemyEntry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(FFFFFLcom/prineside/tdi2/utils/ObjectFilter;Lcom/badlogic/gdx/utils/Array;)Z
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/prineside/tdi2/systems/MapSystem;->m(FFFFFLcom/prineside/tdi2/utils/ObjectFilter;Lcom/badlogic/gdx/utils/Array;)Z

    move-result p0

    return p0
.end method

.method public static synthetic d(FLcom/prineside/tdi2/utils/ObjectFilter;Lcom/prineside/tdi2/systems/MapSystem$AabbEnemyEntry;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/prineside/tdi2/systems/MapSystem;->p(FLcom/prineside/tdi2/utils/ObjectFilter;Lcom/prineside/tdi2/systems/MapSystem$AabbEnemyEntry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic e(Lcom/prineside/tdi2/systems/MapSystem;)Lcom/prineside/tdi2/Map;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/systems/MapSystem;->y:Lcom/prineside/tdi2/Map;

    return-object p0
.end method

.method public static synthetic f(Lcom/prineside/tdi2/systems/MapSystem;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/prineside/tdi2/systems/MapSystem;->x:Z

    return p0
.end method

.method public static synthetic g(Lcom/prineside/tdi2/systems/MapSystem;)V
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/systems/MapSystem;->u()V

    return-void
.end method

.method public static synthetic m(FFFFFLcom/prineside/tdi2/utils/ObjectFilter;Lcom/badlogic/gdx/utils/Array;)Z
    .locals 8

    iget v0, p6, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v3, p6, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Lcom/prineside/tdi2/systems/MapSystem$AabbEnemyEntry;

    aget-object v3, v3, v2

    iget-object v4, v3, Lcom/prineside/tdi2/systems/MapSystem$AabbEnemyEntry;->enemyReference:Lcom/prineside/tdi2/Enemy$EnemyReference;

    iget-object v4, v4, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    iget v4, v3, Lcom/prineside/tdi2/systems/MapSystem$AabbEnemyEntry;->size:F

    mul-float v4, v4, p0

    iget-object v5, v3, Lcom/prineside/tdi2/systems/MapSystem$AabbEnemyEntry;->position:Lcom/badlogic/gdx/math/Vector2;

    iget v6, v5, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-float v7, v6, v4

    cmpg-float v7, p1, v7

    if-gtz v7, :cond_1

    sub-float/2addr v6, v4

    cmpl-float v6, p2, v6

    if-ltz v6, :cond_1

    iget v5, v5, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-float v6, v5, v4

    cmpg-float v6, p3, v6

    if-gtz v6, :cond_1

    sub-float/2addr v5, v4

    cmpl-float v4, p4, v5

    if-ltz v4, :cond_1

    invoke-interface {p5, v3}, Lcom/prineside/tdi2/utils/ObjectFilter;->passes(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    return v1

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic n(FLcom/badlogic/gdx/utils/Array;Lcom/prineside/tdi2/systems/MapSystem$AabbEnemyEntry;)Z
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/systems/MapSystem;->I:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p2, Lcom/prineside/tdi2/systems/MapSystem$AabbEnemyEntry;->position:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector2;->dst2(Lcom/badlogic/gdx/math/Vector2;)F

    move-result v0

    cmpg-float p0, v0, p0

    if-gez p0, :cond_0

    iget-object p0, p2, Lcom/prineside/tdi2/systems/MapSystem$AabbEnemyEntry;->enemyReference:Lcom/prineside/tdi2/Enemy$EnemyReference;

    iget-object p0, p0, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    invoke-virtual {p1, p0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic o(Lcom/prineside/tdi2/utils/ObjectFilter;FLcom/badlogic/gdx/utils/Array;Lcom/prineside/tdi2/systems/MapSystem$AabbEnemyEntry;)Z
    .locals 1

    iget-object v0, p3, Lcom/prineside/tdi2/systems/MapSystem$AabbEnemyEntry;->enemyReference:Lcom/prineside/tdi2/Enemy$EnemyReference;

    iget-object v0, v0, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    if-eqz p0, :cond_0

    invoke-interface {p0, v0}, Lcom/prineside/tdi2/utils/ObjectFilter;->passes(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    sget-object p0, Lcom/prineside/tdi2/systems/MapSystem;->I:Lcom/badlogic/gdx/math/Vector2;

    iget-object p3, p3, Lcom/prineside/tdi2/systems/MapSystem$AabbEnemyEntry;->position:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0, p3}, Lcom/badlogic/gdx/math/Vector2;->dst2(Lcom/badlogic/gdx/math/Vector2;)F

    move-result p0

    cmpl-float p0, p0, p1

    if-lez p0, :cond_1

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic p(FLcom/prineside/tdi2/utils/ObjectFilter;Lcom/prineside/tdi2/systems/MapSystem$AabbEnemyEntry;)Z
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/systems/MapSystem;->I:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p2, Lcom/prineside/tdi2/systems/MapSystem$AabbEnemyEntry;->position:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector2;->dst2(Lcom/badlogic/gdx/math/Vector2;)F

    move-result v0

    cmpg-float p0, v0, p0

    if-gez p0, :cond_0

    invoke-interface {p1, p2}, Lcom/prineside/tdi2/utils/ObjectFilter;->passes(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public affectsGameState()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public despawnEnemy(Lcom/prineside/tdi2/Enemy;)V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/StateSystem;->checkGameplayUpdateAllowed()V

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/systems/MapSystem;->spawnedEnemies:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-static {v0, p1}, Lcom/prineside/tdi2/utils/EntityUtils;->removeByValue(Lcom/badlogic/gdx/utils/Array;Lcom/prineside/tdi2/Enemy;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/prineside/tdi2/Enemy;->getCurrentTile()Lcom/prineside/tdi2/Tile;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/prineside/tdi2/Enemy;->getCurrentTile()Lcom/prineside/tdi2/Tile;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/Tile;->unregisterEnemy(Lcom/prineside/tdi2/Enemy;)V

    :cond_1
    iget-object v0, p0, Lcom/prineside/tdi2/systems/MapSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ListenerGroup;->begin()V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/prineside/tdi2/systems/MapSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v1}, Lcom/prineside/tdi2/ListenerGroup;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_2

    iget-object v2, p0, Lcom/prineside/tdi2/systems/MapSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v2, v0}, Lcom/prineside/tdi2/ListenerGroup;->get(I)Lcom/prineside/tdi2/GameListener;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/systems/MapSystem$MapSystemListener;

    invoke-interface {v2, p1}, Lcom/prineside/tdi2/systems/MapSystem$MapSystemListener;->enemyDespawnedFromMap(Lcom/prineside/tdi2/Enemy;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/prineside/tdi2/systems/MapSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ListenerGroup;->end()V

    return-void

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enemy is not in spawnedEnemies: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public dispose()V
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->debugManager:Lcom/prineside/tdi2/managers/DebugManager;

    const-string v1, "Spawned enemies"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/DebugManager;->unregisterValue(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prineside/tdi2/systems/MapSystem;->a:Lcom/prineside/tdi2/Tile;

    iput-object v0, p0, Lcom/prineside/tdi2/systems/MapSystem;->b:Lcom/prineside/tdi2/Tile;

    iput-object v0, p0, Lcom/prineside/tdi2/systems/MapSystem;->d:Lcom/prineside/tdi2/Gate;

    iput-object v0, p0, Lcom/prineside/tdi2/systems/MapSystem;->k:Lcom/prineside/tdi2/Gate;

    iget-object v1, p0, Lcom/prineside/tdi2/systems/MapSystem;->p:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->clear()V

    iget-object v1, p0, Lcom/prineside/tdi2/systems/MapSystem;->q:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->clear()V

    iget-object v1, p0, Lcom/prineside/tdi2/systems/MapSystem;->spawnedEnemies:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->clear()V

    iget-object v1, p0, Lcom/prineside/tdi2/systems/MapSystem;->spawnedUnits:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->clear()V

    iget-object v1, p0, Lcom/prineside/tdi2/systems/MapSystem;->y:Lcom/prineside/tdi2/Map;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/prineside/tdi2/systems/MapSystem;->s()V

    iget-object v1, p0, Lcom/prineside/tdi2/systems/MapSystem;->y:Lcom/prineside/tdi2/Map;

    invoke-virtual {v1}, Lcom/prineside/tdi2/Map;->setUnregistered()V

    :cond_0
    iput-object v0, p0, Lcom/prineside/tdi2/systems/MapSystem;->y:Lcom/prineside/tdi2/Map;

    iput-object v0, p0, Lcom/prineside/tdi2/systems/MapSystem;->s:Lcom/prineside/tdi2/shapes/RangeCircle;

    iget-object v0, p0, Lcom/prineside/tdi2/systems/MapSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ListenerGroup;->clear()V

    invoke-super {p0}, Lcom/prineside/tdi2/GameSystem;->dispose()V

    return-void
.end method

.method public drawBatch(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    iget-object v1, v0, Lcom/prineside/tdi2/systems/MapSystem;->k:Lcom/prineside/tdi2/Gate;

    if-eqz v1, :cond_0

    iget-object v2, v0, Lcom/prineside/tdi2/systems/MapSystem;->d:Lcom/prineside/tdi2/Gate;

    if-eq v1, v2, :cond_0

    invoke-virtual {v1}, Lcom/prineside/tdi2/Gate;->getX()I

    move-result v1

    iget-object v2, v0, Lcom/prineside/tdi2/systems/MapSystem;->k:Lcom/prineside/tdi2/Gate;

    invoke-virtual {v2}, Lcom/prineside/tdi2/Gate;->getY()I

    move-result v2

    iget-object v3, v0, Lcom/prineside/tdi2/systems/MapSystem;->k:Lcom/prineside/tdi2/Gate;

    invoke-virtual {v3}, Lcom/prineside/tdi2/Gate;->getSide()Lcom/prineside/tdi2/Gate$Side;

    move-result-object v3

    invoke-virtual {v0, v11, v1, v2, v3}, Lcom/prineside/tdi2/systems/MapSystem;->drawGateHover(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IILcom/prineside/tdi2/Gate$Side;)V

    :cond_0
    iget-object v1, v0, Lcom/prineside/tdi2/systems/MapSystem;->d:Lcom/prineside/tdi2/Gate;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/prineside/tdi2/Gate;->getX()I

    move-result v1

    iget-object v2, v0, Lcom/prineside/tdi2/systems/MapSystem;->d:Lcom/prineside/tdi2/Gate;

    invoke-virtual {v2}, Lcom/prineside/tdi2/Gate;->getY()I

    move-result v2

    iget-object v3, v0, Lcom/prineside/tdi2/systems/MapSystem;->d:Lcom/prineside/tdi2/Gate;

    invoke-virtual {v3}, Lcom/prineside/tdi2/Gate;->getSide()Lcom/prineside/tdi2/Gate$Side;

    move-result-object v3

    invoke-virtual {v0, v11, v1, v2, v3}, Lcom/prineside/tdi2/systems/MapSystem;->drawGateSelection(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IILcom/prineside/tdi2/Gate$Side;)V

    :cond_1
    iget-object v1, v0, Lcom/prineside/tdi2/systems/MapSystem;->b:Lcom/prineside/tdi2/Tile;

    if-eqz v1, :cond_2

    iget-object v2, v0, Lcom/prineside/tdi2/systems/MapSystem;->a:Lcom/prineside/tdi2/Tile;

    if-eq v1, v2, :cond_2

    invoke-virtual {v1}, Lcom/prineside/tdi2/Tile;->getX()I

    move-result v1

    iget-object v2, v0, Lcom/prineside/tdi2/systems/MapSystem;->b:Lcom/prineside/tdi2/Tile;

    invoke-virtual {v2}, Lcom/prineside/tdi2/Tile;->getY()I

    move-result v2

    invoke-virtual {v0, v11, v1, v2}, Lcom/prineside/tdi2/systems/MapSystem;->drawTileHover(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    :cond_2
    iget-object v1, v0, Lcom/prineside/tdi2/systems/MapSystem;->a:Lcom/prineside/tdi2/Tile;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/prineside/tdi2/Tile;->getX()I

    move-result v1

    iget-object v2, v0, Lcom/prineside/tdi2/systems/MapSystem;->a:Lcom/prineside/tdi2/Tile;

    invoke-virtual {v2}, Lcom/prineside/tdi2/Tile;->getY()I

    move-result v2

    invoke-virtual {v0, v11, v1, v2}, Lcom/prineside/tdi2/systems/MapSystem;->drawTileSelection(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    const/16 v12, 0x302

    const/4 v1, 0x1

    invoke-virtual {v11, v12, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setBlendFunction(II)V

    iget-object v2, v0, Lcom/prineside/tdi2/systems/MapSystem;->a:Lcom/prineside/tdi2/Tile;

    if-eqz v2, :cond_5

    iget-object v2, v0, Lcom/prineside/tdi2/systems/MapSystem;->u:Lcom/prineside/tdi2/shapes/RangeCircle;

    if-nez v2, :cond_4

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->shapeManager:Lcom/prineside/tdi2/managers/ShapeManager;

    sget-object v3, Lcom/prineside/tdi2/enums/ShapeType;->RANGE_CIRCLE:Lcom/prineside/tdi2/enums/ShapeType;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/ShapeManager;->getFactory(Lcom/prineside/tdi2/enums/ShapeType;)Lcom/prineside/tdi2/Shape$Factory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/prineside/tdi2/Shape$Factory;->obtain()Lcom/prineside/tdi2/Shape;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/shapes/RangeCircle;

    iput-object v2, v0, Lcom/prineside/tdi2/systems/MapSystem;->u:Lcom/prineside/tdi2/shapes/RangeCircle;

    :cond_4
    iget-object v2, v0, Lcom/prineside/tdi2/systems/MapSystem;->a:Lcom/prineside/tdi2/Tile;

    iget-object v3, v0, Lcom/prineside/tdi2/systems/MapSystem;->u:Lcom/prineside/tdi2/shapes/RangeCircle;

    invoke-virtual {v2, v11, v3}, Lcom/prineside/tdi2/Tile;->drawSelectedRange(Lcom/badlogic/gdx/graphics/g2d/Batch;Lcom/prineside/tdi2/shapes/RangeCircle;)V

    :cond_5
    iget-object v2, v0, Lcom/prineside/tdi2/systems/MapSystem;->b:Lcom/prineside/tdi2/Tile;

    if-eqz v2, :cond_7

    iget-object v2, v0, Lcom/prineside/tdi2/systems/MapSystem;->v:Lcom/prineside/tdi2/shapes/RangeCircle;

    if-nez v2, :cond_6

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->shapeManager:Lcom/prineside/tdi2/managers/ShapeManager;

    sget-object v3, Lcom/prineside/tdi2/enums/ShapeType;->RANGE_CIRCLE:Lcom/prineside/tdi2/enums/ShapeType;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/ShapeManager;->getFactory(Lcom/prineside/tdi2/enums/ShapeType;)Lcom/prineside/tdi2/Shape$Factory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/prineside/tdi2/Shape$Factory;->obtain()Lcom/prineside/tdi2/Shape;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/shapes/RangeCircle;

    iput-object v2, v0, Lcom/prineside/tdi2/systems/MapSystem;->v:Lcom/prineside/tdi2/shapes/RangeCircle;

    :cond_6
    iget-object v2, v0, Lcom/prineside/tdi2/systems/MapSystem;->b:Lcom/prineside/tdi2/Tile;

    iget-object v3, v0, Lcom/prineside/tdi2/systems/MapSystem;->v:Lcom/prineside/tdi2/shapes/RangeCircle;

    invoke-virtual {v2, v11, v3}, Lcom/prineside/tdi2/Tile;->drawHoveredRange(Lcom/badlogic/gdx/graphics/g2d/Batch;Lcom/prineside/tdi2/shapes/RangeCircle;)V

    :cond_7
    iget-boolean v2, v0, Lcom/prineside/tdi2/systems/MapSystem;->t:Z

    if-eqz v2, :cond_8

    iget-object v2, v0, Lcom/prineside/tdi2/systems/MapSystem;->s:Lcom/prineside/tdi2/shapes/RangeCircle;

    invoke-virtual {v2, v11}, Lcom/prineside/tdi2/shapes/RangeCircle;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    :cond_8
    iget-object v2, v0, Lcom/prineside/tdi2/systems/MapSystem;->p:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v3, 0x0

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v13, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    if-eqz v2, :cond_b

    iget v2, v0, Lcom/prineside/tdi2/systems/MapSystem;->r:F

    mul-float v5, p2, v4

    add-float/2addr v2, v5

    iput v2, v0, Lcom/prineside/tdi2/systems/MapSystem;->r:F

    cmpl-float v5, v2, v14

    if-lez v5, :cond_9

    rem-float/2addr v2, v14

    iput v2, v0, Lcom/prineside/tdi2/systems/MapSystem;->r:F

    :cond_9
    iget v2, v0, Lcom/prineside/tdi2/systems/MapSystem;->r:F

    sget-object v5, Lcom/prineside/tdi2/systems/MapSystem;->I:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, v2, v5, v1, v3}, Lcom/prineside/tdi2/systems/MapSystem;->l(FLcom/badlogic/gdx/math/Vector2;ZLcom/prineside/tdi2/Gate$Side;)V

    iget v2, v0, Lcom/prineside/tdi2/systems/MapSystem;->r:F

    add-float/2addr v2, v4

    iput v2, v0, Lcom/prineside/tdi2/systems/MapSystem;->r:F

    cmpl-float v5, v2, v14

    if-lez v5, :cond_a

    rem-float/2addr v2, v14

    iput v2, v0, Lcom/prineside/tdi2/systems/MapSystem;->r:F

    :cond_a
    iget v2, v0, Lcom/prineside/tdi2/systems/MapSystem;->r:F

    sget-object v5, Lcom/prineside/tdi2/systems/MapSystem;->J:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, v2, v5, v1, v3}, Lcom/prineside/tdi2/systems/MapSystem;->l(FLcom/badlogic/gdx/math/Vector2;ZLcom/prineside/tdi2/Gate$Side;)V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, v0, Lcom/prineside/tdi2/systems/MapSystem;->p:Lcom/badlogic/gdx/utils/Array;

    iget v5, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v5, :cond_b

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/Tile;

    iget-object v5, v2, Lcom/prineside/tdi2/Tile;->highlightParticleA:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    invoke-virtual {v2}, Lcom/prineside/tdi2/Tile;->getX()I

    move-result v6

    mul-int/lit16 v6, v6, 0x80

    add-int/lit8 v6, v6, 0x40

    int-to-float v6, v6

    sget-object v7, Lcom/prineside/tdi2/systems/MapSystem;->I:Lcom/badlogic/gdx/math/Vector2;

    iget v8, v7, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-float/2addr v6, v8

    invoke-virtual {v2}, Lcom/prineside/tdi2/Tile;->getY()I

    move-result v8

    mul-int/lit16 v8, v8, 0x80

    add-int/lit8 v8, v8, 0x40

    int-to-float v8, v8

    iget v7, v7, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-float/2addr v8, v7

    invoke-virtual {v5, v6, v8}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->setPosition(FF)V

    iget-object v5, v2, Lcom/prineside/tdi2/Tile;->highlightParticleB:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    invoke-virtual {v2}, Lcom/prineside/tdi2/Tile;->getX()I

    move-result v6

    mul-int/lit16 v6, v6, 0x80

    add-int/lit8 v6, v6, 0x40

    int-to-float v6, v6

    sget-object v7, Lcom/prineside/tdi2/systems/MapSystem;->J:Lcom/badlogic/gdx/math/Vector2;

    iget v8, v7, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-float/2addr v6, v8

    invoke-virtual {v2}, Lcom/prineside/tdi2/Tile;->getY()I

    move-result v2

    mul-int/lit16 v2, v2, 0x80

    add-int/lit8 v2, v2, 0x40

    int-to-float v2, v2

    iget v7, v7, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-float/2addr v2, v7

    invoke-virtual {v5, v6, v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->setPosition(FF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_b
    iget-object v1, v0, Lcom/prineside/tdi2/systems/MapSystem;->q:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eqz v1, :cond_e

    const/4 v1, 0x0

    :goto_1
    iget-object v2, v0, Lcom/prineside/tdi2/systems/MapSystem;->q:Lcom/badlogic/gdx/utils/Array;

    iget v5, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v5, :cond_e

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/Gate;

    iget v5, v0, Lcom/prineside/tdi2/systems/MapSystem;->r:F

    mul-float v6, p2, v4

    add-float/2addr v5, v6

    iput v5, v0, Lcom/prineside/tdi2/systems/MapSystem;->r:F

    cmpl-float v6, v5, v14

    if-lez v6, :cond_c

    rem-float/2addr v5, v14

    iput v5, v0, Lcom/prineside/tdi2/systems/MapSystem;->r:F

    :cond_c
    iget v5, v0, Lcom/prineside/tdi2/systems/MapSystem;->r:F

    sget-object v6, Lcom/prineside/tdi2/systems/MapSystem;->I:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v2}, Lcom/prineside/tdi2/Gate;->getSide()Lcom/prineside/tdi2/Gate$Side;

    move-result-object v7

    invoke-virtual {v0, v5, v6, v13, v7}, Lcom/prineside/tdi2/systems/MapSystem;->l(FLcom/badlogic/gdx/math/Vector2;ZLcom/prineside/tdi2/Gate$Side;)V

    iget v5, v0, Lcom/prineside/tdi2/systems/MapSystem;->r:F

    add-float/2addr v5, v4

    iput v5, v0, Lcom/prineside/tdi2/systems/MapSystem;->r:F

    cmpl-float v7, v5, v14

    if-lez v7, :cond_d

    rem-float/2addr v5, v14

    iput v5, v0, Lcom/prineside/tdi2/systems/MapSystem;->r:F

    :cond_d
    iget v5, v0, Lcom/prineside/tdi2/systems/MapSystem;->r:F

    sget-object v7, Lcom/prineside/tdi2/systems/MapSystem;->J:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v2}, Lcom/prineside/tdi2/Gate;->getSide()Lcom/prineside/tdi2/Gate$Side;

    move-result-object v8

    invoke-virtual {v0, v5, v7, v13, v8}, Lcom/prineside/tdi2/systems/MapSystem;->l(FLcom/badlogic/gdx/math/Vector2;ZLcom/prineside/tdi2/Gate$Side;)V

    iget-object v5, v2, Lcom/prineside/tdi2/Gate;->highlightParticleA:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    invoke-virtual {v2}, Lcom/prineside/tdi2/Gate;->getX()I

    move-result v8

    mul-int/lit16 v8, v8, 0x80

    add-int/lit8 v8, v8, 0x40

    int-to-float v8, v8

    iget v9, v6, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-float/2addr v8, v9

    invoke-virtual {v2}, Lcom/prineside/tdi2/Gate;->getY()I

    move-result v9

    mul-int/lit16 v9, v9, 0x80

    add-int/lit8 v9, v9, 0x40

    int-to-float v9, v9

    iget v6, v6, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-float/2addr v9, v6

    invoke-virtual {v5, v8, v9}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->setPosition(FF)V

    iget-object v5, v2, Lcom/prineside/tdi2/Gate;->highlightParticleB:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    invoke-virtual {v2}, Lcom/prineside/tdi2/Gate;->getX()I

    move-result v6

    mul-int/lit16 v6, v6, 0x80

    add-int/lit8 v6, v6, 0x40

    int-to-float v6, v6

    iget v8, v7, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-float/2addr v6, v8

    invoke-virtual {v2}, Lcom/prineside/tdi2/Gate;->getY()I

    move-result v2

    mul-int/lit16 v2, v2, 0x80

    add-int/lit8 v2, v2, 0x40

    int-to-float v2, v2

    iget v7, v7, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-float/2addr v2, v7

    invoke-virtual {v5, v6, v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->setPosition(FF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_e
    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object v2, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->DRAW_TOWER_TARGET:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/SettingsManager;->getCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;)D

    move-result-wide v1

    const-wide/16 v15, 0x0

    cmpl-double v4, v1, v15

    if-eqz v4, :cond_f

    iget-object v1, v0, Lcom/prineside/tdi2/systems/MapSystem;->a:Lcom/prineside/tdi2/Tile;

    if-eqz v1, :cond_f

    iget-object v2, v1, Lcom/prineside/tdi2/Tile;->type:Lcom/prineside/tdi2/enums/TileType;

    sget-object v4, Lcom/prineside/tdi2/enums/TileType;->PLATFORM:Lcom/prineside/tdi2/enums/TileType;

    if-ne v2, v4, :cond_f

    check-cast v1, Lcom/prineside/tdi2/tiles/PlatformTile;

    iget-object v2, v1, Lcom/prineside/tdi2/tiles/PlatformTile;->building:Lcom/prineside/tdi2/Building;

    if-eqz v2, :cond_f

    iget-object v4, v2, Lcom/prineside/tdi2/Building;->buildingType:Lcom/prineside/tdi2/enums/BuildingType;

    sget-object v5, Lcom/prineside/tdi2/enums/BuildingType;->TOWER:Lcom/prineside/tdi2/enums/BuildingType;

    if-ne v4, v5, :cond_f

    check-cast v2, Lcom/prineside/tdi2/Tower;

    invoke-virtual {v2}, Lcom/prineside/tdi2/Tower;->getTarget()Lcom/prineside/tdi2/Enemy;

    move-result-object v17

    if-eqz v17, :cond_f

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v2}, Lcom/prineside/tdi2/managers/AssetManager;->getBlankWhiteTextureRegion()Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v2

    iget-object v1, v1, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v4, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual/range {v17 .. v17}, Lcom/prineside/tdi2/Enemy;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    iget v5, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual/range {v17 .. v17}, Lcom/prineside/tdi2/Enemy;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    iget v6, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x40a00000    # 5.0f

    sget-object v9, Lcom/prineside/tdi2/systems/MapSystem;->G:Lcom/badlogic/gdx/graphics/Color;

    sget-object v10, Lcom/prineside/tdi2/systems/MapSystem;->H:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v10}, Lcom/prineside/tdi2/utils/DrawUtils;->texturedLine(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFLcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual/range {v17 .. v17}, Lcom/prineside/tdi2/Enemy;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v3

    :cond_f
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    const/16 v1, 0x303

    invoke-virtual {v11, v12, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setBlendFunction(II)V

    if-eqz v3, :cond_10

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/AssetManager;->TR:Lcom/prineside/tdi2/managers/AssetManager$TextureRegions;

    iget-object v2, v1, Lcom/prineside/tdi2/managers/AssetManager$TextureRegions;->crosshairSmall:Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    iget v1, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/high16 v4, 0x41400000    # 12.0f

    sub-float v5, v1, v4

    iget v1, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float v4, v1, v4

    const/high16 v6, 0x41c00000    # 24.0f

    const/high16 v7, 0x41c00000    # 24.0f

    move-object/from16 v1, p1

    move v3, v5

    move v5, v6

    move v6, v7

    invoke-virtual/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    :cond_10
    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object v2, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->DBG_DRAW_TILE_INFO:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/SettingsManager;->getCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;)D

    move-result-wide v1

    cmpl-double v3, v1, v15

    if-eqz v3, :cond_15

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v1, v13}, Lcom/prineside/tdi2/managers/AssetManager;->getDebugFont(Z)Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-result-object v9

    const/4 v1, 0x0

    const v2, 0x3f0f5c29    # 0.56f

    invoke-virtual {v9, v1, v14, v14, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(FFFF)V

    const/4 v10, 0x0

    :goto_2
    iget-object v1, v0, Lcom/prineside/tdi2/systems/MapSystem;->y:Lcom/prineside/tdi2/Map;

    iget v1, v1, Lcom/prineside/tdi2/Map;->heightTiles:I

    if-ge v10, v1, :cond_14

    const/4 v12, 0x0

    :goto_3
    iget-object v1, v0, Lcom/prineside/tdi2/systems/MapSystem;->y:Lcom/prineside/tdi2/Map;

    iget v2, v1, Lcom/prineside/tdi2/Map;->widthTiles:I

    if-ge v12, v2, :cond_13

    invoke-virtual {v1, v12, v10}, Lcom/prineside/tdi2/Map;->getTile(II)Lcom/prineside/tdi2/Tile;

    move-result-object v14

    if-nez v14, :cond_11

    goto :goto_4

    :cond_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WC: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Lcom/prineside/tdi2/Tile;->getWalkCost()F

    move-result v2

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " E: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v14, Lcom/prineside/tdi2/Tile;->enemies:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    mul-int/lit16 v1, v12, 0x80

    int-to-float v4, v1

    mul-int/lit16 v1, v10, 0x80

    int-to-float v1, v1

    const/high16 v2, 0x41200000    # 10.0f

    sub-float/2addr v1, v2

    const/high16 v2, 0x42800000    # 64.0f

    add-float v5, v1, v2

    const/high16 v6, 0x43000000    # 128.0f

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v1, v9

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v8}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FFFIZ)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget-object v1, v14, Lcom/prineside/tdi2/Tile;->enemies:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eqz v2, :cond_12

    invoke-virtual {v1, v13}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/Enemy$EnemyReference;

    invoke-virtual {v1, v13, v2}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->set(ILjava/lang/Object;)V

    :cond_12
    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_13
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_14
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :cond_15
    return-void
.end method

.method public drawGateHover(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IILcom/prineside/tdi2/Gate$Side;)V
    .locals 9

    sget-object v0, Lcom/prineside/tdi2/Gate$Side;->LEFT:Lcom/prineside/tdi2/Gate$Side;

    const/high16 v1, 0x41c80000    # 25.0f

    const/high16 v2, 0x42a20000    # 81.0f

    if-ne p4, v0, :cond_0

    sget-object p4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p4, p4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    iget-object p4, p4, Lcom/prineside/tdi2/managers/AssetManager;->TR:Lcom/prineside/tdi2/managers/AssetManager$TextureRegions;

    iget-object v4, p4, Lcom/prineside/tdi2/managers/AssetManager$TextureRegions;->gateOutlineVerticalHover:Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    mul-int/lit16 p2, p2, 0x80

    int-to-float p2, p2

    sub-float v5, p2, v1

    mul-int/lit16 p3, p3, 0x80

    add-int/lit8 p3, p3, 0x40

    int-to-float p2, p3

    sub-float v6, p2, v2

    const/high16 v7, 0x42480000    # 50.0f

    const/high16 v8, 0x43220000    # 162.0f

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    goto :goto_0

    :cond_0
    sget-object p4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p4, p4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    iget-object p4, p4, Lcom/prineside/tdi2/managers/AssetManager;->TR:Lcom/prineside/tdi2/managers/AssetManager$TextureRegions;

    iget-object v4, p4, Lcom/prineside/tdi2/managers/AssetManager$TextureRegions;->gateOutlineHorizontalHover:Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    mul-int/lit16 p2, p2, 0x80

    add-int/lit8 p2, p2, 0x40

    int-to-float p2, p2

    sub-float v5, p2, v2

    mul-int/lit16 p3, p3, 0x80

    int-to-float p2, p3

    sub-float v6, p2, v1

    const/high16 v7, 0x43220000    # 162.0f

    const/high16 v8, 0x42480000    # 50.0f

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    :goto_0
    return-void
.end method

.method public drawGateSelection(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IILcom/prineside/tdi2/Gate$Side;)V
    .locals 9

    sget-object v0, Lcom/prineside/tdi2/Gate$Side;->LEFT:Lcom/prineside/tdi2/Gate$Side;

    const/high16 v1, 0x41c80000    # 25.0f

    const/high16 v2, 0x42a20000    # 81.0f

    if-ne p4, v0, :cond_0

    sget-object p4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p4, p4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    iget-object p4, p4, Lcom/prineside/tdi2/managers/AssetManager;->TR:Lcom/prineside/tdi2/managers/AssetManager$TextureRegions;

    iget-object v4, p4, Lcom/prineside/tdi2/managers/AssetManager$TextureRegions;->gateOutlineVerticalActive:Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    mul-int/lit16 p2, p2, 0x80

    int-to-float p2, p2

    sub-float v5, p2, v1

    mul-int/lit16 p3, p3, 0x80

    add-int/lit8 p3, p3, 0x40

    int-to-float p2, p3

    sub-float v6, p2, v2

    const/high16 v7, 0x42480000    # 50.0f

    const/high16 v8, 0x43220000    # 162.0f

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    goto :goto_0

    :cond_0
    sget-object p4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p4, p4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    iget-object p4, p4, Lcom/prineside/tdi2/managers/AssetManager;->TR:Lcom/prineside/tdi2/managers/AssetManager$TextureRegions;

    iget-object v4, p4, Lcom/prineside/tdi2/managers/AssetManager$TextureRegions;->gateOutlineHorizontalActive:Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    mul-int/lit16 p2, p2, 0x80

    add-int/lit8 p2, p2, 0x40

    int-to-float p2, p2

    sub-float v5, p2, v2

    mul-int/lit16 p3, p3, 0x80

    int-to-float p2, p3

    sub-float v6, p2, v1

    const/high16 v7, 0x43220000    # 162.0f

    const/high16 v8, 0x42480000    # 50.0f

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    :goto_0
    return-void
.end method

.method public drawTileHover(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .locals 7

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/AssetManager;->TR:Lcom/prineside/tdi2/managers/AssetManager$TextureRegions;

    iget-object v2, v0, Lcom/prineside/tdi2/managers/AssetManager$TextureRegions;->tileOutlineHover:Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    mul-int/lit16 p2, p2, 0x80

    add-int/lit8 p2, p2, 0x40

    int-to-float p2, p2

    const/high16 v0, 0x42980000    # 76.0f

    sub-float v3, p2, v0

    mul-int/lit16 p3, p3, 0x80

    add-int/lit8 p3, p3, 0x40

    int-to-float p2, p3

    sub-float v4, p2, v0

    const/high16 v5, 0x43180000    # 152.0f

    const/high16 v6, 0x43180000    # 152.0f

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    return-void
.end method

.method public drawTileSelection(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .locals 7

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/AssetManager;->TR:Lcom/prineside/tdi2/managers/AssetManager$TextureRegions;

    iget-object v2, v0, Lcom/prineside/tdi2/managers/AssetManager$TextureRegions;->tileOutlineActive:Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    mul-int/lit16 p2, p2, 0x80

    add-int/lit8 p2, p2, 0x40

    int-to-float p2, p2

    const/high16 v0, 0x42980000    # 76.0f

    sub-float v3, p2, v0

    mul-int/lit16 p3, p3, 0x80

    add-int/lit8 p3, p3, 0x40

    int-to-float p2, p3

    sub-float v4, p2, v0

    const/high16 v5, 0x43180000    # 152.0f

    const/high16 v6, 0x43180000    # 152.0f

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    return-void
.end method

.method public final getEnemiesAABB(FFFFFLcom/prineside/tdi2/utils/ObjectFilter;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFFFF",
            "Lcom/prineside/tdi2/utils/ObjectFilter<",
            "Lcom/prineside/tdi2/systems/MapSystem$AabbEnemyEntry;",
            ">;)V"
        }
    .end annotation

    move v0, p1

    move v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-static {p1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {p1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-static {p2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {p2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v7

    const v0, 0x428ccccd    # 70.4f

    sub-float v8, v4, v0

    sub-float v9, v6, v0

    add-float v10, v5, v0

    add-float v11, v7, v0

    new-instance v12, Lcom/prineside/tdi2/systems/h;

    move-object v0, v12

    move/from16 v1, p5

    move v2, v4

    move v3, v5

    move v4, v6

    move v5, v7

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/prineside/tdi2/systems/h;-><init>(FFFFFLcom/prineside/tdi2/utils/ObjectFilter;)V

    move-object p1, p0

    move p2, v8

    move/from16 p3, v9

    move/from16 p4, v10

    move/from16 p5, v11

    move-object/from16 p6, v12

    invoke-virtual/range {p1 .. p6}, Lcom/prineside/tdi2/systems/MapSystem;->j(FFFFLcom/prineside/tdi2/utils/ObjectFilter;)V

    return-void
.end method

.method public final getEnemiesAABB(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;FLcom/prineside/tdi2/utils/ObjectFilter;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/math/Vector2;",
            "Lcom/badlogic/gdx/math/Vector2;",
            "F",
            "Lcom/prineside/tdi2/utils/ObjectFilter<",
            "Lcom/prineside/tdi2/systems/MapSystem$AabbEnemyEntry;",
            ">;)V"
        }
    .end annotation

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v3, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v4, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    move-object v0, p0

    move v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/prineside/tdi2/systems/MapSystem;->getEnemiesAABB(FFFFFLcom/prineside/tdi2/utils/ObjectFilter;)V

    return-void
.end method

.method public getEnemiesNearPoint(FFFLcom/prineside/tdi2/utils/ObjectFilter;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFF",
            "Lcom/prineside/tdi2/utils/ObjectFilter<",
            "Lcom/prineside/tdi2/systems/MapSystem$AabbEnemyEntry;",
            ">;)V"
        }
    .end annotation

    mul-float v0, p3, p3

    sget-object v1, Lcom/prineside/tdi2/systems/MapSystem;->I:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v1, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    sub-float v3, p1, p3

    sub-float v4, p2, p3

    add-float v5, p1, p3

    add-float v6, p2, p3

    new-instance v8, Lcom/prineside/tdi2/systems/g;

    invoke-direct {v8, v0, p4}, Lcom/prineside/tdi2/systems/g;-><init>(FLcom/prineside/tdi2/utils/ObjectFilter;)V

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/prineside/tdi2/systems/MapSystem;->getEnemiesAABB(FFFFFLcom/prineside/tdi2/utils/ObjectFilter;)V

    return-void
.end method

.method public getEnemiesNearPoint(Lcom/badlogic/gdx/utils/Array;FFF)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/Enemy;",
            ">;FFF)V"
        }
    .end annotation

    mul-float v0, p4, p4

    sget-object v1, Lcom/prineside/tdi2/systems/MapSystem;->I:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v1, p2, p3}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    sub-float v3, p2, p4

    sub-float v4, p3, p4

    add-float v5, p2, p4

    add-float v6, p3, p4

    new-instance v8, Lcom/prineside/tdi2/systems/j;

    invoke-direct {v8, v0, p1}, Lcom/prineside/tdi2/systems/j;-><init>(FLcom/badlogic/gdx/utils/Array;)V

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/prineside/tdi2/systems/MapSystem;->getEnemiesAABB(FFFFFLcom/prineside/tdi2/utils/ObjectFilter;)V

    return-void
.end method

.method public getEnemiesNearPoint(Lcom/badlogic/gdx/utils/Array;FFFFLcom/prineside/tdi2/utils/ObjectFilter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/Enemy;",
            ">;FFFF",
            "Lcom/prineside/tdi2/utils/ObjectFilter<",
            "Lcom/prineside/tdi2/Enemy;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    cmpl-float v0, p5, v0

    if-nez v0, :cond_0

    if-nez p6, :cond_0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/prineside/tdi2/systems/MapSystem;->getEnemiesNearPoint(Lcom/badlogic/gdx/utils/Array;FFF)V

    goto :goto_0

    :cond_0
    mul-float p5, p5, p5

    sget-object v0, Lcom/prineside/tdi2/systems/MapSystem;->I:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, p2, p3}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/prineside/tdi2/systems/i;

    invoke-direct {v0, p6, p5, p1}, Lcom/prineside/tdi2/systems/i;-><init>(Lcom/prineside/tdi2/utils/ObjectFilter;FLcom/badlogic/gdx/utils/Array;)V

    invoke-virtual {p0, p2, p3, p4, v0}, Lcom/prineside/tdi2/systems/MapSystem;->getEnemiesNearPoint(FFFLcom/prineside/tdi2/utils/ObjectFilter;)V

    :goto_0
    return-void
.end method

.method public getHoveredGate()Lcom/prineside/tdi2/Gate;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/systems/MapSystem;->k:Lcom/prineside/tdi2/Gate;

    return-object v0
.end method

.method public getHoveredTile()Lcom/prineside/tdi2/Tile;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/systems/MapSystem;->b:Lcom/prineside/tdi2/Tile;

    return-object v0
.end method

.method public getMap()Lcom/prineside/tdi2/Map;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/systems/MapSystem;->y:Lcom/prineside/tdi2/Map;

    return-object v0
.end method

.method public getSelectedGate()Lcom/prineside/tdi2/Gate;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/systems/MapSystem;->d:Lcom/prineside/tdi2/Gate;

    return-object v0
.end method

.method public getSelectedTile()Lcom/prineside/tdi2/Tile;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/systems/MapSystem;->a:Lcom/prineside/tdi2/Tile;

    return-object v0
.end method

.method public getSpawnedEnemiesCountByWave(I)I
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/systems/MapSystem;->spawnedEnemies:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v3, p0, Lcom/prineside/tdi2/systems/MapSystem;->spawnedEnemies:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget-object v3, v3, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Lcom/prineside/tdi2/Enemy$EnemyReference;

    aget-object v3, v3, v1

    iget-object v3, v3, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, v3, Lcom/prineside/tdi2/Enemy;->wave:Lcom/prineside/tdi2/Wave;

    if-eqz v3, :cond_1

    iget v3, v3, Lcom/prineside/tdi2/Wave;->waveNumber:I

    if-ne v3, p1, :cond_1

    add-int/lit8 v2, v2, 0x1

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public getSystemName()Ljava/lang/String;
    .locals 1

    const-string v0, "Map"

    return-object v0
.end method

.method public getTileAndNeighbours(IILcom/badlogic/gdx/utils/Array;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/Tile;",
            ">;)V"
        }
    .end annotation

    const/4 v0, -0x1

    const/4 v1, -0x1

    :goto_0
    const/4 v2, 0x1

    if-gt v1, v2, :cond_2

    const/4 v3, -0x1

    :goto_1
    if-gt v3, v2, :cond_1

    iget-object v4, p0, Lcom/prineside/tdi2/systems/MapSystem;->y:Lcom/prineside/tdi2/Map;

    add-int v5, p1, v1

    add-int v6, p2, v3

    invoke-virtual {v4, v5, v6}, Lcom/prineside/tdi2/Map;->getTile(II)Lcom/prineside/tdi2/Tile;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p3, v4}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public h(Lcom/prineside/tdi2/Unit;)V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/StateSystem;->checkGameplayUpdateAllowed()V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/systems/MapSystem;->isSpawned(Lcom/prineside/tdi2/Unit;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/prineside/tdi2/systems/MapSystem;->spawnedUnits:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->removeValue(Ljava/lang/Object;Z)Z

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/prineside/tdi2/Unit;->spawned:Z

    iget-object v1, p1, Lcom/prineside/tdi2/Unit;->currentTile:Lcom/prineside/tdi2/Tile;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Lcom/prineside/tdi2/Tile;->unregisterUnit(Lcom/prineside/tdi2/Unit;)V

    :cond_1
    iget-object v1, p0, Lcom/prineside/tdi2/systems/MapSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v1}, Lcom/prineside/tdi2/ListenerGroup;->begin()V

    iget-object v1, p0, Lcom/prineside/tdi2/systems/MapSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v1}, Lcom/prineside/tdi2/ListenerGroup;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_2

    iget-object v2, p0, Lcom/prineside/tdi2/systems/MapSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v2, v0}, Lcom/prineside/tdi2/ListenerGroup;->get(I)Lcom/prineside/tdi2/GameListener;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/systems/MapSystem$MapSystemListener;

    invoke-interface {v2, p1}, Lcom/prineside/tdi2/systems/MapSystem$MapSystemListener;->unitDespawnedFromMap(Lcom/prineside/tdi2/Unit;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/prineside/tdi2/systems/MapSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ListenerGroup;->end()V

    goto :goto_1

    :cond_3
    const-string p1, "MapSystem"

    const-string v0, "Unit is not spawned"

    invoke-static {p1, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public hideTowerRangeHint()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prineside/tdi2/systems/MapSystem;->t:Z

    return-void
.end method

.method public highlightGate(Lcom/prineside/tdi2/Gate;)V
    .locals 3

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->mapManager:Lcom/prineside/tdi2/managers/MapManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/MapManager;->highlightParticlesPool:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    iput-object v0, p1, Lcom/prineside/tdi2/Gate;->highlightParticleA:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->mapManager:Lcom/prineside/tdi2/managers/MapManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/MapManager;->highlightParticlesPool:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    iput-object v0, p1, Lcom/prineside/tdi2/Gate;->highlightParticleB:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    iget-object v1, p1, Lcom/prineside/tdi2/Gate;->highlightParticleA:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/prineside/tdi2/systems/ParticleSystem;->addParticle(Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;Z)Z

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    iget-object v1, p1, Lcom/prineside/tdi2/Gate;->highlightParticleB:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    invoke-virtual {v0, v1, v2}, Lcom/prineside/tdi2/systems/ParticleSystem;->addParticle(Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;Z)Z

    iget-object v0, p0, Lcom/prineside/tdi2/systems/MapSystem;->q:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public highlightTile(Lcom/prineside/tdi2/Tile;)V
    .locals 3

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->mapManager:Lcom/prineside/tdi2/managers/MapManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/MapManager;->highlightParticlesPool:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    iput-object v0, p1, Lcom/prineside/tdi2/Tile;->highlightParticleA:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->mapManager:Lcom/prineside/tdi2/managers/MapManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/MapManager;->highlightParticlesPool:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    iput-object v0, p1, Lcom/prineside/tdi2/Tile;->highlightParticleB:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    iget-object v1, p1, Lcom/prineside/tdi2/Tile;->highlightParticleA:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/prineside/tdi2/systems/ParticleSystem;->addParticle(Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;Z)Z

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    iget-object v1, p1, Lcom/prineside/tdi2/Tile;->highlightParticleB:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    invoke-virtual {v0, v1, v2}, Lcom/prineside/tdi2/systems/ParticleSystem;->addParticle(Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;Z)Z

    iget-object v0, p0, Lcom/prineside/tdi2/systems/MapSystem;->p:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public final i()V
    .locals 8

    iget-object v0, p0, Lcom/prineside/tdi2/systems/MapSystem;->B:[Lcom/badlogic/gdx/utils/Array;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/prineside/tdi2/systems/MapSystem$AabbEnemyEntry;

    invoke-static {}, Lcom/prineside/tdi2/systems/MapSystem$AabbEnemyEntry;->a()Lcom/badlogic/gdx/utils/Pool;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/Array;->clear()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/prineside/tdi2/systems/MapSystem;->C:Lcom/prineside/tdi2/utils/BitVector;

    invoke-virtual {v0}, Lcom/prineside/tdi2/utils/BitVector;->clear()V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/MapSystem;->spawnedEnemies:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    :goto_2
    if-ge v2, v0, :cond_4

    iget-object v1, p0, Lcom/prineside/tdi2/systems/MapSystem;->spawnedEnemies:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/Enemy$EnemyReference;

    aget-object v1, v1, v2

    iget-object v3, v1, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    if-nez v3, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {v3}, Lcom/prineside/tdi2/Enemy;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v4

    iget v5, v4, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v6, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p0, v5, v6}, Lcom/prineside/tdi2/systems/MapSystem;->k(FF)I

    move-result v5

    const/high16 v6, -0x80000000

    if-ne v5, v6, :cond_3

    goto :goto_3

    :cond_3
    invoke-static {}, Lcom/prineside/tdi2/systems/MapSystem$AabbEnemyEntry;->a()Lcom/badlogic/gdx/utils/Pool;

    move-result-object v6

    invoke-virtual {v6}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/prineside/tdi2/systems/MapSystem$AabbEnemyEntry;

    iput-object v4, v6, Lcom/prineside/tdi2/systems/MapSystem$AabbEnemyEntry;->position:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v3}, Lcom/prineside/tdi2/Enemy;->getSize()F

    move-result v3

    iput v3, v6, Lcom/prineside/tdi2/systems/MapSystem$AabbEnemyEntry;->size:F

    iput-object v1, v6, Lcom/prineside/tdi2/systems/MapSystem$AabbEnemyEntry;->enemyReference:Lcom/prineside/tdi2/Enemy$EnemyReference;

    iget-object v1, p0, Lcom/prineside/tdi2/systems/MapSystem;->B:[Lcom/badlogic/gdx/utils/Array;

    aget-object v1, v1, v5

    invoke-virtual {v1, v6}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/prineside/tdi2/systems/MapSystem;->C:Lcom/prineside/tdi2/utils/BitVector;

    invoke-virtual {v1, v5}, Lcom/prineside/tdi2/utils/BitVector;->set(I)V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public isPointWithinTile(Lcom/prineside/tdi2/Tile;II)Z
    .locals 0

    iget-object p1, p1, Lcom/prineside/tdi2/Tile;->boundingBox:Lcom/prineside/tdi2/utils/IntRectangle;

    invoke-virtual {p1, p2, p3}, Lcom/prineside/tdi2/utils/IntRectangle;->contains(II)Z

    move-result p1

    return p1
.end method

.method public isSpawned(Lcom/prineside/tdi2/Unit;)Z
    .locals 0

    iget-boolean p1, p1, Lcom/prineside/tdi2/Unit;->spawned:Z

    return p1
.end method

.method public isVisible(Lcom/prineside/tdi2/Tile;Lcom/badlogic/gdx/graphics/OrthographicCamera;)Z
    .locals 5

    iget-object v0, p2, Lcom/badlogic/gdx/graphics/Camera;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v2, p2, Lcom/badlogic/gdx/graphics/Camera;->viewportWidth:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float v4, v2, v3

    sub-float v4, v1, v4

    float-to-int v4, v4

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget p2, p2, Lcom/badlogic/gdx/graphics/Camera;->viewportHeight:F

    div-float v2, p2, v3

    sub-float v2, v0, v2

    float-to-int v2, v2

    div-float/2addr p2, v3

    add-float/2addr v0, p2

    float-to-int p2, v0

    iget-object p1, p1, Lcom/prineside/tdi2/Tile;->boundingBox:Lcom/prineside/tdi2/utils/IntRectangle;

    invoke-virtual {p1, v4, v2, v1, p2}, Lcom/prineside/tdi2/utils/IntRectangle;->overlaps(IIII)Z

    move-result p1

    return p1
.end method

.method public final j(FFFFLcom/prineside/tdi2/utils/ObjectFilter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFFF",
            "Lcom/prineside/tdi2/utils/ObjectFilter<",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/systems/MapSystem$AabbEnemyEntry;",
            ">;>;)V"
        }
    .end annotation

    const/high16 v0, 0x43000000    # 128.0f

    div-float/2addr p1, v0

    invoke-static {p1}, Lcom/badlogic/gdx/math/MathUtils;->floor(F)I

    move-result p1

    iget-byte v1, p0, Lcom/prineside/tdi2/systems/MapSystem;->D:B

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-static {p1, v2, v1}, Lcom/badlogic/gdx/math/MathUtils;->clamp(III)I

    move-result p1

    div-float/2addr p2, v0

    invoke-static {p2}, Lcom/badlogic/gdx/math/MathUtils;->floor(F)I

    move-result p2

    iget-byte v1, p0, Lcom/prineside/tdi2/systems/MapSystem;->E:B

    add-int/lit8 v1, v1, -0x1

    invoke-static {p2, v2, v1}, Lcom/badlogic/gdx/math/MathUtils;->clamp(III)I

    move-result p2

    div-float/2addr p3, v0

    invoke-static {p3}, Lcom/badlogic/gdx/math/MathUtils;->ceil(F)I

    move-result p3

    iget-byte v1, p0, Lcom/prineside/tdi2/systems/MapSystem;->D:B

    add-int/lit8 v1, v1, -0x1

    invoke-static {p3, v2, v1}, Lcom/badlogic/gdx/math/MathUtils;->clamp(III)I

    move-result p3

    div-float/2addr p4, v0

    invoke-static {p4}, Lcom/badlogic/gdx/math/MathUtils;->ceil(F)I

    move-result p4

    iget-byte v0, p0, Lcom/prineside/tdi2/systems/MapSystem;->E:B

    add-int/lit8 v0, v0, -0x1

    invoke-static {p4, v2, v0}, Lcom/badlogic/gdx/math/MathUtils;->clamp(III)I

    move-result p4

    :goto_0
    if-gt p2, p4, :cond_3

    move v0, p1

    :goto_1
    if-gt v0, p3, :cond_2

    iget-byte v1, p0, Lcom/prineside/tdi2/systems/MapSystem;->D:B

    mul-int v1, v1, p2

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/prineside/tdi2/systems/MapSystem;->C:Lcom/prineside/tdi2/utils/BitVector;

    invoke-virtual {v2, v1}, Lcom/prineside/tdi2/utils/BitVector;->unsafeGet(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/prineside/tdi2/systems/MapSystem;->B:[Lcom/badlogic/gdx/utils/Array;

    iget-byte v2, p0, Lcom/prineside/tdi2/systems/MapSystem;->D:B

    mul-int v2, v2, p2

    add-int/2addr v2, v0

    aget-object v1, v1, v2

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {p5, v1}, Lcom/prineside/tdi2/utils/ObjectFilter;->passes(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final k(FF)I
    .locals 3

    const/high16 v0, 0x43000000    # 128.0f

    div-float/2addr p1, v0

    float-to-int p1, p1

    const/high16 v1, -0x80000000

    if-ltz p1, :cond_2

    iget-byte v2, p0, Lcom/prineside/tdi2/systems/MapSystem;->D:B

    if-lt p1, v2, :cond_0

    goto :goto_0

    :cond_0
    div-float/2addr p2, v0

    float-to-int p2, p2

    if-ltz p2, :cond_2

    iget-byte v0, p0, Lcom/prineside/tdi2/systems/MapSystem;->E:B

    if-lt p2, v0, :cond_1

    goto :goto_0

    :cond_1
    mul-int p2, p2, v2

    add-int/2addr p2, p1

    return p2

    :cond_2
    :goto_0
    return v1
.end method

.method public final l(FLcom/badlogic/gdx/math/Vector2;ZLcom/prineside/tdi2/Gate$Side;)V
    .locals 6

    const/high16 v0, -0x3db80000    # -50.0f

    const/high16 v1, -0x3d640000    # -78.0f

    const/high16 v2, 0x42800000    # 64.0f

    const/high16 v3, -0x3d800000    # -64.0f

    if-eqz p3, :cond_0

    const/high16 v0, 0x42800000    # 64.0f

    const/high16 v1, -0x3d800000    # -64.0f

    goto :goto_0

    :cond_0
    sget-object p3, Lcom/prineside/tdi2/Gate$Side;->LEFT:Lcom/prineside/tdi2/Gate$Side;

    if-ne p4, p3, :cond_1

    const/high16 v0, 0x42800000    # 64.0f

    const/high16 v2, -0x3db80000    # -50.0f

    goto :goto_0

    :cond_1
    const/high16 v1, -0x3d800000    # -64.0f

    const/high16 v3, -0x3d640000    # -78.0f

    :goto_0
    const/high16 p3, 0x3e800000    # 0.25f

    cmpg-float p4, p1, p3

    if-gez p4, :cond_2

    iput v1, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    div-float/2addr p1, p3

    sub-float/2addr v0, v3

    mul-float p1, p1, v0

    add-float/2addr p1, v3

    iput p1, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    goto :goto_1

    :cond_2
    const/high16 p4, 0x3f000000    # 0.5f

    cmpg-float v4, p1, p4

    if-gez v4, :cond_3

    sub-float/2addr p1, p3

    div-float/2addr p1, p3

    sub-float/2addr v2, v1

    mul-float p1, p1, v2

    add-float/2addr p1, v1

    iput p1, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iput v0, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    goto :goto_1

    :cond_3
    const/high16 v4, 0x3f400000    # 0.75f

    cmpg-float v5, p1, v4

    if-gez v5, :cond_4

    iput v2, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr p1, p4

    div-float/2addr p1, p3

    sub-float p3, v0, v3

    mul-float p1, p1, p3

    sub-float/2addr v0, p1

    iput v0, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    goto :goto_1

    :cond_4
    sub-float/2addr p1, v4

    div-float/2addr p1, p3

    sub-float p3, v2, v1

    mul-float p1, p1, p3

    sub-float/2addr v2, p1

    iput v2, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iput v3, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    :goto_1
    return-void
.end method

.method public postSetup()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prineside/tdi2/systems/MapSystem;->z:Z

    iget-boolean v0, p0, Lcom/prineside/tdi2/systems/MapSystem;->A:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/prineside/tdi2/systems/MapSystem;->r()V

    :cond_0
    invoke-virtual {p0}, Lcom/prineside/tdi2/systems/MapSystem;->u()V

    return-void
.end method

.method public profileUpdate()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final q()V
    .locals 5

    iget-object v0, p0, Lcom/prineside/tdi2/systems/MapSystem;->y:Lcom/prineside/tdi2/Map;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/StateSystem;->checkGameplayUpdateAllowed()V

    :cond_1
    iget-object v0, p0, Lcom/prineside/tdi2/systems/MapSystem;->y:Lcom/prineside/tdi2/Map;

    iget-object v0, v0, Lcom/prineside/tdi2/Map;->tilesArray:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Lcom/prineside/tdi2/systems/MapSystem;->y:Lcom/prineside/tdi2/Map;

    iget-object v3, v3, Lcom/prineside/tdi2/Map;->tilesArray:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget-object v3, v3, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Lcom/prineside/tdi2/Tile;

    aget-object v3, v3, v2

    iget-object v4, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/Registrable;->setRegistered(Lcom/prineside/tdi2/GameSystemProvider;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/prineside/tdi2/systems/MapSystem;->y:Lcom/prineside/tdi2/Map;

    iget-object v0, v0, Lcom/prineside/tdi2/Map;->gatesArray:Lcom/badlogic/gdx/utils/Array;

    iget v2, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v2, :cond_3

    iget-object v0, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v0, [Lcom/prineside/tdi2/Gate;

    aget-object v0, v0, v1

    iget-object v2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    invoke-virtual {v0, v2}, Lcom/prineside/tdi2/Registrable;->setRegistered(Lcom/prineside/tdi2/GameSystemProvider;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "System is not registered yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public final r()V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/prineside/tdi2/systems/MapSystem;->y:Lcom/prineside/tdi2/Map;

    iget v2, v2, Lcom/prineside/tdi2/Map;->heightTiles:I

    const/4 v3, 0x0

    if-ge v1, v2, :cond_3

    const/4 v2, 0x0

    :goto_1
    iget-object v4, p0, Lcom/prineside/tdi2/systems/MapSystem;->y:Lcom/prineside/tdi2/Map;

    iget v5, v4, Lcom/prineside/tdi2/Map;->widthTiles:I

    if-ge v2, v5, :cond_2

    invoke-virtual {v4, v2, v1}, Lcom/prineside/tdi2/Map;->getTile(II)Lcom/prineside/tdi2/Tile;

    move-result-object v4

    instance-of v5, v4, Lcom/prineside/tdi2/tiles/PlatformTile;

    if-eqz v5, :cond_0

    check-cast v4, Lcom/prineside/tdi2/tiles/PlatformTile;

    iget-object v5, v4, Lcom/prineside/tdi2/tiles/PlatformTile;->building:Lcom/prineside/tdi2/Building;

    if-eqz v5, :cond_1

    iget-object v6, v5, Lcom/prineside/tdi2/Building;->buildingType:Lcom/prineside/tdi2/enums/BuildingType;

    sget-object v7, Lcom/prineside/tdi2/enums/BuildingType;->TOWER:Lcom/prineside/tdi2/enums/BuildingType;

    if-ne v6, v7, :cond_1

    move-object v6, v5

    check-cast v6, Lcom/prineside/tdi2/Tower;

    invoke-virtual {v5, v3}, Lcom/prineside/tdi2/Building;->setTile(Lcom/prineside/tdi2/tiles/PlatformTile;)V

    iput-object v3, v4, Lcom/prineside/tdi2/tiles/PlatformTile;->building:Lcom/prineside/tdi2/Building;

    invoke-virtual {v4}, Lcom/prineside/tdi2/Tile;->getX()I

    move-result v5

    invoke-virtual {v4}, Lcom/prineside/tdi2/Tile;->getY()I

    move-result v4

    invoke-virtual {p0, v5, v4, v6}, Lcom/prineside/tdi2/systems/MapSystem;->setTower(IILcom/prineside/tdi2/Tower;)V

    goto :goto_2

    :cond_0
    instance-of v5, v4, Lcom/prineside/tdi2/tiles/SourceTile;

    if-eqz v5, :cond_1

    check-cast v4, Lcom/prineside/tdi2/tiles/SourceTile;

    iget-object v5, v4, Lcom/prineside/tdi2/tiles/SourceTile;->miner:Lcom/prineside/tdi2/Miner;

    if-eqz v5, :cond_1

    invoke-virtual {v5, v3}, Lcom/prineside/tdi2/Miner;->setTile(Lcom/prineside/tdi2/tiles/SourceTile;)V

    iput-object v3, v4, Lcom/prineside/tdi2/tiles/SourceTile;->miner:Lcom/prineside/tdi2/Miner;

    iget-object v6, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v6, v6, Lcom/prineside/tdi2/GameSystemProvider;->miner:Lcom/prineside/tdi2/systems/MinerSystem;

    invoke-virtual {v6, v5}, Lcom/prineside/tdi2/systems/MinerSystem;->register(Lcom/prineside/tdi2/Miner;)V

    const v6, 0x3a83126f    # 0.001f

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/Miner;->setInstallTime(F)V

    invoke-virtual {v4}, Lcom/prineside/tdi2/Tile;->getX()I

    move-result v6

    invoke-virtual {v4}, Lcom/prineside/tdi2/Tile;->getY()I

    move-result v4

    invoke-virtual {p0, v6, v4, v5}, Lcom/prineside/tdi2/systems/MapSystem;->setMiner(IILcom/prineside/tdi2/Miner;)V

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_3
    iget-object v2, p0, Lcom/prineside/tdi2/systems/MapSystem;->y:Lcom/prineside/tdi2/Map;

    iget v2, v2, Lcom/prineside/tdi2/Map;->heightTiles:I

    if-ge v1, v2, :cond_6

    const/4 v2, 0x0

    :goto_4
    iget-object v4, p0, Lcom/prineside/tdi2/systems/MapSystem;->y:Lcom/prineside/tdi2/Map;

    iget v5, v4, Lcom/prineside/tdi2/Map;->widthTiles:I

    if-ge v2, v5, :cond_5

    invoke-virtual {v4, v2, v1}, Lcom/prineside/tdi2/Map;->getTile(II)Lcom/prineside/tdi2/Tile;

    move-result-object v4

    instance-of v5, v4, Lcom/prineside/tdi2/tiles/PlatformTile;

    if-eqz v5, :cond_4

    check-cast v4, Lcom/prineside/tdi2/tiles/PlatformTile;

    iget-object v5, v4, Lcom/prineside/tdi2/tiles/PlatformTile;->building:Lcom/prineside/tdi2/Building;

    if-eqz v5, :cond_4

    iget-object v6, v5, Lcom/prineside/tdi2/Building;->buildingType:Lcom/prineside/tdi2/enums/BuildingType;

    sget-object v7, Lcom/prineside/tdi2/enums/BuildingType;->MODIFIER:Lcom/prineside/tdi2/enums/BuildingType;

    if-ne v6, v7, :cond_4

    move-object v6, v5

    check-cast v6, Lcom/prineside/tdi2/Modifier;

    invoke-virtual {v5, v3}, Lcom/prineside/tdi2/Building;->setTile(Lcom/prineside/tdi2/tiles/PlatformTile;)V

    iput-object v3, v4, Lcom/prineside/tdi2/tiles/PlatformTile;->building:Lcom/prineside/tdi2/Building;

    invoke-virtual {v4}, Lcom/prineside/tdi2/Tile;->getX()I

    move-result v5

    invoke-virtual {v4}, Lcom/prineside/tdi2/Tile;->getY()I

    move-result v4

    invoke-virtual {p0, v5, v4, v6}, Lcom/prineside/tdi2/systems/MapSystem;->setModifier(IILcom/prineside/tdi2/Modifier;)V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    return-void
.end method

.method public rayCastEnemies(Lcom/badlogic/gdx/utils/Array;FFFFFZ)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/Enemy$EnemyReference;",
            ">;FFFFFZ)Z"
        }
    .end annotation

    sget-object v0, Lcom/prineside/tdi2/systems/MapSystem;->I:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, p2, p3}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    sget-object p2, Lcom/prineside/tdi2/systems/MapSystem;->J:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p2, p4, p5}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    if-eqz p7, :cond_0

    invoke-static {}, Lcom/prineside/tdi2/utils/FloatSorter;->getInstance()Lcom/prineside/tdi2/utils/FloatSorter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/prineside/tdi2/utils/FloatSorter;->begin()V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iget-object p3, p0, Lcom/prineside/tdi2/systems/MapSystem;->spawnedEnemies:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget p3, p3, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 p4, 0x0

    const/4 p5, 0x0

    const/4 v0, 0x0

    :goto_1
    if-ge p5, p3, :cond_4

    iget-object v1, p0, Lcom/prineside/tdi2/systems/MapSystem;->spawnedEnemies:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/Enemy$EnemyReference;

    aget-object v1, v1, p5

    iget-object v2, v1, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    if-nez v2, :cond_1

    goto :goto_3

    :cond_1
    sget-object v3, Lcom/prineside/tdi2/systems/MapSystem;->I:Lcom/badlogic/gdx/math/Vector2;

    sget-object v4, Lcom/prineside/tdi2/systems/MapSystem;->J:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v2}, Lcom/prineside/tdi2/Enemy;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v5

    invoke-virtual {v2}, Lcom/prineside/tdi2/Enemy;->getSize()F

    move-result v6

    mul-float v6, v6, p6

    invoke-virtual {v2}, Lcom/prineside/tdi2/Enemy;->getSize()F

    move-result v7

    mul-float v7, v7, p6

    mul-float v6, v6, v7

    invoke-static {v3, v4, v5, v6}, Lcom/badlogic/gdx/math/Intersector;->intersectSegmentCircle(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;F)Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz p7, :cond_2

    invoke-virtual {v2}, Lcom/prineside/tdi2/Enemy;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/math/Vector2;->dst2(Lcom/badlogic/gdx/math/Vector2;)F

    move-result v0

    invoke-virtual {p2, v1, v0}, Lcom/prineside/tdi2/utils/FloatSorter;->add(Ljava/lang/Object;F)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :goto_2
    const/4 v0, 0x1

    :cond_3
    :goto_3
    add-int/lit8 p5, p5, 0x1

    goto :goto_1

    :cond_4
    if-eqz p7, :cond_6

    invoke-virtual {p2}, Lcom/prineside/tdi2/utils/FloatSorter;->sort()Lcom/badlogic/gdx/utils/Array;

    move-result-object p3

    :goto_4
    iget p5, p3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge p4, p5, :cond_5

    iget-object p5, p3, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast p5, [Lcom/prineside/tdi2/utils/FloatSorter$Entity;

    aget-object p5, p5, p4

    iget-object p5, p5, Lcom/prineside/tdi2/utils/FloatSorter$Entity;->object:Ljava/lang/Object;

    check-cast p5, Lcom/prineside/tdi2/Enemy$EnemyReference;

    invoke-virtual {p1, p5}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_4

    :cond_5
    invoke-virtual {p2}, Lcom/prineside/tdi2/utils/FloatSorter;->end()V

    :cond_6
    return v0
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Registrable;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/prineside/tdi2/systems/MapSystem;->x:Z

    const-class v0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iput-object v0, p0, Lcom/prineside/tdi2/systems/MapSystem;->spawnedEnemies:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const-class v0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iput-object v0, p0, Lcom/prineside/tdi2/systems/MapSystem;->spawnedUnits:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const-class v0, Lcom/prineside/tdi2/Map;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/Map;

    iput-object v0, p0, Lcom/prineside/tdi2/systems/MapSystem;->y:Lcom/prineside/tdi2/Map;

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/prineside/tdi2/systems/MapSystem;->z:Z

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/prineside/tdi2/systems/MapSystem;->A:Z

    const-class v0, Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/ListenerGroup;

    iput-object v0, p0, Lcom/prineside/tdi2/systems/MapSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->readClassAndObject(Lcom/esotericsoftware/kryo/io/Input;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/badlogic/gdx/utils/Array;

    iput-object v0, p0, Lcom/prineside/tdi2/systems/MapSystem;->B:[Lcom/badlogic/gdx/utils/Array;

    const-class v0, Lcom/prineside/tdi2/utils/BitVector;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/utils/BitVector;

    iput-object p1, p0, Lcom/prineside/tdi2/systems/MapSystem;->C:Lcom/prineside/tdi2/utils/BitVector;

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readByte()B

    move-result p1

    iput-byte p1, p0, Lcom/prineside/tdi2/systems/MapSystem;->D:B

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readByte()B

    move-result p1

    iput-byte p1, p0, Lcom/prineside/tdi2/systems/MapSystem;->E:B

    return-void
.end method

.method public registerGate(Lcom/prineside/tdi2/Gate;)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/Registrable;->setRegistered(Lcom/prineside/tdi2/GameSystemProvider;)V

    return-void
.end method

.method public registerTile(Lcom/prineside/tdi2/Tile;)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/Registrable;->setRegistered(Lcom/prineside/tdi2/GameSystemProvider;)V

    return-void
.end method

.method public removeBuilding(Lcom/prineside/tdi2/Building;)V
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/StateSystem;->checkGameplayUpdateAllowed()V

    :cond_0
    invoke-virtual {p1}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/prineside/tdi2/Building;->setTile(Lcom/prineside/tdi2/tiles/PlatformTile;)V

    iput-object v1, v0, Lcom/prineside/tdi2/tiles/PlatformTile;->building:Lcom/prineside/tdi2/Building;

    invoke-virtual {p1}, Lcom/prineside/tdi2/Building;->removedFromMap()V

    iget-boolean v1, p0, Lcom/prineside/tdi2/systems/MapSystem;->x:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v1

    invoke-virtual {v1}, Lcom/prineside/tdi2/Map;->rebuildPathfinding()V

    :cond_1
    iget-object v1, p0, Lcom/prineside/tdi2/systems/MapSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v1}, Lcom/prineside/tdi2/ListenerGroup;->begin()V

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/prineside/tdi2/systems/MapSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v2}, Lcom/prineside/tdi2/ListenerGroup;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_2

    iget-object v3, p0, Lcom/prineside/tdi2/systems/MapSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v3, v1}, Lcom/prineside/tdi2/ListenerGroup;->get(I)Lcom/prineside/tdi2/GameListener;

    move-result-object v3

    check-cast v3, Lcom/prineside/tdi2/systems/MapSystem$MapSystemListener;

    invoke-interface {v3, p1, v0}, Lcom/prineside/tdi2/systems/MapSystem$MapSystemListener;->buildingRemovedFromMap(Lcom/prineside/tdi2/Building;Lcom/prineside/tdi2/tiles/PlatformTile;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/prineside/tdi2/systems/MapSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ListenerGroup;->end()V

    return-void
.end method

.method public removeHighlights()V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/prineside/tdi2/systems/MapSystem;->p:Lcom/badlogic/gdx/utils/Array;

    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v4, 0x0

    if-ge v1, v3, :cond_0

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/Tile;

    iget-object v3, v2, Lcom/prineside/tdi2/Tile;->highlightParticleA:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->allowCompletion()V

    iput-object v4, v2, Lcom/prineside/tdi2/Tile;->highlightParticleA:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    iget-object v3, v2, Lcom/prineside/tdi2/Tile;->highlightParticleB:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->allowCompletion()V

    iput-object v4, v2, Lcom/prineside/tdi2/Tile;->highlightParticleB:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->clear()V

    :goto_1
    iget-object v1, p0, Lcom/prineside/tdi2/systems/MapSystem;->q:Lcom/badlogic/gdx/utils/Array;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v2, :cond_1

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/Gate;

    iget-object v2, v1, Lcom/prineside/tdi2/Gate;->highlightParticleA:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->allowCompletion()V

    iput-object v4, v1, Lcom/prineside/tdi2/Gate;->highlightParticleA:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    iget-object v2, v1, Lcom/prineside/tdi2/Gate;->highlightParticleB:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->allowCompletion()V

    iput-object v4, v1, Lcom/prineside/tdi2/Gate;->highlightParticleB:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->clear()V

    return-void
.end method

.method public removeMiner(Lcom/prineside/tdi2/Miner;)V
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/StateSystem;->checkGameplayUpdateAllowed()V

    :cond_0
    invoke-virtual {p1}, Lcom/prineside/tdi2/Miner;->getTile()Lcom/prineside/tdi2/tiles/SourceTile;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/prineside/tdi2/Miner;->setTile(Lcom/prineside/tdi2/tiles/SourceTile;)V

    iput-object v1, v0, Lcom/prineside/tdi2/tiles/SourceTile;->miner:Lcom/prineside/tdi2/Miner;

    invoke-virtual {p1}, Lcom/prineside/tdi2/Miner;->removedFromMap()V

    iget-object v1, p0, Lcom/prineside/tdi2/systems/MapSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v1}, Lcom/prineside/tdi2/ListenerGroup;->begin()V

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/prineside/tdi2/systems/MapSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v2}, Lcom/prineside/tdi2/ListenerGroup;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v3, p0, Lcom/prineside/tdi2/systems/MapSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v3, v1}, Lcom/prineside/tdi2/ListenerGroup;->get(I)Lcom/prineside/tdi2/GameListener;

    move-result-object v3

    check-cast v3, Lcom/prineside/tdi2/systems/MapSystem$MapSystemListener;

    invoke-interface {v3, p1, v0}, Lcom/prineside/tdi2/systems/MapSystem$MapSystemListener;->minerRemovedFromMap(Lcom/prineside/tdi2/Miner;Lcom/prineside/tdi2/tiles/SourceTile;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/prineside/tdi2/systems/MapSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ListenerGroup;->end()V

    return-void
.end method

.method public final s()V
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/systems/MapSystem;->y:Lcom/prineside/tdi2/Map;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lcom/prineside/tdi2/Map;->tilesArray:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/prineside/tdi2/systems/MapSystem;->y:Lcom/prineside/tdi2/Map;

    iget-object v3, v3, Lcom/prineside/tdi2/Map;->tilesArray:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget-object v3, v3, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Lcom/prineside/tdi2/Tile;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/prineside/tdi2/Tile;->setUnregistered()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/prineside/tdi2/systems/MapSystem;->y:Lcom/prineside/tdi2/Map;

    iget-object v0, v0, Lcom/prineside/tdi2/Map;->gatesArray:Lcom/badlogic/gdx/utils/Array;

    iget v2, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v2, :cond_2

    iget-object v0, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v0, [Lcom/prineside/tdi2/Gate;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/prineside/tdi2/Registrable;->setUnregistered()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public setGate(IILcom/prineside/tdi2/Gate$Side;Lcom/prineside/tdi2/Gate;)V
    .locals 9

    iget-object v0, p0, Lcom/prineside/tdi2/systems/MapSystem;->y:Lcom/prineside/tdi2/Map;

    invoke-virtual {v0, p1, p2, p3}, Lcom/prineside/tdi2/Map;->getGate(IILcom/prineside/tdi2/Gate$Side;)Lcom/prineside/tdi2/Gate;

    move-result-object v0

    iget-object v1, p0, Lcom/prineside/tdi2/systems/MapSystem;->k:Lcom/prineside/tdi2/Gate;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/prineside/tdi2/systems/MapSystem;->setHoveredGate(Lcom/prineside/tdi2/Gate;)V

    :cond_0
    iget-object v1, p0, Lcom/prineside/tdi2/systems/MapSystem;->d:Lcom/prineside/tdi2/Gate;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, v2}, Lcom/prineside/tdi2/systems/MapSystem;->setSelectedGate(Lcom/prineside/tdi2/Gate;)V

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/prineside/tdi2/systems/MapSystem;->y:Lcom/prineside/tdi2/Map;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/prineside/tdi2/Map;->tryReplaceGate(IILcom/prineside/tdi2/Gate$Side;Lcom/prineside/tdi2/Gate;)V
    :try_end_0
    .catch Lcom/prineside/tdi2/Map$InvalidMapException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/prineside/tdi2/Registrable;->setUnregistered()V

    :cond_2
    iget-object v1, p0, Lcom/prineside/tdi2/systems/MapSystem;->y:Lcom/prineside/tdi2/Map;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/prineside/tdi2/Map;->setGate(IILcom/prineside/tdi2/Gate$Side;Lcom/prineside/tdi2/Gate;)V

    if-eqz p4, :cond_3

    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    invoke-virtual {p4, v1}, Lcom/prineside/tdi2/Registrable;->setRegistered(Lcom/prineside/tdi2/GameSystemProvider;)V

    :cond_3
    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->_mapRendering:Lcom/prineside/tdi2/systems/MapRenderingSystem;

    if-eqz v1, :cond_4

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/systems/MapRenderingSystem;->forceTilesRedraw(Z)V

    :cond_4
    iget-object v1, p0, Lcom/prineside/tdi2/systems/MapSystem;->y:Lcom/prineside/tdi2/Map;

    invoke-virtual {v1}, Lcom/prineside/tdi2/Map;->rebuildPathfinding()V

    iget-object v1, p0, Lcom/prineside/tdi2/systems/MapSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v1}, Lcom/prineside/tdi2/ListenerGroup;->begin()V

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/prineside/tdi2/systems/MapSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v2}, Lcom/prineside/tdi2/ListenerGroup;->size()I

    move-result v7

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v7, :cond_5

    iget-object v1, p0, Lcom/prineside/tdi2/systems/MapSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v1, v8}, Lcom/prineside/tdi2/ListenerGroup;->get(I)Lcom/prineside/tdi2/GameListener;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/systems/MapSystem$MapSystemListener;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, v0

    move-object v6, p4

    invoke-interface/range {v1 .. v6}, Lcom/prineside/tdi2/systems/MapSystem$MapSystemListener;->gateChanged(IILcom/prineside/tdi2/Gate$Side;Lcom/prineside/tdi2/Gate;Lcom/prineside/tdi2/Gate;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/prineside/tdi2/systems/MapSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ListenerGroup;->end()V

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "can\'t replace gate: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MapSystem"

    invoke-static {p2, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setHoveredGate(Lcom/prineside/tdi2/Gate;)V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/systems/MapSystem;->k:Lcom/prineside/tdi2/Gate;

    iput-object p1, p0, Lcom/prineside/tdi2/systems/MapSystem;->k:Lcom/prineside/tdi2/Gate;

    iget-object p1, p0, Lcom/prineside/tdi2/systems/MapSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ListenerGroup;->begin()V

    iget-object p1, p0, Lcom/prineside/tdi2/systems/MapSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ListenerGroup;->size()I

    move-result p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    iget-object v2, p0, Lcom/prineside/tdi2/systems/MapSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v2, v1}, Lcom/prineside/tdi2/ListenerGroup;->get(I)Lcom/prineside/tdi2/GameListener;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/systems/MapSystem$MapSystemListener;

    invoke-interface {v2, v0}, Lcom/prineside/tdi2/systems/MapSystem$MapSystemListener;->hoveredGateChanged(Lcom/prineside/tdi2/Gate;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/prineside/tdi2/systems/MapSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ListenerGroup;->end()V

    return-void
.end method

.method public setHoveredTile(Lcom/prineside/tdi2/Tile;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/prineside/tdi2/Tile;->canBeSelected()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/systems/MapSystem;->b:Lcom/prineside/tdi2/Tile;

    iput-object p1, p0, Lcom/prineside/tdi2/systems/MapSystem;->b:Lcom/prineside/tdi2/Tile;

    iget-object p1, p0, Lcom/prineside/tdi2/systems/MapSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ListenerGroup;->begin()V

    const/4 p1, 0x0

    iget-object v1, p0, Lcom/prineside/tdi2/systems/MapSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v1}, Lcom/prineside/tdi2/ListenerGroup;->size()I

    move-result v1

    :goto_0
    if-ge p1, v1, :cond_1

    iget-object v2, p0, Lcom/prineside/tdi2/systems/MapSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v2, p1}, Lcom/prineside/tdi2/ListenerGroup;->get(I)Lcom/prineside/tdi2/GameListener;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/systems/MapSystem$MapSystemListener;

    invoke-interface {v2, v0}, Lcom/prineside/tdi2/systems/MapSystem$MapSystemListener;->hoveredTileChanged(Lcom/prineside/tdi2/Tile;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/prineside/tdi2/systems/MapSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ListenerGroup;->end()V

    return-void
.end method

.method public setMap(Lcom/prineside/tdi2/Map;)V
    .locals 7

    iget-object v0, p0, Lcom/prineside/tdi2/systems/MapSystem;->y:Lcom/prineside/tdi2/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/prineside/tdi2/Map;->setUnregistered()V

    const/4 v0, 0x0

    :goto_0
    iget v2, p1, Lcom/prineside/tdi2/Map;->heightTiles:I

    if-ge v0, v2, :cond_2

    const/4 v2, 0x0

    :goto_1
    iget v3, p1, Lcom/prineside/tdi2/Map;->widthTiles:I

    if-ge v2, v3, :cond_1

    iget-object v3, p1, Lcom/prineside/tdi2/Map;->tiles:[[Lcom/prineside/tdi2/Tile;

    aget-object v3, v3, v0

    aget-object v3, v3, v2

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/prineside/tdi2/Registrable;->isRegistered()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/prineside/tdi2/Tile;->setUnregistered()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iput-object p1, p0, Lcom/prineside/tdi2/systems/MapSystem;->y:Lcom/prineside/tdi2/Map;

    if-eqz p1, :cond_5

    invoke-virtual {p1, p0}, Lcom/prineside/tdi2/Map;->setRegistered(Lcom/prineside/tdi2/systems/MapSystem;)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/systems/MapSystem;->q()V

    iget-boolean v0, p0, Lcom/prineside/tdi2/systems/MapSystem;->z:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/prineside/tdi2/systems/MapSystem;->r()V

    goto :goto_2

    :cond_3
    iput-boolean v2, p0, Lcom/prineside/tdi2/systems/MapSystem;->A:Z

    :goto_2
    iget v0, p1, Lcom/prineside/tdi2/Map;->widthTiles:I

    mul-int/lit16 v0, v0, 0x80

    int-to-float v0, v0

    const/high16 v3, 0x43000000    # 128.0f

    div-float/2addr v0, v3

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->ceil(F)I

    move-result v0

    iget p1, p1, Lcom/prineside/tdi2/Map;->heightTiles:I

    mul-int/lit16 p1, p1, 0x80

    int-to-float p1, p1

    div-float/2addr p1, v3

    invoke-static {p1}, Lcom/badlogic/gdx/math/MathUtils;->ceil(F)I

    move-result p1

    mul-int v3, v0, p1

    new-array v4, v3, [Lcom/badlogic/gdx/utils/Array;

    iput-object v4, p0, Lcom/prineside/tdi2/systems/MapSystem;->B:[Lcom/badlogic/gdx/utils/Array;

    iget-object v4, p0, Lcom/prineside/tdi2/systems/MapSystem;->C:Lcom/prineside/tdi2/utils/BitVector;

    invoke-virtual {v4}, Lcom/prineside/tdi2/utils/BitVector;->clear()V

    iget-object v4, p0, Lcom/prineside/tdi2/systems/MapSystem;->C:Lcom/prineside/tdi2/utils/BitVector;

    invoke-virtual {v4, v3}, Lcom/prineside/tdi2/utils/BitVector;->ensureCapacity(I)V

    :goto_3
    if-ge v1, v3, :cond_4

    iget-object v4, p0, Lcom/prineside/tdi2/systems/MapSystem;->B:[Lcom/badlogic/gdx/utils/Array;

    new-instance v5, Lcom/badlogic/gdx/utils/Array;

    const-class v6, Lcom/prineside/tdi2/systems/MapSystem$AabbEnemyEntry;

    invoke-direct {v5, v2, v2, v6}, Lcom/badlogic/gdx/utils/Array;-><init>(ZILjava/lang/Class;)V

    aput-object v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/prineside/tdi2/systems/MapSystem;->D:B

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/prineside/tdi2/systems/MapSystem;->E:B

    :cond_5
    return-void
.end method

.method public setMiner(IILcom/prineside/tdi2/Miner;)V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/StateSystem;->checkGameplayUpdateAllowed()V

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/systems/MapSystem;->y:Lcom/prineside/tdi2/Map;

    invoke-virtual {v0, p1, p2}, Lcom/prineside/tdi2/Map;->getTile(II)Lcom/prineside/tdi2/Tile;

    move-result-object v0

    iget-object v1, v0, Lcom/prineside/tdi2/Tile;->type:Lcom/prineside/tdi2/enums/TileType;

    sget-object v2, Lcom/prineside/tdi2/enums/TileType;->SOURCE:Lcom/prineside/tdi2/enums/TileType;

    if-ne v1, v2, :cond_3

    check-cast v0, Lcom/prineside/tdi2/tiles/SourceTile;

    iget-object p1, v0, Lcom/prineside/tdi2/tiles/SourceTile;->miner:Lcom/prineside/tdi2/Miner;

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/systems/MapSystem;->removeMiner(Lcom/prineside/tdi2/Miner;)V

    :cond_1
    iput-object p3, v0, Lcom/prineside/tdi2/tiles/SourceTile;->miner:Lcom/prineside/tdi2/Miner;

    invoke-virtual {p3, v0}, Lcom/prineside/tdi2/Miner;->setTile(Lcom/prineside/tdi2/tiles/SourceTile;)V

    invoke-virtual {p3}, Lcom/prineside/tdi2/Miner;->placedOnMap()V

    iget-object p1, p0, Lcom/prineside/tdi2/systems/MapSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ListenerGroup;->begin()V

    const/4 p1, 0x0

    iget-object p2, p0, Lcom/prineside/tdi2/systems/MapSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p2}, Lcom/prineside/tdi2/ListenerGroup;->size()I

    move-result p2

    :goto_0
    if-ge p1, p2, :cond_2

    iget-object v0, p0, Lcom/prineside/tdi2/systems/MapSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/ListenerGroup;->get(I)Lcom/prineside/tdi2/GameListener;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/systems/MapSystem$MapSystemListener;

    invoke-interface {v0, p3}, Lcom/prineside/tdi2/systems/MapSystem$MapSystemListener;->minerPlacedOnMap(Lcom/prineside/tdi2/Miner;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/prineside/tdi2/systems/MapSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ListenerGroup;->end()V

    return-void

    :cond_3
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tile at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v0, Lcom/prineside/tdi2/Tile;->type:Lcom/prineside/tdi2/enums/TileType;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", can\'t place miner here"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p3

    :goto_2
    goto :goto_1
.end method

.method public setModifier(IILcom/prineside/tdi2/Modifier;)V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/StateSystem;->checkGameplayUpdateAllowed()V

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/systems/MapSystem;->y:Lcom/prineside/tdi2/Map;

    invoke-virtual {v0, p1, p2}, Lcom/prineside/tdi2/Map;->getTile(II)Lcom/prineside/tdi2/Tile;

    move-result-object v0

    iget-object v1, v0, Lcom/prineside/tdi2/Tile;->type:Lcom/prineside/tdi2/enums/TileType;

    sget-object v2, Lcom/prineside/tdi2/enums/TileType;->PLATFORM:Lcom/prineside/tdi2/enums/TileType;

    if-ne v1, v2, :cond_4

    check-cast v0, Lcom/prineside/tdi2/tiles/PlatformTile;

    iget-object p1, v0, Lcom/prineside/tdi2/tiles/PlatformTile;->building:Lcom/prineside/tdi2/Building;

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/systems/MapSystem;->removeBuilding(Lcom/prineside/tdi2/Building;)V

    :cond_1
    iput-object p3, v0, Lcom/prineside/tdi2/tiles/PlatformTile;->building:Lcom/prineside/tdi2/Building;

    invoke-virtual {p3, v0}, Lcom/prineside/tdi2/Building;->setTile(Lcom/prineside/tdi2/tiles/PlatformTile;)V

    iget-boolean p1, p0, Lcom/prineside/tdi2/systems/MapSystem;->x:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prineside/tdi2/Map;->rebuildPathfinding()V

    :cond_2
    iget-object p1, p0, Lcom/prineside/tdi2/systems/MapSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ListenerGroup;->begin()V

    const/4 p1, 0x0

    iget-object p2, p0, Lcom/prineside/tdi2/systems/MapSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p2}, Lcom/prineside/tdi2/ListenerGroup;->size()I

    move-result p2

    :goto_0
    if-ge p1, p2, :cond_3

    iget-object v0, p0, Lcom/prineside/tdi2/systems/MapSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/ListenerGroup;->get(I)Lcom/prineside/tdi2/GameListener;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/systems/MapSystem$MapSystemListener;

    invoke-interface {v0, p3}, Lcom/prineside/tdi2/systems/MapSystem$MapSystemListener;->modifierPlacedOnMap(Lcom/prineside/tdi2/Modifier;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/prineside/tdi2/systems/MapSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ListenerGroup;->end()V

    invoke-virtual {p3}, Lcom/prineside/tdi2/Building;->placedOnMap()V

    return-void

    :cond_4
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tile at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v0, Lcom/prineside/tdi2/Tile;->type:Lcom/prineside/tdi2/enums/TileType;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", can\'t place modifier here"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p3

    :goto_2
    goto :goto_1
.end method

.method public setPathTracesDrawing(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/prineside/tdi2/systems/MapSystem;->drawPathTraces:Z

    return-void
.end method

.method public setSelectedGate(Lcom/prineside/tdi2/Gate;)V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/systems/MapSystem;->d:Lcom/prineside/tdi2/Gate;

    iput-object p1, p0, Lcom/prineside/tdi2/systems/MapSystem;->d:Lcom/prineside/tdi2/Gate;

    iget-object p1, p0, Lcom/prineside/tdi2/systems/MapSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ListenerGroup;->begin()V

    iget-object p1, p0, Lcom/prineside/tdi2/systems/MapSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ListenerGroup;->size()I

    move-result p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    iget-object v2, p0, Lcom/prineside/tdi2/systems/MapSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v2, v1}, Lcom/prineside/tdi2/ListenerGroup;->get(I)Lcom/prineside/tdi2/GameListener;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/systems/MapSystem$MapSystemListener;

    invoke-interface {v2, v0}, Lcom/prineside/tdi2/systems/MapSystem$MapSystemListener;->selectedGateChanged(Lcom/prineside/tdi2/Gate;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/prineside/tdi2/systems/MapSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ListenerGroup;->end()V

    return-void
.end method

.method public setSelectedTile(Lcom/prineside/tdi2/Tile;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/prineside/tdi2/Tile;->canBeSelected()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/systems/MapSystem;->a:Lcom/prineside/tdi2/Tile;

    iput-object p1, p0, Lcom/prineside/tdi2/systems/MapSystem;->a:Lcom/prineside/tdi2/Tile;

    iget-object p1, p0, Lcom/prineside/tdi2/systems/MapSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ListenerGroup;->begin()V

    const/4 p1, 0x0

    iget-object v1, p0, Lcom/prineside/tdi2/systems/MapSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v1}, Lcom/prineside/tdi2/ListenerGroup;->size()I

    move-result v1

    :goto_0
    if-ge p1, v1, :cond_1

    iget-object v2, p0, Lcom/prineside/tdi2/systems/MapSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v2, p1}, Lcom/prineside/tdi2/ListenerGroup;->get(I)Lcom/prineside/tdi2/GameListener;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/systems/MapSystem$MapSystemListener;

    invoke-interface {v2, v0}, Lcom/prineside/tdi2/systems/MapSystem$MapSystemListener;->selectedTileChanged(Lcom/prineside/tdi2/Tile;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/prineside/tdi2/systems/MapSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ListenerGroup;->end()V

    return-void
.end method

.method public setTile(IILcom/prineside/tdi2/Tile;)V
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/systems/MapSystem;->y:Lcom/prineside/tdi2/Map;

    invoke-virtual {v0, p1, p2}, Lcom/prineside/tdi2/Map;->getTile(II)Lcom/prineside/tdi2/Tile;

    move-result-object v0

    iget-object v1, p0, Lcom/prineside/tdi2/systems/MapSystem;->b:Lcom/prineside/tdi2/Tile;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/prineside/tdi2/systems/MapSystem;->setHoveredTile(Lcom/prineside/tdi2/Tile;)V

    :cond_0
    iget-object v1, p0, Lcom/prineside/tdi2/systems/MapSystem;->a:Lcom/prineside/tdi2/Tile;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, v2}, Lcom/prineside/tdi2/systems/MapSystem;->setSelectedTile(Lcom/prineside/tdi2/Tile;)V

    :cond_1
    instance-of v1, v0, Lcom/prineside/tdi2/tiles/SpawnTile;

    const-string v2, "MapSystem"

    if-eqz v1, :cond_2

    const-string p1, "can\'t remove spawn tile"

    invoke-static {v2, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    if-eqz v0, :cond_3

    iget-object v1, v0, Lcom/prineside/tdi2/Tile;->enemies:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-static {v1}, Lcom/prineside/tdi2/utils/EntityUtils;->removeNullRefs(Lcom/badlogic/gdx/utils/Array;)V

    iget-object v1, v0, Lcom/prineside/tdi2/Tile;->enemies:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eqz v1, :cond_3

    const-string p1, "can\'t remove tile with enemies"

    invoke-static {v2, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    :try_start_0
    iget-object v1, p0, Lcom/prineside/tdi2/systems/MapSystem;->y:Lcom/prineside/tdi2/Map;

    invoke-virtual {v1, p1, p2, p3}, Lcom/prineside/tdi2/Map;->tryReplaceTile(IILcom/prineside/tdi2/Tile;)V
    :try_end_0
    .catch Lcom/prineside/tdi2/Map$InvalidMapException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_7

    iget-object v1, v0, Lcom/prineside/tdi2/Tile;->type:Lcom/prineside/tdi2/enums/TileType;

    sget-object v2, Lcom/prineside/tdi2/enums/TileType;->PLATFORM:Lcom/prineside/tdi2/enums/TileType;

    if-ne v1, v2, :cond_5

    move-object v1, v0

    check-cast v1, Lcom/prineside/tdi2/tiles/PlatformTile;

    iget-object v1, v1, Lcom/prineside/tdi2/tiles/PlatformTile;->building:Lcom/prineside/tdi2/Building;

    if-eqz v1, :cond_5

    iget-object v2, v1, Lcom/prineside/tdi2/Building;->buildingType:Lcom/prineside/tdi2/enums/BuildingType;

    sget-object v3, Lcom/prineside/tdi2/enums/BuildingType;->TOWER:Lcom/prineside/tdi2/enums/BuildingType;

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->tower:Lcom/prineside/tdi2/systems/TowerSystem;

    check-cast v1, Lcom/prineside/tdi2/Tower;

    invoke-virtual {v2, v1}, Lcom/prineside/tdi2/systems/TowerSystem;->sellTower(Lcom/prineside/tdi2/Tower;)Z

    goto :goto_0

    :cond_4
    sget-object v3, Lcom/prineside/tdi2/enums/BuildingType;->MODIFIER:Lcom/prineside/tdi2/enums/BuildingType;

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->modifier:Lcom/prineside/tdi2/systems/ModifierSystem;

    check-cast v1, Lcom/prineside/tdi2/Modifier;

    invoke-virtual {v2, v1}, Lcom/prineside/tdi2/systems/ModifierSystem;->sellModifier(Lcom/prineside/tdi2/Modifier;)V

    :cond_5
    :goto_0
    iget-object v1, v0, Lcom/prineside/tdi2/Tile;->type:Lcom/prineside/tdi2/enums/TileType;

    sget-object v2, Lcom/prineside/tdi2/enums/TileType;->SOURCE:Lcom/prineside/tdi2/enums/TileType;

    if-ne v1, v2, :cond_6

    move-object v1, v0

    check-cast v1, Lcom/prineside/tdi2/tiles/SourceTile;

    iget-object v1, v1, Lcom/prineside/tdi2/tiles/SourceTile;->miner:Lcom/prineside/tdi2/Miner;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->miner:Lcom/prineside/tdi2/systems/MinerSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/Tile;->getX()I

    move-result v2

    invoke-virtual {v0}, Lcom/prineside/tdi2/Tile;->getY()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/prineside/tdi2/systems/MinerSystem;->sellMiner(II)V

    :cond_6
    invoke-virtual {v0}, Lcom/prineside/tdi2/Tile;->setUnregistered()V

    :cond_7
    instance-of v1, p3, Lcom/prineside/tdi2/tiles/PlatformTile;

    if-eqz v1, :cond_8

    move-object v1, p3

    check-cast v1, Lcom/prineside/tdi2/tiles/PlatformTile;

    iget-boolean v2, p0, Lcom/prineside/tdi2/systems/MapSystem;->x:Z

    iput-boolean v2, v1, Lcom/prineside/tdi2/tiles/PlatformTile;->walkableEnabled:Z

    :cond_8
    iget-object v1, p0, Lcom/prineside/tdi2/systems/MapSystem;->y:Lcom/prineside/tdi2/Map;

    invoke-virtual {v1, p1, p2, p3}, Lcom/prineside/tdi2/Map;->setTile(IILcom/prineside/tdi2/Tile;)V

    if-eqz p3, :cond_9

    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    invoke-virtual {p3, v1}, Lcom/prineside/tdi2/Registrable;->setRegistered(Lcom/prineside/tdi2/GameSystemProvider;)V

    :cond_9
    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->_mapRendering:Lcom/prineside/tdi2/systems/MapRenderingSystem;

    if-eqz v1, :cond_a

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/systems/MapRenderingSystem;->forceTilesRedraw(Z)V

    :cond_a
    instance-of v1, p3, Lcom/prineside/tdi2/tiles/BossTile;

    if-nez v1, :cond_b

    instance-of v1, v0, Lcom/prineside/tdi2/tiles/BossTile;

    if-nez v1, :cond_b

    instance-of v1, p3, Lcom/prineside/tdi2/tiles/SpawnTile;

    if-eqz v1, :cond_c

    :cond_b
    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->wave:Lcom/prineside/tdi2/systems/WaveSystem;

    iget-object v2, p0, Lcom/prineside/tdi2/systems/MapSystem;->y:Lcom/prineside/tdi2/Map;

    invoke-virtual {v2}, Lcom/prineside/tdi2/Map;->getBossWaves()Lcom/badlogic/gdx/utils/IntMap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/systems/WaveSystem;->setBossWaves(Lcom/badlogic/gdx/utils/IntMap;)V

    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->wave:Lcom/prineside/tdi2/systems/WaveSystem;

    invoke-virtual {v1}, Lcom/prineside/tdi2/systems/WaveSystem;->resetNextWavesCache()V

    :cond_c
    iget-object v1, p0, Lcom/prineside/tdi2/systems/MapSystem;->y:Lcom/prineside/tdi2/Map;

    invoke-virtual {v1}, Lcom/prineside/tdi2/Map;->rebuildPathfindingIfNeeded()V

    iget-object v1, p0, Lcom/prineside/tdi2/systems/MapSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v1}, Lcom/prineside/tdi2/ListenerGroup;->begin()V

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/prineside/tdi2/systems/MapSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v2}, Lcom/prineside/tdi2/ListenerGroup;->size()I

    move-result v2

    :goto_1
    if-ge v1, v2, :cond_d

    iget-object v3, p0, Lcom/prineside/tdi2/systems/MapSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v3, v1}, Lcom/prineside/tdi2/ListenerGroup;->get(I)Lcom/prineside/tdi2/GameListener;

    move-result-object v3

    check-cast v3, Lcom/prineside/tdi2/systems/MapSystem$MapSystemListener;

    invoke-interface {v3, p1, p2, v0, p3}, Lcom/prineside/tdi2/systems/MapSystem$MapSystemListener;->tileChanged(IILcom/prineside/tdi2/Tile;Lcom/prineside/tdi2/Tile;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_d
    iget-object p1, p0, Lcom/prineside/tdi2/systems/MapSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ListenerGroup;->end()V

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "can\'t replace tile: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setTower(IILcom/prineside/tdi2/Tower;)V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/StateSystem;->checkGameplayUpdateAllowed()V

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/systems/MapSystem;->y:Lcom/prineside/tdi2/Map;

    invoke-virtual {v0, p1, p2}, Lcom/prineside/tdi2/Map;->getTile(II)Lcom/prineside/tdi2/Tile;

    move-result-object v0

    iget-object v1, v0, Lcom/prineside/tdi2/Tile;->type:Lcom/prineside/tdi2/enums/TileType;

    sget-object v2, Lcom/prineside/tdi2/enums/TileType;->PLATFORM:Lcom/prineside/tdi2/enums/TileType;

    if-ne v1, v2, :cond_4

    check-cast v0, Lcom/prineside/tdi2/tiles/PlatformTile;

    iget-object p1, v0, Lcom/prineside/tdi2/tiles/PlatformTile;->building:Lcom/prineside/tdi2/Building;

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/systems/MapSystem;->removeBuilding(Lcom/prineside/tdi2/Building;)V

    :cond_1
    iput-object p3, v0, Lcom/prineside/tdi2/tiles/PlatformTile;->building:Lcom/prineside/tdi2/Building;

    invoke-virtual {p3, v0}, Lcom/prineside/tdi2/Tower;->setTile(Lcom/prineside/tdi2/tiles/PlatformTile;)V

    iget-boolean p1, p0, Lcom/prineside/tdi2/systems/MapSystem;->x:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prineside/tdi2/Map;->rebuildPathfinding()V

    :cond_2
    iget-object p1, p0, Lcom/prineside/tdi2/systems/MapSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ListenerGroup;->begin()V

    const/4 p1, 0x0

    iget-object p2, p0, Lcom/prineside/tdi2/systems/MapSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p2}, Lcom/prineside/tdi2/ListenerGroup;->size()I

    move-result p2

    :goto_0
    if-ge p1, p2, :cond_3

    iget-object v0, p0, Lcom/prineside/tdi2/systems/MapSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/ListenerGroup;->get(I)Lcom/prineside/tdi2/GameListener;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/systems/MapSystem$MapSystemListener;

    invoke-interface {v0, p3}, Lcom/prineside/tdi2/systems/MapSystem$MapSystemListener;->towerPlacedOnMap(Lcom/prineside/tdi2/Tower;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/prineside/tdi2/systems/MapSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ListenerGroup;->end()V

    invoke-virtual {p3}, Lcom/prineside/tdi2/Tower;->updateCache()V

    invoke-virtual {p3}, Lcom/prineside/tdi2/Tower;->placedOnMap()V

    return-void

    :cond_4
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tile at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v0, Lcom/prineside/tdi2/Tile;->type:Lcom/prineside/tdi2/enums/TileType;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", can\'t place tower here"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p3

    :goto_2
    goto :goto_1
.end method

.method public setup()V
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v0, Lcom/prineside/tdi2/GameSystemProvider;->unit:Lcom/prineside/tdi2/systems/UnitSystem;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/prineside/tdi2/systems/UnitSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    new-instance v3, Lcom/prineside/tdi2/systems/MapSystem$_UnitSystemListener;

    invoke-direct {v3, v0, v2}, Lcom/prineside/tdi2/systems/MapSystem$_UnitSystemListener;-><init>(Lcom/prineside/tdi2/GameSystemProvider;Lcom/prineside/tdi2/systems/MapSystem$1;)V

    invoke-virtual {v1, v3}, Lcom/prineside/tdi2/ListenerGroup;->add(Lcom/prineside/tdi2/GameListener;)Z

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v0, Lcom/prineside/tdi2/GameSystemProvider;->wave:Lcom/prineside/tdi2/systems/WaveSystem;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/prineside/tdi2/systems/WaveSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    new-instance v3, Lcom/prineside/tdi2/systems/MapSystem$_WaveSystemListener;

    invoke-direct {v3, v0, v2}, Lcom/prineside/tdi2/systems/MapSystem$_WaveSystemListener;-><init>(Lcom/prineside/tdi2/GameSystemProvider;Lcom/prineside/tdi2/systems/MapSystem$1;)V

    invoke-virtual {v1, v3}, Lcom/prineside/tdi2/ListenerGroup;->add(Lcom/prineside/tdi2/GameListener;)Z

    :cond_1
    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lcom/prineside/tdi2/systems/GameValueSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    new-instance v3, Lcom/prineside/tdi2/systems/MapSystem$_GameValueSystemListener;

    invoke-direct {v3, v0, v2}, Lcom/prineside/tdi2/systems/MapSystem$_GameValueSystemListener;-><init>(Lcom/prineside/tdi2/GameSystemProvider;Lcom/prineside/tdi2/systems/MapSystem$1;)V

    invoke-virtual {v1, v3}, Lcom/prineside/tdi2/ListenerGroup;->add(Lcom/prineside/tdi2/GameListener;)Z

    :cond_2
    invoke-virtual {p0}, Lcom/prineside/tdi2/systems/MapSystem;->q()V

    return-void
.end method

.method public showAllPathTraces(Z)V
    .locals 8

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->_pathRendering:Lcom/prineside/tdi2/systems/PathRenderingSystem;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/PathRenderingSystem;->removePaths()V

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/prineside/tdi2/systems/PathRenderingSystem$PathEnemyPair;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/prineside/tdi2/systems/MapSystem;->y:Lcom/prineside/tdi2/Map;

    iget-object v3, v3, Lcom/prineside/tdi2/Map;->spawnTiles:Lcom/badlogic/gdx/utils/Array;

    iget v4, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v2, v4, :cond_3

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/prineside/tdi2/tiles/SpawnTile;

    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v3}, Lcom/prineside/tdi2/tiles/SpawnTile;->getAllowedEnemies()Lcom/badlogic/gdx/utils/Array;

    move-result-object v5

    iget v5, v5, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v4, v5, :cond_2

    invoke-virtual {v3}, Lcom/prineside/tdi2/tiles/SpawnTile;->getAllowedEnemies()Lcom/badlogic/gdx/utils/Array;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;

    iget-object v5, v5, Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;->enemyType:Lcom/prineside/tdi2/enums/EnemyType;

    iget-object v6, p0, Lcom/prineside/tdi2/systems/MapSystem;->y:Lcom/prineside/tdi2/Map;

    invoke-virtual {v6, v5, v3}, Lcom/prineside/tdi2/Map;->getDefaultPathWithoutStateChanges(Lcom/prineside/tdi2/enums/EnemyType;Lcom/prineside/tdi2/tiles/SpawnTile;)Lcom/prineside/tdi2/Path;

    move-result-object v6

    if-nez v6, :cond_0

    goto :goto_2

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {v6}, Lcom/prineside/tdi2/Path;->isPrepared()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v6}, Lcom/prineside/tdi2/Path;->prepareIfNeeded()V

    :cond_1
    new-instance v7, Lcom/prineside/tdi2/systems/PathRenderingSystem$PathEnemyPair;

    invoke-direct {v7}, Lcom/prineside/tdi2/systems/PathRenderingSystem$PathEnemyPair;-><init>()V

    iput-object v6, v7, Lcom/prineside/tdi2/systems/PathRenderingSystem$PathEnemyPair;->path:Lcom/prineside/tdi2/Path;

    iput-object v5, v7, Lcom/prineside/tdi2/systems/PathRenderingSystem$PathEnemyPair;->enemyType:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v0, v7}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->_pathRendering:Lcom/prineside/tdi2/systems/PathRenderingSystem;

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/systems/PathRenderingSystem;->setPaths(Lcom/badlogic/gdx/utils/Array;)V

    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Path rendering system is not registered"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public showTileWarningParticle(II)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->mapManager:Lcom/prineside/tdi2/managers/MapManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/MapManager;->tileWarningParticlePool:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    mul-int/lit16 p1, p1, 0x80

    add-int/lit8 p1, p1, 0x40

    int-to-float p1, p1

    mul-int/lit16 p2, p2, 0x80

    add-int/lit8 p2, p2, 0x40

    int-to-float p2, p2

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->setPosition(FF)V

    iget-object p1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    const/4 p2, 0x0

    invoke-virtual {p1, v0, p2}, Lcom/prineside/tdi2/systems/ParticleSystem;->addParticle(Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;Z)Z

    :cond_0
    return-void
.end method

.method public showTowerRangeHint(FFFF)V
    .locals 7

    iget-object v0, p0, Lcom/prineside/tdi2/systems/MapSystem;->s:Lcom/prineside/tdi2/shapes/RangeCircle;

    if-nez v0, :cond_0

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->shapeManager:Lcom/prineside/tdi2/managers/ShapeManager;

    sget-object v1, Lcom/prineside/tdi2/enums/ShapeType;->RANGE_CIRCLE:Lcom/prineside/tdi2/enums/ShapeType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/ShapeManager;->getFactory(Lcom/prineside/tdi2/enums/ShapeType;)Lcom/prineside/tdi2/Shape$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/Shape$Factory;->obtain()Lcom/prineside/tdi2/Shape;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/shapes/RangeCircle;

    iput-object v0, p0, Lcom/prineside/tdi2/systems/MapSystem;->s:Lcom/prineside/tdi2/shapes/RangeCircle;

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prineside/tdi2/systems/MapSystem;->t:Z

    iget-object v1, p0, Lcom/prineside/tdi2/systems/MapSystem;->s:Lcom/prineside/tdi2/shapes/RangeCircle;

    sget-object v6, Lcom/prineside/tdi2/systems/MapSystem;->F:Lcom/badlogic/gdx/graphics/Color;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/prineside/tdi2/shapes/RangeCircle;->setup(FFFFLcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public spawnEnemy(Lcom/prineside/tdi2/Enemy;)V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/StateSystem;->checkGameplayUpdateAllowed()V

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/systems/EnemySystem;->getReference(Lcom/prineside/tdi2/Enemy;)Lcom/prineside/tdi2/Enemy$EnemyReference;

    move-result-object v0

    iget-object v1, p0, Lcom/prineside/tdi2/systems/MapSystem;->spawnedEnemies:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/badlogic/gdx/utils/Array;->contains(Ljava/lang/Object;Z)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/prineside/tdi2/systems/MapSystem;->spawnedEnemies:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/MapSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ListenerGroup;->begin()V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/prineside/tdi2/systems/MapSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v1}, Lcom/prineside/tdi2/ListenerGroup;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lcom/prineside/tdi2/systems/MapSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v2, v0}, Lcom/prineside/tdi2/ListenerGroup;->get(I)Lcom/prineside/tdi2/GameListener;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/systems/MapSystem$MapSystemListener;

    invoke-interface {v2, p1}, Lcom/prineside/tdi2/systems/MapSystem$MapSystemListener;->enemySpawnedOnMap(Lcom/prineside/tdi2/Enemy;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/prineside/tdi2/systems/MapSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ListenerGroup;->end()V

    invoke-virtual {p1}, Lcom/prineside/tdi2/Enemy;->onSpawned()V

    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enemy "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is already spawned"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public spawnUnit(Lcom/prineside/tdi2/Unit;)V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/StateSystem;->checkGameplayUpdateAllowed()V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/systems/MapSystem;->isSpawned(Lcom/prineside/tdi2/Unit;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/prineside/tdi2/systems/MapSystem;->spawnedUnits:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/prineside/tdi2/Unit;->spawned:Z

    iget-object v0, p0, Lcom/prineside/tdi2/systems/MapSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ListenerGroup;->begin()V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/prineside/tdi2/systems/MapSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v1}, Lcom/prineside/tdi2/ListenerGroup;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lcom/prineside/tdi2/systems/MapSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v2, v0}, Lcom/prineside/tdi2/ListenerGroup;->get(I)Lcom/prineside/tdi2/GameListener;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/systems/MapSystem$MapSystemListener;

    invoke-interface {v2, p1}, Lcom/prineside/tdi2/systems/MapSystem$MapSystemListener;->unitSpawnedOnMap(Lcom/prineside/tdi2/Unit;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/prineside/tdi2/systems/MapSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ListenerGroup;->end()V

    invoke-virtual {p1}, Lcom/prineside/tdi2/Unit;->onSpawned()V

    goto :goto_1

    :cond_2
    const-string p1, "MapSystem"

    const-string v0, "Unit is already spawned"

    invoke-static {p1, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public final t()V
    .locals 7

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/prineside/tdi2/systems/MapSystem;->y:Lcom/prineside/tdi2/Map;

    iget-object v0, v0, Lcom/prineside/tdi2/Map;->coreTiles:Lcom/badlogic/gdx/utils/Array;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/prineside/tdi2/systems/MapSystem;->y:Lcom/prineside/tdi2/Map;

    iget-object v2, v2, Lcom/prineside/tdi2/Map;->coreTiles:Lcom/badlogic/gdx/utils/Array;

    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v3, :cond_2

    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/prineside/tdi2/tiles/CoreTile;

    aget-object v2, v2, v1

    iget-object v3, v2, Lcom/prineside/tdi2/tiles/CoreTile;->upgradeAvailableParticleEffect:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/prineside/tdi2/tiles/CoreTile;->hasSomethingToUpgrade()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    iget-object v3, v3, Lcom/prineside/tdi2/managers/TowerManager;->abilityAvailableParticleEffectPool:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    iput-object v3, v2, Lcom/prineside/tdi2/tiles/CoreTile;->upgradeAvailableParticleEffect:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    iget-object v4, v2, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v5, v4, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/high16 v6, 0x42000000    # 32.0f

    add-float/2addr v5, v6

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    const v6, 0x4228f5c3    # 42.24f

    sub-float/2addr v4, v6

    invoke-virtual {v3, v5, v4}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->setPosition(FF)V

    iget-object v3, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v3, v3, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    iget-object v2, v2, Lcom/prineside/tdi2/tiles/CoreTile;->upgradeAvailableParticleEffect:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    invoke-virtual {v3, v2, v0}, Lcom/prineside/tdi2/systems/ParticleSystem;->addParticle(Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;Z)Z

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Lcom/prineside/tdi2/tiles/CoreTile;->hasSomethingToUpgrade()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v2, Lcom/prineside/tdi2/tiles/CoreTile;->upgradeAvailableParticleEffect:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->allowCompletion()V

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/prineside/tdi2/tiles/CoreTile;->upgradeAvailableParticleEffect:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final u()V
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/prineside/tdi2/enums/GameValueType;->ENEMIES_WALK_ON_PLATFORMS:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/systems/GameValueSystem;->getBooleanValue(Lcom/prineside/tdi2/enums/GameValueType;)Z

    move-result v0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/prineside/tdi2/systems/MapSystem;->y:Lcom/prineside/tdi2/Map;

    iget-object v2, v2, Lcom/prineside/tdi2/Map;->tilesArray:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v3, :cond_2

    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, [Lcom/prineside/tdi2/Tile;

    aget-object v3, v3, v1

    instance-of v3, v3, Lcom/prineside/tdi2/tiles/PlatformTile;

    if-eqz v3, :cond_1

    check-cast v2, [Lcom/prineside/tdi2/Tile;

    aget-object v2, v2, v1

    check-cast v2, Lcom/prineside/tdi2/tiles/PlatformTile;

    iput-boolean v0, v2, Lcom/prineside/tdi2/tiles/PlatformTile;->walkableEnabled:Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iput-boolean v0, p0, Lcom/prineside/tdi2/systems/MapSystem;->x:Z

    invoke-virtual {p0}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/Map;->rebuildPathfinding()V

    return-void
.end method

.method public unregisterGate(Lcom/prineside/tdi2/Gate;)V
    .locals 1

    invoke-virtual {p1}, Lcom/prineside/tdi2/Registrable;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/prineside/tdi2/Registrable;->setUnregistered()V

    :cond_0
    return-void
.end method

.method public unregisterTile(Lcom/prineside/tdi2/Tile;)V
    .locals 1

    invoke-virtual {p1}, Lcom/prineside/tdi2/Registrable;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/prineside/tdi2/Tile;->setUnregistered()V

    :cond_0
    return-void
.end method

.method public update(F)V
    .locals 9

    iget-object v0, p0, Lcom/prineside/tdi2/systems/MapSystem;->y:Lcom/prineside/tdi2/Map;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/prineside/tdi2/Map;->prepareDefaultPathsIfNeeded()V

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/StateSystem;->getCurrentUpdateActions()Lcom/prineside/tdi2/systems/StateSystem$ActionsArray;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    :goto_0
    iget v3, v0, Lcom/prineside/tdi2/systems/StateSystem$ActionsArray;->size:I

    if-ge v2, v3, :cond_2

    iget-object v3, v0, Lcom/prineside/tdi2/systems/StateSystem$ActionsArray;->actions:[Lcom/prineside/tdi2/Action;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/prineside/tdi2/Action;->getType()Lcom/prineside/tdi2/enums/ActionType;

    move-result-object v4

    sget-object v5, Lcom/prineside/tdi2/enums/ActionType;->CU:Lcom/prineside/tdi2/enums/ActionType;

    if-ne v4, v5, :cond_1

    check-cast v3, Lcom/prineside/tdi2/actions/CoreUpgradeAction;

    iget v4, v3, Lcom/prineside/tdi2/actions/CoreUpgradeAction;->x:I

    iget v5, v3, Lcom/prineside/tdi2/actions/CoreUpgradeAction;->y:I

    iget v6, v3, Lcom/prineside/tdi2/actions/CoreUpgradeAction;->col:I

    iget v3, v3, Lcom/prineside/tdi2/actions/CoreUpgradeAction;->row:I

    invoke-virtual {p0, v4, v5, v6, v3}, Lcom/prineside/tdi2/systems/MapSystem;->upgradeCore(IIII)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v3, v3, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v3}, Lcom/prineside/tdi2/systems/GameStateSystem;->registerPlayerActivity()V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    if-eqz v2, :cond_8

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    if-eqz v0, :cond_8

    invoke-virtual {v2}, Lcom/prineside/tdi2/systems/GameStateSystem;->isGameRealTimePasses()Z

    move-result v0

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/prineside/tdi2/systems/MapSystem;->w:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/prineside/tdi2/systems/MapSystem;->w:F

    const/high16 p1, 0x40000000    # 2.0f

    const/4 v2, 0x1

    cmpl-float v3, v0, p1

    if-lez v3, :cond_3

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/prineside/tdi2/systems/MapSystem;->w:F

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    const/4 v3, 0x0

    :goto_2
    iget-object v4, p0, Lcom/prineside/tdi2/systems/MapSystem;->y:Lcom/prineside/tdi2/Map;

    iget-object v4, v4, Lcom/prineside/tdi2/Map;->coreTiles:Lcom/badlogic/gdx/utils/Array;

    iget v5, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v3, v5, :cond_7

    iget-object v4, v4, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v4, [Lcom/prineside/tdi2/tiles/CoreTile;

    aget-object v4, v4, v3

    iget-object v5, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v5, v5, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    invoke-virtual {v5}, Lcom/prineside/tdi2/systems/GameValueSystem;->getTickRateDeltaTime()F

    move-result v5

    iget v6, v4, Lcom/prineside/tdi2/tiles/CoreTile;->doubleSpeedTimeLeft:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_4

    iget-object v5, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v5, v5, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    invoke-virtual {v5}, Lcom/prineside/tdi2/systems/GameValueSystem;->getTickRateDeltaTime()F

    move-result v5

    mul-float v5, v5, p1

    iget v6, v4, Lcom/prineside/tdi2/tiles/CoreTile;->doubleSpeedTimeLeft:F

    iget-object v8, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v8, v8, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    invoke-virtual {v8}, Lcom/prineside/tdi2/systems/GameValueSystem;->getTickRateDeltaTime()F

    move-result v8

    sub-float/2addr v6, v8

    iput v6, v4, Lcom/prineside/tdi2/tiles/CoreTile;->doubleSpeedTimeLeft:F

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_4

    iput v7, v4, Lcom/prineside/tdi2/tiles/CoreTile;->doubleSpeedTimeLeft:F

    :cond_4
    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->tileManager:Lcom/prineside/tdi2/managers/TileManager;

    iget-object v6, v6, Lcom/prineside/tdi2/managers/TileManager;->F:Lcom/prineside/tdi2/managers/TileManager$Factories;

    iget-object v6, v6, Lcom/prineside/tdi2/managers/TileManager$Factories;->CORE:Lcom/prineside/tdi2/tiles/CoreTile$CoreTileFactory;

    iget-object v7, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v7, v7, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    invoke-virtual {v6, v4, v7}, Lcom/prineside/tdi2/tiles/CoreTile$CoreTileFactory;->getExperienceGeneration(Lcom/prineside/tdi2/tiles/CoreTile;Lcom/prineside/tdi2/GameValueProvider;)F

    move-result v6

    mul-float v6, v6, v5

    invoke-virtual {v4}, Lcom/prineside/tdi2/tiles/CoreTile;->getLevel()I

    move-result v5

    invoke-virtual {v4}, Lcom/prineside/tdi2/tiles/CoreTile;->getExperience()F

    move-result v7

    add-float/2addr v7, v6

    invoke-virtual {v4, v7}, Lcom/prineside/tdi2/tiles/CoreTile;->setExperience(F)V

    invoke-virtual {v4}, Lcom/prineside/tdi2/tiles/CoreTile;->getLevel()I

    move-result v6

    if-le v6, v5, :cond_6

    iget-object v0, p0, Lcom/prineside/tdi2/systems/MapSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ListenerGroup;->begin()V

    const/4 v0, 0x0

    :goto_3
    iget-object v5, p0, Lcom/prineside/tdi2/systems/MapSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v5}, Lcom/prineside/tdi2/ListenerGroup;->size()I

    move-result v5

    if-ge v0, v5, :cond_5

    iget-object v5, p0, Lcom/prineside/tdi2/systems/MapSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v5, v0}, Lcom/prineside/tdi2/ListenerGroup;->get(I)Lcom/prineside/tdi2/GameListener;

    move-result-object v5

    check-cast v5, Lcom/prineside/tdi2/systems/MapSystem$MapSystemListener;

    invoke-interface {v5, v4}, Lcom/prineside/tdi2/systems/MapSystem$MapSystemListener;->coreTileLeveledUp(Lcom/prineside/tdi2/tiles/CoreTile;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/prineside/tdi2/systems/MapSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ListenerGroup;->end()V

    const/4 v0, 0x1

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    :cond_7
    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/prineside/tdi2/systems/MapSystem;->t()V

    :cond_8
    invoke-virtual {p0}, Lcom/prineside/tdi2/systems/MapSystem;->i()V

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->debugManager:Lcom/prineside/tdi2/managers/DebugManager;

    invoke-virtual {p1}, Lcom/prineside/tdi2/managers/DebugManager;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_9

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->debugManager:Lcom/prineside/tdi2/managers/DebugManager;

    const-string v0, "Spawned enemies"

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/managers/DebugManager;->registerValue(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/prineside/tdi2/systems/MapSystem;->spawnedEnemies:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->debugManager:Lcom/prineside/tdi2/managers/DebugManager;

    const-string v0, "Spawned units"

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/managers/DebugManager;->registerValue(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/prineside/tdi2/systems/MapSystem;->spawnedUnits:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    :cond_9
    return-void
.end method

.method public upgradeCore(IIII)Z
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/systems/MapSystem;->y:Lcom/prineside/tdi2/Map;

    invoke-virtual {v0, p1, p2}, Lcom/prineside/tdi2/Map;->getTile(II)Lcom/prineside/tdi2/Tile;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/prineside/tdi2/Tile;->type:Lcom/prineside/tdi2/enums/TileType;

    sget-object v2, Lcom/prineside/tdi2/enums/TileType;->CORE:Lcom/prineside/tdi2/enums/TileType;

    if-ne v1, v2, :cond_0

    check-cast v0, Lcom/prineside/tdi2/tiles/CoreTile;

    invoke-virtual {p0, v0, p3, p4}, Lcom/prineside/tdi2/systems/MapSystem;->upgradeCore(Lcom/prineside/tdi2/tiles/CoreTile;II)Z

    move-result p1

    return p1

    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "there\'s no core tile on "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MapSystem"

    invoke-static {p2, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public upgradeCore(Lcom/prineside/tdi2/tiles/CoreTile;II)Z
    .locals 9

    invoke-virtual {p1, p2, p3}, Lcom/prineside/tdi2/tiles/CoreTile;->getUpgrade(II)Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;

    move-result-object v0

    invoke-virtual {p1, p2, p3}, Lcom/prineside/tdi2/tiles/CoreTile;->getUpgradeInstallLevel(II)I

    move-result v1

    iget-object v2, v0, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->upgradeLevels:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    const-string v3, "MapSystem"

    const/4 v4, 0x0

    if-lt v1, v2, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Upgrade "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ":"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " is already on max level"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_0
    invoke-virtual {p1, p2, p3}, Lcom/prineside/tdi2/tiles/CoreTile;->canUpgradeBeInstalled(II)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v1}, Lcom/prineside/tdi2/systems/GameStateSystem;->getMoney()I

    move-result v1

    invoke-virtual {p1}, Lcom/prineside/tdi2/tiles/CoreTile;->getFreeUpgradePoints()I

    move-result v2

    invoke-virtual {p1, p2, p3}, Lcom/prineside/tdi2/tiles/CoreTile;->getUpgradeInstallLevel(II)I

    move-result v5

    iget-object v6, v0, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->upgradeLevels:Lcom/badlogic/gdx/utils/Array;

    iget-object v6, v6, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v6, [Lcom/prineside/tdi2/tiles/CoreTile$Upgrade$UpgradeLevel;

    aget-object v6, v6, v5

    iget-boolean v7, v0, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->costsCoins:Z

    const/4 v8, 0x1

    if-eqz v7, :cond_1

    iget v2, v6, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade$UpgradeLevel;->price:I

    if-lt v1, v2, :cond_2

    goto :goto_0

    :cond_1
    iget v1, v6, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade$UpgradeLevel;->price:I

    if-lt v2, v1, :cond_2

    :goto_0
    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_a

    if-eqz v7, :cond_3

    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget v2, v6, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade$UpgradeLevel;->price:I

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/systems/GameStateSystem;->removeMoney(I)Z

    :cond_3
    add-int/2addr v5, v8

    invoke-virtual {p1, p2, p3, v5}, Lcom/prineside/tdi2/tiles/CoreTile;->setUpgradeInstallLevel(III)V

    iget-boolean v1, v0, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->isAction:Z

    if-eqz v1, :cond_4

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->triggeredActionManager:Lcom/prineside/tdi2/managers/TriggeredActionManager;

    iget-object v2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    invoke-virtual {v0}, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->getActionType()Lcom/prineside/tdi2/enums/TriggeredActionType;

    move-result-object v0

    iget v3, v6, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade$UpgradeLevel;->delta:F

    invoke-virtual {v1, v2, v0, v3}, Lcom/prineside/tdi2/managers/TriggeredActionManager;->perform(Lcom/prineside/tdi2/GameSystemProvider;Lcom/prineside/tdi2/enums/TriggeredActionType;F)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/GameValueSystem;->recalculate()V

    :goto_2
    invoke-virtual {p0}, Lcom/prineside/tdi2/systems/MapSystem;->t()V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/MapSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ListenerGroup;->begin()V

    const/4 v0, 0x0

    :goto_3
    iget-object v1, p0, Lcom/prineside/tdi2/systems/MapSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v1}, Lcom/prineside/tdi2/ListenerGroup;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    iget-object v1, p0, Lcom/prineside/tdi2/systems/MapSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/ListenerGroup;->get(I)Lcom/prineside/tdi2/GameListener;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/systems/MapSystem$MapSystemListener;

    invoke-interface {v1, p2, p3}, Lcom/prineside/tdi2/systems/MapSystem$MapSystemListener;->coreTileUpgradeInstalled(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    iget-object p2, p0, Lcom/prineside/tdi2/systems/MapSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p2}, Lcom/prineside/tdi2/ListenerGroup;->end()V

    iget-object p2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p2, p2, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    if-eqz p2, :cond_9

    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {p2}, Lcom/prineside/tdi2/managers/SettingsManager;->isParticlesDrawing()Z

    move-result p2

    if-eqz p2, :cond_9

    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->mapManager:Lcom/prineside/tdi2/managers/MapManager;

    iget-object p2, p2, Lcom/prineside/tdi2/managers/MapManager;->coreHighlightParticlesPool:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    const/4 p3, 0x0

    sget-object v0, Lcom/prineside/tdi2/systems/MapSystem$1;->a:[I

    invoke-virtual {p1}, Lcom/prineside/tdi2/tiles/CoreTile;->getTier()Lcom/prineside/tdi2/tiles/CoreTile$Tier;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq v0, v8, :cond_8

    if-eq v0, v2, :cond_7

    if-eq v0, v1, :cond_6

    goto :goto_4

    :cond_6
    sget-object p3, Lcom/prineside/tdi2/utils/MaterialColor$ORANGE;->P500:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_4

    :cond_7
    sget-object p3, Lcom/prineside/tdi2/utils/MaterialColor$PURPLE;->P400:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_4

    :cond_8
    sget-object p3, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P500:Lcom/badlogic/gdx/graphics/Color;

    :goto_4
    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->getEmitters()Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getTint()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;

    move-result-object v0

    new-array v1, v1, [F

    iget v3, p3, Lcom/badlogic/gdx/graphics/Color;->r:F

    aput v3, v1, v4

    iget v3, p3, Lcom/badlogic/gdx/graphics/Color;->g:F

    aput v3, v1, v8

    iget p3, p3, Lcom/badlogic/gdx/graphics/Color;->b:F

    aput p3, v1, v2

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->setColors([F)V

    iget-object p1, p1, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget p3, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget p1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p2, p3, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->setPosition(FF)V

    iget-object p1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    invoke-virtual {p1, p2, v8}, Lcom/prineside/tdi2/systems/ParticleSystem;->addParticle(Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;Z)Z

    :cond_9
    return v8

    :cond_a
    const-string p1, "not enough points to make an upgrade"

    invoke-static {v3, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_b
    const-string p1, "upgrade can\'t be installed"

    invoke-static {v3, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    return v4
.end method

.method public upgradeCoreAction(IIII)V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/systems/MapSystem;->y:Lcom/prineside/tdi2/Map;

    invoke-virtual {v0, p1, p2}, Lcom/prineside/tdi2/Map;->getTile(II)Lcom/prineside/tdi2/Tile;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/prineside/tdi2/Tile;->type:Lcom/prineside/tdi2/enums/TileType;

    sget-object v2, Lcom/prineside/tdi2/enums/TileType;->CORE:Lcom/prineside/tdi2/enums/TileType;

    if-ne v1, v2, :cond_0

    check-cast v0, Lcom/prineside/tdi2/tiles/CoreTile;

    invoke-virtual {p0, v0, p3, p4}, Lcom/prineside/tdi2/systems/MapSystem;->upgradeCoreAction(Lcom/prineside/tdi2/tiles/CoreTile;II)V

    goto :goto_0

    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "there\'s no core tile on "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MapSystem"

    invoke-static {p2, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public upgradeCoreAction(Lcom/prineside/tdi2/tiles/CoreTile;II)V
    .locals 3

    invoke-virtual {p1, p2, p3}, Lcom/prineside/tdi2/tiles/CoreTile;->getUpgrade(II)Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;

    move-result-object v0

    invoke-virtual {p1, p2, p3}, Lcom/prineside/tdi2/tiles/CoreTile;->getUpgradeInstallLevel(II)I

    move-result v1

    iget-object v0, v0, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->upgradeLevels:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const-string v2, "MapSystem"

    if-lt v1, v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Upgrade "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ":"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " is already on max level"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1, p2, p3}, Lcom/prineside/tdi2/tiles/CoreTile;->canUpgradeBeInstalled(II)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    new-instance v1, Lcom/prineside/tdi2/actions/CoreUpgradeAction;

    invoke-virtual {p1}, Lcom/prineside/tdi2/Tile;->getX()I

    move-result v2

    invoke-virtual {p1}, Lcom/prineside/tdi2/Tile;->getY()I

    move-result p1

    invoke-direct {v1, v2, p1, p2, p3}, Lcom/prineside/tdi2/actions/CoreUpgradeAction;-><init>(IIII)V

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/systems/StateSystem;->pushAction(Lcom/prineside/tdi2/Action;)V

    goto :goto_0

    :cond_1
    const-string p1, "upgrade can\'t be installed"

    invoke-static {v2, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Registrable;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V

    iget-boolean v0, p0, Lcom/prineside/tdi2/systems/MapSystem;->x:Z

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/MapSystem;->spawnedEnemies:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/MapSystem;->spawnedUnits:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/MapSystem;->y:Lcom/prineside/tdi2/Map;

    const-class v1, Lcom/prineside/tdi2/Map;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    iget-boolean v0, p0, Lcom/prineside/tdi2/systems/MapSystem;->z:Z

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

    iget-boolean v0, p0, Lcom/prineside/tdi2/systems/MapSystem;->A:Z

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/MapSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/MapSystem;->B:[Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeClassAndObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/MapSystem;->C:Lcom/prineside/tdi2/utils/BitVector;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-byte p1, p0, Lcom/prineside/tdi2/systems/MapSystem;->D:B

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeByte(B)V

    iget-byte p1, p0, Lcom/prineside/tdi2/systems/MapSystem;->E:B

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeByte(B)V

    return-void
.end method
