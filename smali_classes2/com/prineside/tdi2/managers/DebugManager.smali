.class public Lcom/prineside/tdi2/managers/DebugManager;
.super Lcom/prineside/tdi2/Manager$ManagerAdapter;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
    serializer = Lcom/prineside/tdi2/managers/DebugManager$Serializer;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/managers/DebugManager$GarbageCollectorListener;,
        Lcom/prineside/tdi2/managers/DebugManager$Serializer;
    }
.end annotation


# static fields
.field public static final RANDOM_COLORS:[Lcom/badlogic/gdx/graphics/Color;


# instance fields
.field public final A:[I

.field public B:I

.field public C:I

.field public D:J

.field public final E:[J

.field public G:I

.field public H:F

.field public I:J

.field public J:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Lcom/prineside/tdi2/managers/DebugManager$GarbageCollectorListener;",
            ">;"
        }
    .end annotation
.end field

.field public K:F

.field public L:Z

.field public final M:[F

.field public final N:[F

.field public final O:[F

.field public final P:[F

.field public Q:Ljava/lang/String;

.field public R:Lcom/badlogic/gdx/graphics/OrthographicCamera;

.field public final S:[I

.field public a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

.field public b:Z

.field public d:Z

.field public final glProfiler:Lcom/badlogic/gdx/graphics/profiling/GLProfiler;

.field public k:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public p:J

.field public q:J

.field public r:Lcom/badlogic/gdx/utils/StringBuilder;

.field public final s:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public t:Lcom/prineside/tdi2/managers/SettingsManager$SettingsManagerListener;

.field public final u:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/utils/StringBuilder;",
            ">;"
        }
    .end annotation
.end field

.field public final v:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Ljava/lang/String;",
            "[J>;"
        }
    .end annotation
.end field

.field public final w:Lcom/badlogic/gdx/utils/LongArray;

.field public x:I

.field public y:F

.field public final z:[J


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x13

    new-array v0, v0, [Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$RED;->P500:Lcom/badlogic/gdx/graphics/Color;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$YELLOW;->P500:Lcom/badlogic/gdx/graphics/Color;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$BLUE;->P500:Lcom/badlogic/gdx/graphics/Color;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_GREEN;->P500:Lcom/badlogic/gdx/graphics/Color;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$BLUE_GREY;->P500:Lcom/badlogic/gdx/graphics/Color;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$ORANGE;->P500:Lcom/badlogic/gdx/graphics/Color;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$BROWN;->P500:Lcom/badlogic/gdx/graphics/Color;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$DEEP_ORANGE;->P500:Lcom/badlogic/gdx/graphics/Color;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$CYAN;->P500:Lcom/badlogic/gdx/graphics/Color;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$DEEP_PURPLE;->P500:Lcom/badlogic/gdx/graphics/Color;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$GREEN;->P500:Lcom/badlogic/gdx/graphics/Color;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$INDIGO;->P500:Lcom/badlogic/gdx/graphics/Color;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$GREY;->P500:Lcom/badlogic/gdx/graphics/Color;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$PURPLE;->P500:Lcom/badlogic/gdx/graphics/Color;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P500:Lcom/badlogic/gdx/graphics/Color;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$LIME;->P500:Lcom/badlogic/gdx/graphics/Color;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$PINK;->P500:Lcom/badlogic/gdx/graphics/Color;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$TEAL;->P500:Lcom/badlogic/gdx/graphics/Color;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$AMBER;->P500:Lcom/badlogic/gdx/graphics/Color;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sput-object v0, Lcom/prineside/tdi2/managers/DebugManager;->RANDOM_COLORS:[Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Lcom/prineside/tdi2/Manager$ManagerAdapter;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prineside/tdi2/managers/DebugManager;->b:Z

    iput-boolean v0, p0, Lcom/prineside/tdi2/managers/DebugManager;->d:Z

    new-instance v1, Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/prineside/tdi2/managers/DebugManager;->r:Lcom/badlogic/gdx/utils/StringBuilder;

    new-instance v1, Lcom/badlogic/gdx/utils/Array;

    const-class v2, Ljava/lang/String;

    const/4 v3, 0x1

    invoke-direct {v1, v0, v3, v2}, Lcom/badlogic/gdx/utils/Array;-><init>(ZILjava/lang/Class;)V

    iput-object v1, p0, Lcom/prineside/tdi2/managers/DebugManager;->s:Lcom/badlogic/gdx/utils/Array;

    new-instance v1, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v1, p0, Lcom/prineside/tdi2/managers/DebugManager;->u:Lcom/badlogic/gdx/utils/ObjectMap;

    new-instance v1, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v1, p0, Lcom/prineside/tdi2/managers/DebugManager;->v:Lcom/badlogic/gdx/utils/ObjectMap;

    new-instance v1, Lcom/badlogic/gdx/utils/LongArray;

    const/16 v2, 0x1e

    invoke-direct {v1, v0, v2}, Lcom/badlogic/gdx/utils/LongArray;-><init>(ZI)V

    iput-object v1, p0, Lcom/prineside/tdi2/managers/DebugManager;->w:Lcom/badlogic/gdx/utils/LongArray;

    const/16 v1, 0xf0

    new-array v1, v1, [J

    iput-object v1, p0, Lcom/prineside/tdi2/managers/DebugManager;->z:[J

    const/16 v1, 0x2d0

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/prineside/tdi2/managers/DebugManager;->A:[I

    iput v0, p0, Lcom/prineside/tdi2/managers/DebugManager;->B:I

    iput v3, p0, Lcom/prineside/tdi2/managers/DebugManager;->C:I

    const/16 v1, 0x3c

    new-array v1, v1, [J

    iput-object v1, p0, Lcom/prineside/tdi2/managers/DebugManager;->E:[J

    iput v0, p0, Lcom/prineside/tdi2/managers/DebugManager;->G:I

    const/high16 v1, 0x41800000    # 16.0f

    iput v1, p0, Lcom/prineside/tdi2/managers/DebugManager;->H:F

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/prineside/tdi2/managers/DebugManager;->J:Ljava/lang/ref/SoftReference;

    const/4 v1, 0x0

    iput v1, p0, Lcom/prineside/tdi2/managers/DebugManager;->K:F

    sget v1, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->SPECTRUM_SIZE:I

    new-array v2, v1, [F

    iput-object v2, p0, Lcom/prineside/tdi2/managers/DebugManager;->M:[F

    new-array v2, v1, [F

    iput-object v2, p0, Lcom/prineside/tdi2/managers/DebugManager;->N:[F

    new-array v2, v1, [F

    iput-object v2, p0, Lcom/prineside/tdi2/managers/DebugManager;->O:[F

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/prineside/tdi2/managers/DebugManager;->P:[F

    sget-object v1, Lcom/prineside/tdi2/enums/StaticSoundType;->values:[Lcom/prineside/tdi2/enums/StaticSoundType;

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/prineside/tdi2/managers/DebugManager;->S:[I

    new-instance v1, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;

    sget-object v2, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;-><init>(Lcom/badlogic/gdx/Graphics;)V

    iput-object v1, p0, Lcom/prineside/tdi2/managers/DebugManager;->glProfiler:Lcom/badlogic/gdx/graphics/profiling/GLProfiler;

    new-instance v1, Lcom/badlogic/gdx/graphics/OrthographicCamera;

    invoke-direct {v1}, Lcom/badlogic/gdx/graphics/OrthographicCamera;-><init>()V

    iput-object v1, p0, Lcom/prineside/tdi2/managers/DebugManager;->R:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    sget-object v2, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v2}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3fc00000    # 1.5f

    mul-float v2, v2, v3

    sget-object v4, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v4}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v3

    invoke-virtual {v1, v0, v2, v4}, Lcom/badlogic/gdx/graphics/OrthographicCamera;->setToOrtho(ZFF)V

    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/managers/DebugManager;)V
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/DebugManager;->f()V

    return-void
.end method

.method public static synthetic b(Lcom/prineside/tdi2/managers/DebugManager;)V
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/DebugManager;->e()V

    return-void
.end method

.method public static synthetic c(Lcom/prineside/tdi2/managers/DebugManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/prineside/tdi2/managers/DebugManager;->L:Z

    return p1
.end method

.method public static synthetic d(Lcom/prineside/tdi2/managers/DebugManager;F)F
    .locals 0

    iput p1, p0, Lcom/prineside/tdi2/managers/DebugManager;->K:F

    return p1
.end method


# virtual methods
.method public clearPools()V
    .locals 6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prineside/tdi2/managers/DebugManager;->L:Z

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->shapeManager:Lcom/prineside/tdi2/managers/ShapeManager;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/prineside/tdi2/enums/ShapeType;->values:[Lcom/prineside/tdi2/enums/ShapeType;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->shapeManager:Lcom/prineside/tdi2/managers/ShapeManager;

    invoke-virtual {v5, v4}, Lcom/prineside/tdi2/managers/ShapeManager;->getFactory(Lcom/prineside/tdi2/enums/ShapeType;)Lcom/prineside/tdi2/Shape$Factory;

    move-result-object v4

    invoke-virtual {v4}, Lcom/prineside/tdi2/Shape$Factory;->clearPool()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/prineside/tdi2/enums/AbilityType;->values:[Lcom/prineside/tdi2/enums/AbilityType;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->abilityManager:Lcom/prineside/tdi2/managers/AbilityManager;

    invoke-virtual {v5, v4}, Lcom/prineside/tdi2/managers/AbilityManager;->getFactory(Lcom/prineside/tdi2/enums/AbilityType;)Lcom/prineside/tdi2/Ability$Factory;

    move-result-object v4

    invoke-virtual {v4}, Lcom/prineside/tdi2/Ability$Factory;->clearPool()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/prineside/tdi2/enums/EnemyType;->values:[Lcom/prineside/tdi2/enums/EnemyType;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->enemyManager:Lcom/prineside/tdi2/managers/EnemyManager;

    invoke-virtual {v5, v4}, Lcom/prineside/tdi2/managers/EnemyManager;->getFactory(Lcom/prineside/tdi2/enums/EnemyType;)Lcom/prineside/tdi2/Enemy$Factory;

    move-result-object v4

    invoke-virtual {v4}, Lcom/prineside/tdi2/Enemy$Factory;->clearPool()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    sget-object v1, Lcom/prineside/tdi2/enums/BuffType;->values:[Lcom/prineside/tdi2/enums/BuffType;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->buffManager:Lcom/prineside/tdi2/managers/BuffManager;

    invoke-virtual {v5, v4}, Lcom/prineside/tdi2/managers/BuffManager;->getFactory(Lcom/prineside/tdi2/enums/BuffType;)Lcom/prineside/tdi2/Buff$Factory;

    move-result-object v4

    invoke-virtual {v4}, Lcom/prineside/tdi2/Buff$Factory;->clearPool()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_3
    sget-object v1, Lcom/prineside/tdi2/enums/ExplosionType;->values:[Lcom/prineside/tdi2/enums/ExplosionType;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v2, :cond_4

    aget-object v4, v1, v3

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->explosionManager:Lcom/prineside/tdi2/managers/ExplosionManager;

    invoke-virtual {v5, v4}, Lcom/prineside/tdi2/managers/ExplosionManager;->getFactory(Lcom/prineside/tdi2/enums/ExplosionType;)Lcom/prineside/tdi2/Explosion$Factory;

    move-result-object v4

    invoke-virtual {v4}, Lcom/prineside/tdi2/Explosion$Factory;->clearPool()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_4
    sget-object v1, Lcom/prineside/tdi2/enums/ProjectileType;->values:[Lcom/prineside/tdi2/enums/ProjectileType;

    array-length v2, v1

    :goto_5
    if-ge v0, v2, :cond_5

    aget-object v3, v1, v0

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->projectileManager:Lcom/prineside/tdi2/managers/ProjectileManager;

    invoke-virtual {v4, v3}, Lcom/prineside/tdi2/managers/ProjectileManager;->getFactory(Lcom/prineside/tdi2/enums/ProjectileType;)Lcom/prineside/tdi2/Projectile$Factory;

    move-result-object v3

    invoke-virtual {v3}, Lcom/prineside/tdi2/Projectile$Factory;->clearPool()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_5
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->enemyManager:Lcom/prineside/tdi2/managers/EnemyManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/EnemyManager;->enemyBuffArraysPool:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Pool;->clear()V

    const-string v0, "DebugManager"

    const-string v1, "pools cleared"

    invoke-static {v0, v1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public dispose()V
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/prineside/tdi2/managers/DebugManager;->t:Lcom/prineside/tdi2/managers/SettingsManager$SettingsManagerListener;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/SettingsManager;->removeListener(Lcom/prineside/tdi2/managers/SettingsManager$SettingsManagerListener;)V

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/SettingsManager;->isInDebugMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/prineside/tdi2/managers/DebugManager;->b:Z

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/SettingsManager;->isInDebugDetailedMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/prineside/tdi2/managers/DebugManager;->d:Z

    iget-boolean v0, p0, Lcom/prineside/tdi2/managers/DebugManager;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/managers/DebugManager;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/DebugManager;->glProfiler:Lcom/badlogic/gdx/graphics/profiling/GLProfiler;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->enable()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/managers/DebugManager;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/DebugManager;->glProfiler:Lcom/badlogic/gdx/graphics/profiling/GLProfiler;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->disable()V

    :goto_0
    return-void
.end method

.method public final f()V
    .locals 5

    const-string v0, "."

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/prineside/tdi2/Config;->PACKAGE:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xb8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->actionResolver:Lcom/prineside/tdi2/ActionResolver;

    invoke-interface {v2}, Lcom/prineside/tdi2/ActionResolver;->isAppModified()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "M"

    goto :goto_0

    :cond_0
    const-string v2, "V"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/prineside/tdi2/Config;->isModdingMode()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/prineside/tdi2/Config;->getModId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    const-string v2, ""

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/prineside/tdi2/managers/DebugManager;->Q:Ljava/lang/String;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/prineside/tdi2/managers/DebugManager;->Q:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/AuthManager;->getPlayerId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/managers/DebugManager;->Q:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const-string v0, "ERR"

    iput-object v0, p0, Lcom/prineside/tdi2/managers/DebugManager;->Q:Ljava/lang/String;

    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/prineside/tdi2/managers/DebugManager;->R:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    const/4 v1, 0x0

    sget-object v2, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v2}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3fc00000    # 1.5f

    mul-float v2, v2, v3

    sget-object v4, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v4}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v3

    invoke-virtual {v0, v1, v2, v4}, Lcom/badlogic/gdx/graphics/OrthographicCamera;->setToOrtho(ZFF)V

    return-void
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/managers/DebugManager;->b:Z

    return v0
.end method

.method public postRender(F)V
    .locals 50

    move-object/from16 v1, p0

    invoke-static {}, Lcom/prineside/tdi2/Config;->isHeadless()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, v1, Lcom/prineside/tdi2/managers/DebugManager;->J:Ljava/lang/ref/SoftReference;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    iget v0, v1, Lcom/prineside/tdi2/managers/DebugManager;->K:F

    add-float v0, v0, p1

    iput v0, v1, Lcom/prineside/tdi2/managers/DebugManager;->K:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_2

    new-instance v0, Ljava/lang/ref/SoftReference;

    new-instance v4, Lcom/prineside/tdi2/managers/DebugManager$GarbageCollectorListener;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v5}, Lcom/prineside/tdi2/managers/DebugManager$GarbageCollectorListener;-><init>(Lcom/prineside/tdi2/managers/DebugManager;Lcom/prineside/tdi2/managers/DebugManager$1;)V

    invoke-direct {v0, v4}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, v1, Lcom/prineside/tdi2/managers/DebugManager;->J:Ljava/lang/ref/SoftReference;

    iput v2, v1, Lcom/prineside/tdi2/managers/DebugManager;->K:F

    :cond_2
    iget-boolean v0, v1, Lcom/prineside/tdi2/managers/DebugManager;->L:Z

    if-eqz v0, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/managers/DebugManager;->clearPools()V

    :cond_3
    iget-object v0, v1, Lcom/prineside/tdi2/managers/DebugManager;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    if-nez v0, :cond_4

    return-void

    :cond_4
    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    move-result-wide v4

    iget-wide v6, v1, Lcom/prineside/tdi2/managers/DebugManager;->I:J

    sub-long/2addr v4, v6

    invoke-virtual {v1, v4, v5}, Lcom/prineside/tdi2/managers/DebugManager;->registerFrameDrawTimeAndMemory(J)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->renderingManager:Lcom/prineside/tdi2/managers/RenderingManager;

    iget-object v12, v0, Lcom/prineside/tdi2/managers/RenderingManager;->batch:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/RenderingManager;->shapeRenderer:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    iget-object v4, v1, Lcom/prineside/tdi2/managers/DebugManager;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v4}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getCamera()Lcom/badlogic/gdx/graphics/Camera;

    move-result-object v13

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v5, 0x18

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v4

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    invoke-virtual {v5}, Lcom/prineside/tdi2/managers/UiManager;->getScreenSafeMargin()I

    move-result v10

    iget-object v5, v1, Lcom/prineside/tdi2/managers/DebugManager;->Q:Ljava/lang/String;

    if-nez v5, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/managers/DebugManager;->f()V

    :cond_5
    iget-object v5, v1, Lcom/prineside/tdi2/managers/DebugManager;->R:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iget-object v5, v5, Lcom/badlogic/gdx/graphics/Camera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v12, v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    invoke-virtual {v12}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    sget-object v5, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v11, 0xbe2

    invoke-interface {v5, v11}, Lcom/badlogic/gdx/graphics/GL20;->glEnable(I)V

    sget-object v5, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v14, 0x302

    const/16 v15, 0x303

    invoke-interface {v5, v14, v15}, Lcom/badlogic/gdx/graphics/GL20;->glBlendFunc(II)V

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Lcom/prineside/tdi2/managers/AssetManager;->getDebugFont(Z)Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-result-object v5

    const v6, 0x3ca3d70a    # 0.02f

    invoke-virtual {v5, v2, v3, v2, v6}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(FFFF)V

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v5, v9}, Lcom/prineside/tdi2/managers/AssetManager;->getDebugFont(Z)Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-result-object v5

    iget-object v6, v1, Lcom/prineside/tdi2/managers/DebugManager;->Q:Ljava/lang/String;

    const/high16 v7, 0x41880000    # 17.0f

    invoke-virtual {v5, v12, v6, v3, v7}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FF)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    invoke-virtual {v12}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v5, v9}, Lcom/prineside/tdi2/managers/AssetManager;->getDebugFont(Z)Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-result-object v5

    sget-object v6, Lcom/prineside/tdi2/Config;->WHITE_COLOR_CACHED_FLOAT_BITS:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v5, v13, Lcom/badlogic/gdx/graphics/Camera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v12, v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    iget-object v5, v13, Lcom/badlogic/gdx/graphics/Camera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object v6, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->DBG_SHOW_FPS:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/managers/SettingsManager;->getCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;)D

    move-result-wide v5

    const-wide/16 v7, 0x0

    const v14, 0x3f0f5c29    # 0.56f

    const/16 v16, 0x1

    cmpl-double v17, v5, v7

    if-eqz v17, :cond_9

    iget v5, v1, Lcom/prineside/tdi2/managers/DebugManager;->y:F

    add-float v5, v5, p1

    iput v5, v1, Lcom/prineside/tdi2/managers/DebugManager;->y:F

    const v6, 0x3e4ccccd    # 0.2f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_8

    iput v9, v1, Lcom/prineside/tdi2/managers/DebugManager;->x:I

    invoke-static {}, Lcom/prineside/tdi2/Game;->getTimestampMillis()J

    move-result-wide v5

    iget-object v7, v1, Lcom/prineside/tdi2/managers/DebugManager;->w:Lcom/badlogic/gdx/utils/LongArray;

    iget v7, v7, Lcom/badlogic/gdx/utils/LongArray;->size:I

    add-int/lit8 v7, v7, -0x1

    :goto_0
    if-ltz v7, :cond_7

    iget-object v8, v1, Lcom/prineside/tdi2/managers/DebugManager;->w:Lcom/badlogic/gdx/utils/LongArray;

    iget-object v15, v8, Lcom/badlogic/gdx/utils/LongArray;->items:[J

    aget-wide v18, v15, v7

    sub-long v18, v5, v18

    const-wide/16 v20, 0x3e8

    cmp-long v15, v18, v20

    if-lez v15, :cond_6

    invoke-virtual {v8, v7}, Lcom/badlogic/gdx/utils/LongArray;->removeIndex(I)J

    goto :goto_1

    :cond_6
    iget v8, v1, Lcom/prineside/tdi2/managers/DebugManager;->x:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v1, Lcom/prineside/tdi2/managers/DebugManager;->x:I

    :goto_1
    add-int/lit8 v7, v7, -0x1

    const/16 v15, 0x303

    goto :goto_0

    :cond_7
    iput v2, v1, Lcom/prineside/tdi2/managers/DebugManager;->y:F

    :cond_8
    invoke-virtual {v12}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    :try_start_0
    iget-object v5, v1, Lcom/prineside/tdi2/managers/DebugManager;->r:Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v5, v9}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    iget-object v5, v1, Lcom/prineside/tdi2/managers/DebugManager;->r:Lcom/badlogic/gdx/utils/StringBuilder;

    sget-object v6, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v6}, Lcom/badlogic/gdx/Graphics;->getFramesPerSecond()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v5

    const-string v6, " FPS / "

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v5

    iget v6, v1, Lcom/prineside/tdi2/managers/DebugManager;->x:I

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v5

    const-string v6, " UPS"

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v4, v2, v2, v2, v14}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(FFFF)V

    iget-object v5, v1, Lcom/prineside/tdi2/managers/DebugManager;->r:Lcom/badlogic/gdx/utils/StringBuilder;

    add-int/lit8 v6, v10, 0x11

    int-to-float v6, v6

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v7}, Lcom/prineside/tdi2/managers/SettingsManager;->getScaledViewportHeight()I

    move-result v7

    add-int/lit8 v7, v7, -0x11

    int-to-float v7, v7

    invoke-virtual {v4, v12, v5, v6, v7}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FF)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    invoke-virtual {v4, v3, v3, v3, v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(FFFF)V

    iget-object v5, v1, Lcom/prineside/tdi2/managers/DebugManager;->r:Lcom/badlogic/gdx/utils/StringBuilder;

    add-int/lit8 v6, v10, 0xf

    int-to-float v6, v6

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v7}, Lcom/prineside/tdi2/managers/SettingsManager;->getScaledViewportHeight()I

    move-result v7

    add-int/lit8 v7, v7, -0xf

    int-to-float v7, v7

    invoke-virtual {v4, v12, v5, v6, v7}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FF)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const-string v4, "DebugManager"

    const-string v5, "failed to draw FPS"

    invoke-static {v4, v5}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    invoke-virtual {v12}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    :cond_9
    sget-object v4, Lcom/prineside/tdi2/Config;->WHITE_COLOR_CACHED_FLOAT_BITS:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v12, v4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object v5, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->DBG_VIEWPORT_CULLING:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/managers/SettingsManager;->getCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;)D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v8, v4, v6

    if-eqz v8, :cond_a

    sget-object v4, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v4, v11}, Lcom/badlogic/gdx/graphics/GL20;->glEnable(I)V

    sget-object v4, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v5, 0x303

    const/16 v6, 0x302

    invoke-interface {v4, v6, v5}, Lcom/badlogic/gdx/graphics/GL20;->glBlendFunc(II)V

    sget-object v4, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Filled:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->begin(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;)V

    const v4, 0x3e8f5c29    # 0.28f

    invoke-virtual {v0, v2, v3, v2, v4}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->setColor(FFFF)V

    iget v4, v13, Lcom/badlogic/gdx/graphics/Camera;->viewportWidth:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v4, v5

    const/4 v6, 0x0

    const/high16 v7, 0x40000000    # 2.0f

    div-float v7, v4, v7

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v4}, Lcom/prineside/tdi2/managers/SettingsManager;->getScaledViewportHeight()I

    move-result v4

    int-to-float v8, v4

    const/high16 v15, 0x40000000    # 2.0f

    move-object v4, v0

    const/4 v14, 0x0

    move v9, v15

    invoke-virtual/range {v4 .. v9}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->rectLine(FFFFF)V

    sget-object v4, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->end()V

    goto :goto_3

    :cond_a
    const/4 v14, 0x0

    :goto_3
    iget-boolean v4, v1, Lcom/prineside/tdi2/managers/DebugManager;->b:Z

    if-nez v4, :cond_b

    return-void

    :cond_b
    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    move-result-wide v4

    iget-wide v6, v1, Lcom/prineside/tdi2/managers/DebugManager;->q:J

    sub-long v6, v4, v6

    const-wide/32 v8, 0x186a0

    cmp-long v15, v6, v8

    if-lez v15, :cond_d

    iget-boolean v6, v1, Lcom/prineside/tdi2/managers/DebugManager;->b:Z

    if-eqz v6, :cond_c

    const-string v6, "GL calls"

    invoke-virtual {v1, v6}, Lcom/prineside/tdi2/managers/DebugManager;->registerValue(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Lcom/prineside/tdi2/managers/DebugManager;->glProfiler:Lcom/badlogic/gdx/graphics/profiling/GLProfiler;

    invoke-virtual {v7}, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->getCalls()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    const-string v6, "Draw calls"

    invoke-virtual {v1, v6}, Lcom/prineside/tdi2/managers/DebugManager;->registerValue(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Lcom/prineside/tdi2/managers/DebugManager;->glProfiler:Lcom/badlogic/gdx/graphics/profiling/GLProfiler;

    invoke-virtual {v7}, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->getDrawCalls()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    const-string v6, "Texture bindings"

    invoke-virtual {v1, v6}, Lcom/prineside/tdi2/managers/DebugManager;->registerValue(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Lcom/prineside/tdi2/managers/DebugManager;->glProfiler:Lcom/badlogic/gdx/graphics/profiling/GLProfiler;

    invoke-virtual {v7}, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->getTextureBindings()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    const-string v6, "Max sprites / batch"

    invoke-virtual {v1, v6}, Lcom/prineside/tdi2/managers/DebugManager;->registerValue(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->renderingManager:Lcom/prineside/tdi2/managers/RenderingManager;

    iget-object v7, v7, Lcom/prineside/tdi2/managers/RenderingManager;->batch:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    iget v7, v7, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->maxSpritesInBatch:I

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    const-string v6, "Resolution"

    invoke-virtual {v1, v6}, Lcom/prineside/tdi2/managers/DebugManager;->registerValue(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v7}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v6

    const/16 v7, 0x78

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v7}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    const-string v6, "Sounds"

    invoke-virtual {v1, v6}, Lcom/prineside/tdi2/managers/DebugManager;->registerValue(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->soundManager:Lcom/prineside/tdi2/managers/SoundManager;

    iget-object v7, v7, Lcom/prineside/tdi2/managers/SoundManager;->playingSoundStats:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v7, v7, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v6

    const-string v7, " / 48"

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    :cond_c
    iput-wide v4, v1, Lcom/prineside/tdi2/managers/DebugManager;->q:J

    :cond_d
    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    move-result-wide v4

    iget-wide v6, v1, Lcom/prineside/tdi2/managers/DebugManager;->p:J

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x493e0

    cmp-long v8, v4, v6

    if-lez v8, :cond_10

    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/prineside/tdi2/managers/DebugManager;->p:J

    iget-object v4, v1, Lcom/prineside/tdi2/managers/DebugManager;->r:Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v4, v14}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    iget-object v4, v1, Lcom/prineside/tdi2/managers/DebugManager;->s:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/Array;->clear()V

    iget-object v4, v1, Lcom/prineside/tdi2/managers/DebugManager;->u:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/ObjectMap;->iterator()Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/utils/ObjectMap$Entry;

    iget-object v6, v1, Lcom/prineside/tdi2/managers/DebugManager;->s:Lcom/badlogic/gdx/utils/Array;

    iget-object v5, v5, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->key:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_4

    :cond_e
    iget-object v4, v1, Lcom/prineside/tdi2/managers/DebugManager;->s:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/Array;->sort()V

    iget-object v4, v1, Lcom/prineside/tdi2/managers/DebugManager;->s:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, v1, Lcom/prineside/tdi2/managers/DebugManager;->r:Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v6, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    iget-object v6, v1, Lcom/prineside/tdi2/managers/DebugManager;->r:Lcom/badlogic/gdx/utils/StringBuilder;

    const-string v7, " = "

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    iget-object v6, v1, Lcom/prineside/tdi2/managers/DebugManager;->r:Lcom/badlogic/gdx/utils/StringBuilder;

    iget-object v7, v1, Lcom/prineside/tdi2/managers/DebugManager;->u:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v7, v5}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v6, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Lcom/badlogic/gdx/utils/StringBuilder;)Lcom/badlogic/gdx/utils/StringBuilder;

    iget-object v5, v1, Lcom/prineside/tdi2/managers/DebugManager;->r:Lcom/badlogic/gdx/utils/StringBuilder;

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_5

    :cond_f
    iget-object v4, v1, Lcom/prineside/tdi2/managers/DebugManager;->k:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget-object v5, v1, Lcom/prineside/tdi2/managers/DebugManager;->r:Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    :cond_10
    iget v4, v1, Lcom/prineside/tdi2/managers/DebugManager;->G:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v1, Lcom/prineside/tdi2/managers/DebugManager;->G:I

    const/16 v5, 0x3c

    if-ne v4, v5, :cond_11

    iput v14, v1, Lcom/prineside/tdi2/managers/DebugManager;->G:I

    :cond_11
    iget v4, v13, Lcom/badlogic/gdx/graphics/Camera;->viewportWidth:F

    const/high16 v5, 0x43700000    # 240.0f

    sub-float/2addr v4, v5

    const/high16 v15, 0x40a00000    # 5.0f

    sub-float/2addr v4, v15

    int-to-float v9, v10

    sub-float/2addr v4, v9

    sget-object v5, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v5, v11}, Lcom/badlogic/gdx/graphics/GL20;->glEnable(I)V

    sget-object v5, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v6, 0x303

    const/16 v7, 0x302

    invoke-interface {v5, v7, v6}, Lcom/badlogic/gdx/graphics/GL20;->glBlendFunc(II)V

    sget-object v5, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Filled:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->begin(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;)V

    iget v5, v1, Lcom/prineside/tdi2/managers/DebugManager;->G:I

    const/4 v6, 0x0

    :goto_6
    const/16 v7, 0x3c

    const-wide/high16 v19, 0x404e000000000000L    # 60.0

    const/high16 v8, 0x40800000    # 4.0f

    move/from16 v21, v9

    const/high16 v9, 0x3f000000    # 0.5f

    if-ge v5, v7, :cond_15

    iget-object v7, v1, Lcom/prineside/tdi2/managers/DebugManager;->E:[J

    move-object/from16 v22, v12

    aget-wide v11, v7, v5

    const-wide v23, 0x41cdcd6500000000L    # 1.0E9

    long-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    div-double v23, v23, v11

    int-to-float v7, v6

    mul-float v7, v7, v8

    add-float/2addr v7, v4

    cmpl-double v11, v23, v19

    if-lez v11, :cond_12

    goto :goto_7

    :cond_12
    move-wide/from16 v19, v23

    :goto_7
    float-to-double v11, v3

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v11, v11, v19

    double-to-float v11, v11

    const-wide/high16 v23, 0x4049000000000000L    # 50.0

    cmpl-double v12, v19, v23

    if-lez v12, :cond_13

    const v9, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v2, v3, v2, v9}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->setColor(FFFF)V

    goto :goto_8

    :cond_13
    const-wide/high16 v23, 0x4034000000000000L    # 20.0

    cmpl-double v12, v19, v23

    if-lez v12, :cond_14

    invoke-virtual {v0, v9, v9, v2, v9}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->setColor(FFFF)V

    goto :goto_8

    :cond_14
    invoke-virtual {v0, v3, v2, v2, v9}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->setColor(FFFF)V

    :goto_8
    sub-float/2addr v7, v8

    invoke-virtual {v0, v7, v15, v8, v11}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->rect(FFFF)V

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v5, v5, 0x1

    move/from16 v9, v21

    move-object/from16 v12, v22

    const/16 v11, 0xbe2

    goto :goto_6

    :cond_15
    move-object/from16 v22, v12

    const/4 v5, 0x0

    :goto_9
    iget v7, v1, Lcom/prineside/tdi2/managers/DebugManager;->G:I

    if-ge v5, v7, :cond_19

    iget-object v7, v1, Lcom/prineside/tdi2/managers/DebugManager;->E:[J

    aget-wide v11, v7, v5

    const-wide v23, 0x41cdcd6500000000L    # 1.0E9

    long-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    div-double v23, v23, v11

    int-to-float v7, v6

    mul-float v7, v7, v8

    add-float/2addr v7, v4

    cmpl-double v11, v23, v19

    if-lez v11, :cond_16

    move-wide/from16 v23, v19

    :cond_16
    float-to-double v11, v3

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v11, v11, v23

    double-to-float v11, v11

    const-wide/high16 v25, 0x4049000000000000L    # 50.0

    cmpl-double v12, v23, v25

    if-lez v12, :cond_17

    const v12, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v2, v3, v2, v12}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->setColor(FFFF)V

    goto :goto_a

    :cond_17
    const-wide/high16 v25, 0x4034000000000000L    # 20.0

    cmpl-double v12, v23, v25

    if-lez v12, :cond_18

    invoke-virtual {v0, v9, v9, v2, v9}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->setColor(FFFF)V

    goto :goto_a

    :cond_18
    invoke-virtual {v0, v3, v2, v2, v9}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->setColor(FFFF)V

    :goto_a
    sub-float/2addr v7, v8

    invoke-virtual {v0, v7, v15, v8, v11}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->rect(FFFF)V

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    :cond_19
    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->musicManager:Lcom/prineside/tdi2/managers/MusicManager;

    instance-of v5, v4, Lcom/prineside/tdi2/managers/music/LiveMusicManager;

    const/high16 v11, 0x41000000    # 8.0f

    const/high16 v12, 0x43480000    # 200.0f

    const/high16 v19, 0x41200000    # 10.0f

    if-eqz v5, :cond_1f

    check-cast v4, Lcom/prineside/tdi2/managers/music/LiveMusicManager;

    iget-object v5, v4, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->spectrumLeft:[F

    if-eqz v5, :cond_1f

    invoke-virtual {v0, v2, v3, v2, v9}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->setColor(FFFF)V

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    invoke-virtual {v5}, Lcom/prineside/tdi2/managers/UiManager;->getRegularLayerWidth()F

    move-result v5

    mul-float v5, v5, v9

    iget-object v6, v4, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->spectrumLeft:[F

    array-length v6, v6

    new-array v7, v6, [F

    iget-object v8, v4, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->spectrumLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_1
    iget-object v3, v4, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->spectrumLeft:[F

    array-length v9, v3

    invoke-static {v3, v14, v7, v14, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v9, 0x0

    :goto_b
    if-ge v9, v6, :cond_1c

    aget v3, v7, v9

    iget-object v8, v1, Lcom/prineside/tdi2/managers/DebugManager;->M:[F

    aget v25, v8, v9

    cmpg-float v26, v3, v25

    if-gez v26, :cond_1b

    iget-object v14, v1, Lcom/prineside/tdi2/managers/DebugManager;->O:[F

    aget v27, v14, v9

    sub-float v25, v25, v27

    const v28, 0x3eb33333    # 0.35f

    mul-float v28, v28, p1

    add-float v27, v27, v28

    aput v27, v14, v9

    cmpg-float v14, v25, v3

    if-gez v14, :cond_1a

    goto :goto_c

    :cond_1a
    move/from16 v3, v25

    goto :goto_c

    :cond_1b
    aput v3, v8, v9

    iget-object v14, v1, Lcom/prineside/tdi2/managers/DebugManager;->O:[F

    aput v2, v14, v9

    :goto_c
    aput v3, v8, v9

    mul-float v3, v3, v12

    sub-float v8, v5, v3

    int-to-float v14, v9

    mul-float v14, v14, v19

    add-float/2addr v14, v15

    invoke-virtual {v0, v8, v14, v3, v11}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->rect(FFFF)V

    add-int/lit8 v9, v9, 0x1

    const/4 v14, 0x0

    goto :goto_b

    :cond_1c
    const/high16 v3, 0x3f000000    # 0.5f

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2, v3, v8, v3}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->setColor(FFFF)V

    iget-object v9, v4, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->spectrumLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_2
    iget-object v4, v4, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->spectrumRight:[F

    array-length v8, v4

    const/4 v14, 0x0

    invoke-static {v4, v14, v7, v14, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v9, 0x0

    :goto_d
    if-ge v9, v6, :cond_1f

    aget v4, v7, v9

    iget-object v8, v1, Lcom/prineside/tdi2/managers/DebugManager;->N:[F

    aget v14, v8, v9

    cmpg-float v24, v4, v14

    if-gez v24, :cond_1e

    iget-object v3, v1, Lcom/prineside/tdi2/managers/DebugManager;->P:[F

    aget v25, v3, v9

    sub-float v14, v14, v25

    const v27, 0x3eb33333    # 0.35f

    mul-float v27, v27, p1

    add-float v25, v25, v27

    aput v25, v3, v9

    cmpg-float v3, v14, v4

    if-gez v3, :cond_1d

    goto :goto_e

    :cond_1d
    move v4, v14

    goto :goto_e

    :cond_1e
    aput v4, v8, v9

    iget-object v3, v1, Lcom/prineside/tdi2/managers/DebugManager;->P:[F

    aput v2, v3, v9

    :goto_e
    aput v4, v8, v9

    mul-float v4, v4, v12

    int-to-float v3, v9

    mul-float v3, v3, v19

    add-float/2addr v3, v15

    invoke-virtual {v0, v5, v3, v4, v11}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->rect(FFFF)V

    add-int/lit8 v9, v9, 0x1

    const/high16 v3, 0x3f000000    # 0.5f

    goto :goto_d

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :cond_1f
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->end()V

    iget-boolean v3, v1, Lcom/prineside/tdi2/managers/DebugManager;->d:Z

    if-nez v3, :cond_20

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v2

    const-wide/16 v4, 0x400

    div-long/2addr v2, v4

    long-to-int v3, v2

    invoke-virtual {v0}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v4

    const-wide/16 v6, 0x400

    div-long/2addr v4, v6

    long-to-int v2, v4

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v4

    div-long/2addr v4, v6

    long-to-int v0, v4

    const-string v4, "Memory F/T/M"

    invoke-virtual {v1, v4}, Lcom/prineside/tdi2/managers/DebugManager;->registerValue(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    int-to-long v5, v3

    invoke-static {v5, v6}, Lcom/prineside/tdi2/utils/StringFormatter;->commaSeparatedNumber(J)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Lcom/badlogic/gdx/utils/StringBuilder;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v3

    const-string v4, " / "

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v3

    int-to-long v4, v2

    invoke-static {v4, v5}, Lcom/prineside/tdi2/utils/StringFormatter;->commaSeparatedNumber(J)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Lcom/badlogic/gdx/utils/StringBuilder;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v2

    int-to-long v3, v0

    invoke-static {v3, v4}, Lcom/prineside/tdi2/utils/StringFormatter;->commaSeparatedNumber(J)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Lcom/badlogic/gdx/utils/StringBuilder;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-object v2, v1

    goto/16 :goto_30

    :cond_20
    const-string v3, "Memory"

    invoke-virtual {v1, v3}, Lcom/prineside/tdi2/managers/DebugManager;->unregisterValue(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/prineside/tdi2/managers/DebugManager;->s:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/Array;->clear()V

    iget-object v3, v1, Lcom/prineside/tdi2/managers/DebugManager;->v:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/ObjectMap;->iterator()Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    move-result-object v3

    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_21

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/utils/ObjectMap$Entry;

    iget-object v5, v1, Lcom/prineside/tdi2/managers/DebugManager;->s:Lcom/badlogic/gdx/utils/Array;

    iget-object v4, v4, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->key:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_f

    :cond_21
    const-wide/16 v3, 0x3e8

    iget-object v5, v1, Lcom/prineside/tdi2/managers/DebugManager;->z:[J

    array-length v6, v5

    const/4 v9, 0x0

    :goto_10
    if-ge v9, v6, :cond_23

    aget-wide v7, v5, v9

    cmp-long v14, v7, v3

    if-lez v14, :cond_22

    move-wide v3, v7

    :cond_22
    add-int/lit8 v9, v9, 0x1

    goto :goto_10

    :cond_23
    const-wide/32 v5, 0x84d0

    cmp-long v7, v3, v5

    if-lez v7, :cond_24

    const-wide/32 v3, 0x84d0

    :cond_24
    long-to-float v3, v3

    const/high16 v14, 0x447a0000    # 1000.0f

    div-float/2addr v3, v14

    float-to-int v3, v3

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    div-float v25, v4, v3

    iget v4, v1, Lcom/prineside/tdi2/managers/DebugManager;->H:F

    sub-float/2addr v4, v3

    mul-float v5, p1, v19

    invoke-static {v4}, Ljava/lang/StrictMath;->abs(F)F

    move-result v6

    cmpl-float v6, v6, v5

    if-lez v6, :cond_25

    iget v3, v1, Lcom/prineside/tdi2/managers/DebugManager;->H:F

    invoke-static {v4}, Ljava/lang/StrictMath;->abs(F)F

    move-result v6

    div-float/2addr v5, v6

    mul-float v4, v4, v5

    sub-float/2addr v3, v4

    :cond_25
    iput v3, v1, Lcom/prineside/tdi2/managers/DebugManager;->H:F

    const/16 v9, 0x230

    const/4 v8, 0x5

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    invoke-virtual {v4}, Lcom/prineside/tdi2/managers/UiManager;->getRegularLayerWidth()F

    move-result v4

    float-to-int v4, v4

    add-int/lit8 v4, v4, -0x5

    sub-int/2addr v4, v9

    const/16 v7, 0xf0

    sub-int/2addr v4, v7

    iget v5, v13, Lcom/badlogic/gdx/graphics/Camera;->viewportHeight:F

    float-to-int v5, v5

    const/16 v27, 0x2

    div-int/lit8 v6, v5, 0x2

    int-to-float v5, v4

    const/high16 v4, 0x43700000    # 240.0f

    div-float v4, v5, v4

    sget-object v7, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v11, 0xbe2

    invoke-interface {v7, v11}, Lcom/badlogic/gdx/graphics/GL20;->glEnable(I)V

    sget-object v7, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v11, 0x303

    const/16 v12, 0x302

    invoke-interface {v7, v12, v11}, Lcom/badlogic/gdx/graphics/GL20;->glBlendFunc(II)V

    sget-object v7, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Filled:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    invoke-virtual {v0, v7}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->begin(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;)V

    const v7, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v2, v2, v2, v7}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->setColor(FFFF)V

    int-to-float v11, v8

    iget v7, v13, Lcom/badlogic/gdx/graphics/Camera;->viewportWidth:F

    iget v12, v13, Lcom/badlogic/gdx/graphics/Camera;->viewportHeight:F

    invoke-virtual {v0, v2, v11, v7, v12}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->rect(FFFF)V

    iget v7, v1, Lcom/prineside/tdi2/managers/DebugManager;->H:F

    cmpg-float v7, v7, v19

    if-gez v7, :cond_26

    const/4 v12, 0x1

    goto :goto_11

    :cond_26
    const/4 v12, 0x2

    :goto_11
    const v7, 0x3e0f5c29    # 0.14f

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v0, v8, v8, v8, v7}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->setColor(FFFF)V

    move v8, v12

    :goto_12
    int-to-float v7, v8

    cmpg-float v30, v7, v3

    if-gtz v30, :cond_27

    int-to-float v2, v6

    mul-float v2, v2, v25

    mul-float v2, v2, v7

    add-int v7, v9, v10

    int-to-float v7, v7

    iget v9, v13, Lcom/badlogic/gdx/graphics/Camera;->viewportWidth:F

    sub-float/2addr v9, v15

    const/high16 v32, 0x40000000    # 2.0f

    move v15, v4

    move-object v4, v0

    move/from16 v33, v5

    move v5, v7

    move v7, v6

    move v6, v2

    move v14, v7

    move-object/from16 v34, v13

    const/16 v13, 0xf0

    move v7, v9

    move/from16 v29, v8

    const/high16 v9, 0x40800000    # 4.0f

    const/16 v20, 0x5

    move v8, v2

    move/from16 v2, v21

    const/16 v13, 0x230

    const/high16 v21, 0x3f000000    # 0.5f

    move/from16 v9, v32

    invoke-virtual/range {v4 .. v9}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->rectLine(FFFFF)V

    add-int v8, v29, v12

    move/from16 v21, v2

    move v6, v14

    move v4, v15

    move/from16 v5, v33

    move-object/from16 v13, v34

    const/4 v2, 0x0

    const/16 v9, 0x230

    const/high16 v14, 0x447a0000    # 1000.0f

    const/high16 v15, 0x40a00000    # 5.0f

    goto :goto_12

    :cond_27
    move v15, v4

    move/from16 v33, v5

    move v14, v6

    move-object/from16 v34, v13

    move/from16 v2, v21

    const/16 v13, 0x230

    const/16 v20, 0x5

    const/high16 v21, 0x3f000000    # 0.5f

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->end()V

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v5, 0x15

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v9

    invoke-virtual/range {v22 .. v22}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    const v4, 0x3e8f5c29    # 0.28f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v9, v5, v5, v5, v4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(FFFF)V

    move v4, v12

    :goto_13
    int-to-float v5, v4

    cmpg-float v6, v5, v3

    if-gtz v6, :cond_28

    int-to-float v6, v14

    mul-float v6, v6, v25

    mul-float v5, v5, v6

    const/high16 v6, 0x41c00000    # 24.0f

    add-float/2addr v5, v6

    iget-object v6, v1, Lcom/prineside/tdi2/managers/DebugManager;->r:Lcom/badlogic/gdx/utils/StringBuilder;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    iget-object v6, v1, Lcom/prineside/tdi2/managers/DebugManager;->r:Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v6, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v6

    const-string v7, " ms"

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    iget-object v6, v1, Lcom/prineside/tdi2/managers/DebugManager;->r:Lcom/badlogic/gdx/utils/StringBuilder;

    add-int v7, v13, v10

    int-to-float v7, v7

    move-object/from16 v8, v22

    invoke-virtual {v9, v8, v6, v7, v5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FF)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    add-int/2addr v4, v12

    goto :goto_13

    :cond_28
    move-object/from16 v8, v22

    sget-object v3, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v9, v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v8}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    invoke-virtual {v8}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    invoke-virtual {v9, v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    const-string v3, "min"

    add-int/lit16 v4, v10, 0x140

    int-to-float v4, v4

    const/high16 v12, 0x42000000    # 32.0f

    invoke-virtual {v9, v8, v3, v4, v12}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FF)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    const-string v3, "avg"

    add-int/lit16 v5, v10, 0x190

    int-to-float v5, v5

    invoke-virtual {v9, v8, v3, v5, v12}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FF)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    const-string v3, "max"

    add-int/lit16 v6, v10, 0x1e0

    int-to-float v6, v6

    invoke-virtual {v9, v8, v3, v6, v12}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FF)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    const-wide/16 v31, 0x1

    const-wide/16 v35, 0x1

    const-wide/16 v37, 0x1

    iget-object v3, v1, Lcom/prineside/tdi2/managers/DebugManager;->s:Lcom/badlogic/gdx/utils/Array;

    iget v3, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v3, v3, -0x1

    move/from16 v29, v14

    move/from16 v24, v15

    move-wide/from16 v12, v31

    move-wide/from16 v14, v35

    move/from16 v32, v6

    move-wide/from16 v6, v37

    :goto_14
    if-ltz v3, :cond_30

    move/from16 v35, v11

    iget-object v11, v1, Lcom/prineside/tdi2/managers/DebugManager;->s:Lcom/badlogic/gdx/utils/Array;

    iget-object v11, v11, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v11, [Ljava/lang/String;

    aget-object v11, v11, v3

    move/from16 v36, v2

    iget-object v2, v1, Lcom/prineside/tdi2/managers/DebugManager;->v:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v2, v11}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [J

    const-wide/16 v37, 0x0

    const-wide v39, 0x7fffffffffffffffL

    const-wide/high16 v41, -0x8000000000000000L

    array-length v11, v2

    move-object/from16 v43, v0

    const/4 v0, 0x0

    :goto_15
    if-ge v0, v11, :cond_2b

    aget-wide v44, v2, v0

    add-long v37, v37, v44

    cmp-long v46, v39, v44

    if-lez v46, :cond_29

    move-wide/from16 v39, v44

    :cond_29
    cmp-long v46, v41, v44

    if-gez v46, :cond_2a

    move-wide/from16 v41, v44

    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_2b
    array-length v0, v2

    move v2, v4

    move v11, v5

    int-to-long v4, v0

    div-long v37, v37, v4

    const-wide/16 v4, 0x1f4

    cmp-long v0, v41, v4

    if-gez v0, :cond_2c

    const-wide/16 v4, 0xc8

    cmp-long v0, v37, v4

    if-gez v0, :cond_2c

    iget-object v0, v1, Lcom/prineside/tdi2/managers/DebugManager;->s:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    goto :goto_16

    :cond_2c
    cmp-long v0, v12, v39

    if-gez v0, :cond_2d

    move-wide/from16 v12, v39

    :cond_2d
    cmp-long v0, v14, v37

    if-gez v0, :cond_2e

    move-wide/from16 v14, v37

    :cond_2e
    cmp-long v0, v6, v41

    if-gez v0, :cond_2f

    move-wide/from16 v6, v41

    :cond_2f
    :goto_16
    add-int/lit8 v3, v3, -0x1

    move v4, v2

    move v5, v11

    move/from16 v11, v35

    move/from16 v2, v36

    move-object/from16 v0, v43

    goto :goto_14

    :cond_30
    move-object/from16 v43, v0

    move/from16 v36, v2

    move v2, v4

    move/from16 v35, v11

    move v11, v5

    iget-object v0, v1, Lcom/prineside/tdi2/managers/DebugManager;->s:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->sort()V

    iget-object v0, v1, Lcom/prineside/tdi2/managers/DebugManager;->s:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->reverse()V

    iget-object v0, v1, Lcom/prineside/tdi2/managers/DebugManager;->s:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v0

    const/4 v3, 0x0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, v1, Lcom/prineside/tdi2/managers/DebugManager;->v:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [J

    const-wide v37, 0x7fffffffffffffffL

    const-wide/high16 v39, -0x8000000000000000L

    const-wide/16 v41, 0x0

    move-object/from16 v44, v0

    array-length v0, v5

    move-wide/from16 v45, v6

    const/4 v6, 0x0

    move v7, v2

    move-wide/from16 v1, v39

    move-wide/from16 v48, v14

    move-wide/from16 v14, v37

    move-wide/from16 v37, v48

    :goto_18
    if-ge v6, v0, :cond_33

    aget-wide v39, v5, v6

    add-long v41, v41, v39

    cmp-long v47, v14, v39

    if-lez v47, :cond_31

    move-wide/from16 v14, v39

    :cond_31
    cmp-long v47, v1, v39

    if-gez v47, :cond_32

    move-wide/from16 v1, v39

    :cond_32
    add-int/lit8 v6, v6, 0x1

    goto :goto_18

    :cond_33
    array-length v0, v5

    int-to-long v5, v0

    div-long v5, v41, v5

    move-wide/from16 v40, v1

    const/4 v0, 0x0

    const/16 v39, 0x0

    :goto_19
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_34

    mul-int/lit8 v39, v39, 0x1f

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int v39, v39, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_34
    sget-object v0, Lcom/prineside/tdi2/managers/DebugManager;->RANDOM_COLORS:[Lcom/badlogic/gdx/graphics/Color;

    invoke-static/range {v39 .. v39}, Ljava/lang/StrictMath;->abs(I)I

    move-result v1

    array-length v2, v0

    rem-int/2addr v1, v2

    aget-object v0, v0, v1

    invoke-virtual {v9, v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    add-int/lit8 v0, v10, 0x5

    int-to-float v0, v0

    add-int/lit8 v1, v3, 0x2

    mul-int/lit8 v1, v1, 0x18

    int-to-float v1, v1

    invoke-virtual {v9, v8, v4, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FF)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    long-to-float v0, v14

    mul-float v0, v0, v21

    long-to-float v2, v12

    div-float/2addr v0, v2

    add-float v0, v0, v21

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v9, v2, v2, v2, v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(FFFF)V

    move-object/from16 v2, p0

    move-wide/from16 v48, v12

    move-wide/from16 v12, v40

    move-wide/from16 v39, v48

    iget-object v0, v2, Lcom/prineside/tdi2/managers/DebugManager;->r:Lcom/badlogic/gdx/utils/StringBuilder;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    iget-object v0, v2, Lcom/prineside/tdi2/managers/DebugManager;->r:Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v0, v14, v15}, Lcom/badlogic/gdx/utils/StringBuilder;->append(J)Lcom/badlogic/gdx/utils/StringBuilder;

    iget-object v0, v2, Lcom/prineside/tdi2/managers/DebugManager;->r:Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v9, v8, v0, v7, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FF)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    long-to-float v0, v5

    mul-float v0, v0, v21

    move-wide/from16 v14, v37

    long-to-float v4, v14

    div-float/2addr v0, v4

    add-float v0, v0, v21

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v9, v4, v4, v4, v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(FFFF)V

    iget-object v0, v2, Lcom/prineside/tdi2/managers/DebugManager;->r:Lcom/badlogic/gdx/utils/StringBuilder;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    iget-object v0, v2, Lcom/prineside/tdi2/managers/DebugManager;->r:Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v0, v5, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(J)Lcom/badlogic/gdx/utils/StringBuilder;

    iget-object v0, v2, Lcom/prineside/tdi2/managers/DebugManager;->r:Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v9, v8, v0, v11, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FF)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    long-to-float v0, v12

    mul-float v0, v0, v21

    move-wide/from16 v4, v45

    long-to-float v6, v4

    div-float/2addr v0, v6

    add-float v0, v0, v21

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v9, v6, v6, v6, v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(FFFF)V

    iget-object v0, v2, Lcom/prineside/tdi2/managers/DebugManager;->r:Lcom/badlogic/gdx/utils/StringBuilder;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    iget-object v0, v2, Lcom/prineside/tdi2/managers/DebugManager;->r:Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v0, v12, v13}, Lcom/badlogic/gdx/utils/StringBuilder;->append(J)Lcom/badlogic/gdx/utils/StringBuilder;

    iget-object v0, v2, Lcom/prineside/tdi2/managers/DebugManager;->r:Lcom/badlogic/gdx/utils/StringBuilder;

    move/from16 v6, v32

    invoke-virtual {v9, v8, v0, v6, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FF)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    add-int/lit8 v3, v3, 0x1

    move-object v1, v2

    move v2, v7

    move-wide/from16 v12, v39

    move-object/from16 v0, v44

    move-wide v6, v4

    goto/16 :goto_17

    :cond_35
    move-object v2, v1

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v9, v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v8}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Filled:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    move-object/from16 v1, v43

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->begin(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;)V

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v3, 0xbe2

    invoke-interface {v0, v3}, Lcom/badlogic/gdx/graphics/GL20;->glEnable(I)V

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v3, 0x303

    const/16 v4, 0x302

    invoke-interface {v0, v4, v3}, Lcom/badlogic/gdx/graphics/GL20;->glBlendFunc(II)V

    iget-object v0, v2, Lcom/prineside/tdi2/managers/DebugManager;->s:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v0

    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, v2, Lcom/prineside/tdi2/managers/DebugManager;->v:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, [J

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1b
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v4, v6, :cond_36

    mul-int/lit8 v5, v5, 0x1f

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    :cond_36
    sget-object v3, Lcom/prineside/tdi2/managers/DebugManager;->RANDOM_COLORS:[Lcom/badlogic/gdx/graphics/Color;

    invoke-static {v5}, Ljava/lang/StrictMath;->abs(I)I

    move-result v4

    array-length v5, v3

    rem-int/2addr v4, v5

    aget-object v3, v3, v4

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    const/high16 v3, -0x40800000    # -1.0f

    iget v4, v2, Lcom/prineside/tdi2/managers/DebugManager;->B:I

    move v3, v4

    const/16 v4, 0xf0

    const/high16 v6, -0x40800000    # -1.0f

    const/4 v11, 0x0

    :goto_1c
    if-ge v3, v4, :cond_38

    aget-wide v4, v10, v3

    long-to-float v4, v4

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float/2addr v4, v5

    const/16 v5, 0x230

    int-to-float v7, v5

    int-to-float v5, v11

    mul-float v5, v5, v24

    add-float/2addr v7, v5

    add-float v7, v7, v36

    mul-float v4, v4, v25

    move/from16 v12, v29

    int-to-float v5, v12

    mul-float v4, v4, v5

    add-float v13, v35, v4

    if-eqz v11, :cond_37

    sub-float v5, v7, v24

    const/high16 v14, 0x3fc00000    # 1.5f

    move-object v4, v1

    move-object v15, v8

    move v8, v13

    move-object/from16 v29, v0

    move-object v0, v9

    move v9, v14

    invoke-virtual/range {v4 .. v9}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->rectLine(FFFFF)V

    goto :goto_1d

    :cond_37
    move-object/from16 v29, v0

    move-object v15, v8

    move-object v0, v9

    :goto_1d
    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v3, v3, 0x1

    move-object v9, v0

    move v6, v13

    move-object v8, v15

    move-object/from16 v0, v29

    const/16 v4, 0xf0

    move/from16 v29, v12

    goto :goto_1c

    :cond_38
    move-object v15, v8

    move/from16 v12, v29

    move-object/from16 v29, v0

    move-object v0, v9

    const/4 v3, 0x0

    :goto_1e
    iget v4, v2, Lcom/prineside/tdi2/managers/DebugManager;->B:I

    if-ge v3, v4, :cond_3a

    aget-wide v4, v10, v3

    long-to-float v4, v4

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float/2addr v4, v5

    const/16 v5, 0x230

    int-to-float v7, v5

    int-to-float v5, v11

    mul-float v5, v5, v24

    add-float/2addr v7, v5

    add-float v7, v7, v36

    mul-float v4, v4, v25

    int-to-float v5, v12

    mul-float v4, v4, v5

    add-float v13, v35, v4

    if-eqz v11, :cond_39

    sub-float v5, v7, v24

    const/high16 v9, 0x3fc00000    # 1.5f

    move-object v4, v1

    move v8, v13

    invoke-virtual/range {v4 .. v9}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->rectLine(FFFFF)V

    :cond_39
    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v3, v3, 0x1

    move v6, v13

    goto :goto_1e

    :cond_3a
    move-object v9, v0

    move-object v8, v15

    move-object/from16 v0, v29

    move/from16 v29, v12

    goto/16 :goto_1a

    :cond_3b
    move-object v15, v8

    move-object v0, v9

    move/from16 v12, v29

    const/high16 v3, -0x40800000    # -1.0f

    const v4, 0x3e0f5c29    # 0.14f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v1, v5, v5, v5, v4}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->setColor(FFFF)V

    iget v4, v2, Lcom/prineside/tdi2/managers/DebugManager;->B:I

    move v3, v4

    const/16 v4, 0xf0

    const/high16 v6, -0x40800000    # -1.0f

    const/4 v10, 0x0

    :goto_1f
    if-ge v3, v4, :cond_3d

    iget-object v4, v2, Lcom/prineside/tdi2/managers/DebugManager;->z:[J

    aget-wide v7, v4, v3

    long-to-float v4, v7

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float/2addr v4, v5

    const/16 v5, 0x230

    int-to-float v7, v5

    int-to-float v5, v10

    mul-float v5, v5, v24

    add-float/2addr v7, v5

    add-float v7, v7, v36

    mul-float v4, v4, v25

    int-to-float v5, v12

    mul-float v4, v4, v5

    add-float v11, v35, v4

    if-eqz v10, :cond_3c

    sub-float v5, v7, v24

    const/high16 v9, 0x40400000    # 3.0f

    move-object v4, v1

    move v8, v11

    invoke-virtual/range {v4 .. v9}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->rectLine(FFFFF)V

    :cond_3c
    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v3, v3, 0x1

    move v6, v11

    const/16 v4, 0xf0

    goto :goto_1f

    :cond_3d
    const/4 v3, 0x0

    :goto_20
    iget v4, v2, Lcom/prineside/tdi2/managers/DebugManager;->B:I

    if-ge v3, v4, :cond_3f

    iget-object v4, v2, Lcom/prineside/tdi2/managers/DebugManager;->z:[J

    aget-wide v7, v4, v3

    long-to-float v4, v7

    const/high16 v11, 0x447a0000    # 1000.0f

    div-float/2addr v4, v11

    const/16 v5, 0x230

    int-to-float v7, v5

    int-to-float v5, v10

    mul-float v5, v5, v24

    add-float/2addr v7, v5

    add-float v7, v7, v36

    mul-float v4, v4, v25

    int-to-float v5, v12

    mul-float v4, v4, v5

    add-float v13, v35, v4

    if-eqz v10, :cond_3e

    sub-float v5, v7, v24

    const/high16 v9, 0x40400000    # 3.0f

    move-object v4, v1

    move v8, v13

    invoke-virtual/range {v4 .. v9}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->rectLine(FFFFF)V

    :cond_3e
    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v3, v3, 0x1

    move v6, v13

    goto :goto_20

    :cond_3f
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->end()V

    add-int v8, v20, v12

    int-to-float v3, v8

    const/high16 v4, 0x42480000    # 50.0f

    add-float/2addr v3, v4

    int-to-float v4, v12

    mul-float v12, v4, v21

    iget v4, v2, Lcom/prineside/tdi2/managers/DebugManager;->C:I

    int-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    div-float v13, v5, v4

    sget-object v4, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v5, 0xbe2

    invoke-interface {v4, v5}, Lcom/badlogic/gdx/graphics/GL20;->glEnable(I)V

    sget-object v4, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v5, 0x303

    const/16 v6, 0x302

    invoke-interface {v4, v6, v5}, Lcom/badlogic/gdx/graphics/GL20;->glBlendFunc(II)V

    sget-object v4, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Filled:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->begin(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;)V

    const v4, 0x3f0f5c29    # 0.56f

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v5, v5, v4}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->setColor(FFFF)V

    const/16 v4, 0x230

    int-to-float v10, v4

    const/high16 v4, 0x43480000    # 200.0f

    sub-float v5, v10, v4

    const/high16 v6, 0x41800000    # 16.0f

    sub-float v6, v3, v6

    add-float v4, v33, v4

    const/high16 v7, 0x42000000    # 32.0f

    add-float/2addr v7, v12

    const/high16 v8, 0x41800000    # 16.0f

    add-float/2addr v7, v8

    invoke-virtual {v1, v5, v6, v4, v7}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->rect(FFFF)V

    const v4, 0x3f333333    # 0.7f

    const v5, 0x3e570a3d    # 0.21f

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v1, v6, v4, v7, v5}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->setColor(FFFF)V

    iget v4, v2, Lcom/prineside/tdi2/managers/DebugManager;->B:I

    const/16 v6, 0xf0

    const/4 v9, 0x0

    :goto_21
    if-ge v4, v6, :cond_41

    iget-object v6, v2, Lcom/prineside/tdi2/managers/DebugManager;->A:[I

    mul-int/lit8 v7, v4, 0x3

    add-int/lit8 v8, v7, 0x1

    aget v8, v6, v8

    aget v6, v6, v7

    sub-int/2addr v8, v6

    int-to-float v6, v9

    mul-float v6, v6, v24

    add-float/2addr v6, v10

    add-float v6, v6, v36

    int-to-float v7, v8

    mul-float v7, v7, v13

    mul-float v7, v7, v12

    if-eqz v9, :cond_40

    sub-float v6, v6, v24

    move/from16 v11, v24

    invoke-virtual {v1, v6, v3, v11, v7}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->rect(FFFF)V

    goto :goto_22

    :cond_40
    move/from16 v11, v24

    :goto_22
    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v4, v4, 0x1

    move/from16 v24, v11

    const/16 v6, 0xf0

    goto :goto_21

    :cond_41
    move/from16 v11, v24

    move v4, v9

    const/4 v9, 0x0

    :goto_23
    iget v6, v2, Lcom/prineside/tdi2/managers/DebugManager;->B:I

    if-ge v9, v6, :cond_43

    iget-object v6, v2, Lcom/prineside/tdi2/managers/DebugManager;->A:[I

    mul-int/lit8 v7, v9, 0x3

    add-int/lit8 v8, v7, 0x1

    aget v8, v6, v8

    aget v6, v6, v7

    sub-int/2addr v8, v6

    int-to-float v6, v4

    mul-float v6, v6, v11

    add-float/2addr v6, v10

    add-float v6, v6, v36

    int-to-float v7, v8

    mul-float v7, v7, v13

    mul-float v7, v7, v12

    if-eqz v4, :cond_42

    sub-float/2addr v6, v11

    invoke-virtual {v1, v6, v3, v11, v7}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->rect(FFFF)V

    :cond_42
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_23

    :cond_43
    const v4, 0x7fffffff

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v1, v6, v7, v6, v5}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->setColor(FFFF)V

    iget v6, v2, Lcom/prineside/tdi2/managers/DebugManager;->B:I

    const/4 v9, 0x0

    :goto_24
    const/16 v7, 0xf0

    if-ge v6, v7, :cond_46

    iget-object v7, v2, Lcom/prineside/tdi2/managers/DebugManager;->A:[I

    mul-int/lit8 v8, v6, 0x3

    add-int/lit8 v20, v8, 0x1

    aget v20, v7, v20

    aget v7, v7, v8

    sub-int v8, v20, v7

    int-to-float v5, v9

    mul-float v5, v5, v11

    add-float/2addr v5, v10

    add-float v5, v5, v36

    int-to-float v8, v8

    mul-float v8, v8, v13

    mul-float v8, v8, v12

    add-float/2addr v8, v3

    int-to-float v14, v7

    mul-float v14, v14, v13

    mul-float v14, v14, v12

    move/from16 v22, v3

    if-eqz v9, :cond_44

    sub-float v3, v5, v11

    invoke-virtual {v1, v3, v8, v11, v14}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->rect(FFFF)V

    :cond_44
    if-ge v4, v7, :cond_45

    const/high16 v3, 0x40800000    # 4.0f

    const/16 v4, 0x8

    invoke-virtual {v1, v5, v8, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->circle(FFFI)V

    invoke-virtual {v1, v5, v8, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->circle(FFFI)V

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->end()V

    invoke-virtual {v15}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    const v4, 0x3f0f5c29    # 0.56f

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-virtual {v0, v14, v14, v14, v4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(FFFF)V

    iget-object v4, v2, Lcom/prineside/tdi2/managers/DebugManager;->r:Lcom/badlogic/gdx/utils/StringBuilder;

    const/4 v14, 0x0

    invoke-virtual {v4, v14}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    iget-object v4, v2, Lcom/prineside/tdi2/managers/DebugManager;->r:Lcom/badlogic/gdx/utils/StringBuilder;

    move v14, v12

    move/from16 v24, v13

    int-to-long v12, v7

    invoke-static {v12, v13}, Lcom/prineside/tdi2/utils/StringFormatter;->commaSeparatedNumber(J)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v12

    invoke-virtual {v4, v12}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Lcom/badlogic/gdx/utils/StringBuilder;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    const-string v12, "kb"

    invoke-virtual {v4, v12}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    iget-object v4, v2, Lcom/prineside/tdi2/managers/DebugManager;->r:Lcom/badlogic/gdx/utils/StringBuilder;

    const/high16 v12, 0x41000000    # 8.0f

    add-float/2addr v5, v12

    invoke-virtual {v0, v15, v4, v5, v8}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FF)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v4, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v15}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    sget-object v4, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v5, 0xbe2

    invoke-interface {v4, v5}, Lcom/badlogic/gdx/graphics/GL20;->glEnable(I)V

    sget-object v4, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v5, 0x303

    const/16 v8, 0x302

    invoke-interface {v4, v8, v5}, Lcom/badlogic/gdx/graphics/GL20;->glBlendFunc(II)V

    sget-object v4, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Filled:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->begin(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;)V

    const v4, 0x3e570a3d    # 0.21f

    const/4 v5, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v1, v5, v8, v5, v4}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->setColor(FFFF)V

    goto :goto_25

    :cond_45
    move v14, v12

    move/from16 v24, v13

    const/high16 v3, 0x40800000    # 4.0f

    :goto_25
    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v6, v6, 0x1

    move v4, v7

    move v12, v14

    move/from16 v3, v22

    move/from16 v13, v24

    const v5, 0x3e570a3d    # 0.21f

    goto/16 :goto_24

    :cond_46
    move/from16 v22, v3

    move v14, v12

    move/from16 v24, v13

    const/high16 v3, 0x40800000    # 4.0f

    move v5, v9

    const/4 v9, 0x0

    :goto_26
    iget v6, v2, Lcom/prineside/tdi2/managers/DebugManager;->B:I

    if-ge v9, v6, :cond_49

    iget-object v6, v2, Lcom/prineside/tdi2/managers/DebugManager;->A:[I

    mul-int/lit8 v7, v9, 0x3

    add-int/lit8 v8, v7, 0x1

    aget v8, v6, v8

    aget v6, v6, v7

    sub-int/2addr v8, v6

    int-to-float v7, v5

    mul-float v7, v7, v11

    add-float/2addr v7, v10

    add-float v7, v7, v36

    int-to-float v8, v8

    mul-float v13, v24, v8

    mul-float v13, v13, v14

    add-float v8, v22, v13

    int-to-float v12, v6

    mul-float v13, v24, v12

    mul-float v13, v13, v14

    if-eqz v5, :cond_47

    sub-float v12, v7, v11

    invoke-virtual {v1, v12, v8, v11, v13}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->rect(FFFF)V

    :cond_47
    if-ge v4, v6, :cond_48

    const/16 v4, 0x8

    invoke-virtual {v1, v7, v8, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->circle(FFFI)V

    invoke-virtual {v1, v7, v8, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->circle(FFFI)V

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->end()V

    invoke-virtual {v15}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    const v4, 0x3f0f5c29    # 0.56f

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-virtual {v0, v12, v12, v12, v4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(FFFF)V

    iget-object v4, v2, Lcom/prineside/tdi2/managers/DebugManager;->r:Lcom/badlogic/gdx/utils/StringBuilder;

    const/4 v12, 0x0

    invoke-virtual {v4, v12}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    iget-object v4, v2, Lcom/prineside/tdi2/managers/DebugManager;->r:Lcom/badlogic/gdx/utils/StringBuilder;

    int-to-long v12, v6

    invoke-static {v12, v13}, Lcom/prineside/tdi2/utils/StringFormatter;->commaSeparatedNumber(J)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    const-string v12, "kb"

    invoke-virtual {v4, v12}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    iget-object v4, v2, Lcom/prineside/tdi2/managers/DebugManager;->r:Lcom/badlogic/gdx/utils/StringBuilder;

    const/high16 v12, 0x41000000    # 8.0f

    add-float/2addr v7, v12

    invoke-virtual {v0, v15, v4, v7, v8}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FF)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v4, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v15}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    sget-object v4, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v7, 0xbe2

    invoke-interface {v4, v7}, Lcom/badlogic/gdx/graphics/GL20;->glEnable(I)V

    sget-object v4, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v8, 0x303

    const/16 v13, 0x302

    invoke-interface {v4, v13, v8}, Lcom/badlogic/gdx/graphics/GL20;->glBlendFunc(II)V

    sget-object v4, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Filled:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->begin(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;)V

    const/4 v3, 0x0

    const v4, 0x3e570a3d    # 0.21f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3, v7, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->setColor(FFFF)V

    goto :goto_27

    :cond_48
    const/4 v3, 0x0

    const v4, 0x3e570a3d    # 0.21f

    const/high16 v7, 0x3f800000    # 1.0f

    const/16 v8, 0x303

    const/high16 v12, 0x41000000    # 8.0f

    const/16 v13, 0x302

    :goto_27
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v9, v9, 0x1

    move v4, v6

    const/high16 v3, 0x40800000    # 4.0f

    goto/16 :goto_26

    :cond_49
    const/4 v3, 0x0

    const v4, 0x3e570a3d    # 0.21f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v5, -0x40800000    # -1.0f

    const v6, 0x3f4ccccd    # 0.8f

    invoke-virtual {v1, v7, v6, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->setColor(FFFF)V

    iget v3, v2, Lcom/prineside/tdi2/managers/DebugManager;->B:I

    const/16 v4, 0xf0

    const/high16 v6, -0x40800000    # -1.0f

    const/4 v12, 0x0

    :goto_28
    if-ge v3, v4, :cond_4b

    iget-object v4, v2, Lcom/prineside/tdi2/managers/DebugManager;->A:[I

    mul-int/lit8 v5, v3, 0x3

    add-int/lit8 v5, v5, 0x2

    aget v4, v4, v5

    int-to-float v5, v12

    mul-float v5, v5, v11

    add-float/2addr v5, v10

    add-float v7, v5, v36

    int-to-float v4, v4

    mul-float v4, v4, v24

    mul-float v4, v4, v14

    add-float v13, v22, v4

    if-eqz v12, :cond_4a

    sub-float v5, v7, v11

    const/high16 v9, 0x40400000    # 3.0f

    move-object v4, v1

    move v8, v13

    invoke-virtual/range {v4 .. v9}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->rectLine(FFFFF)V

    :cond_4a
    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v3, v3, 0x1

    move v6, v13

    const/16 v4, 0xf0

    goto :goto_28

    :cond_4b
    const/4 v3, 0x0

    :goto_29
    iget v4, v2, Lcom/prineside/tdi2/managers/DebugManager;->B:I

    if-ge v3, v4, :cond_4d

    iget-object v4, v2, Lcom/prineside/tdi2/managers/DebugManager;->A:[I

    mul-int/lit8 v5, v3, 0x3

    add-int/lit8 v5, v5, 0x2

    aget v4, v4, v5

    int-to-float v5, v12

    mul-float v5, v5, v11

    add-float/2addr v5, v10

    add-float v7, v5, v36

    int-to-float v4, v4

    mul-float v4, v4, v24

    mul-float v4, v4, v14

    add-float v13, v22, v4

    if-eqz v12, :cond_4c

    sub-float v5, v7, v11

    const/high16 v9, 0x40400000    # 3.0f

    move-object v4, v1

    move v8, v13

    invoke-virtual/range {v4 .. v9}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->rectLine(FFFFF)V

    :cond_4c
    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v3, v3, 0x1

    move v6, v13

    goto :goto_29

    :cond_4d
    sget-object v3, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->end()V

    invoke-virtual {v15}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    const v1, 0x3f333333    # 0.7f

    const v4, 0x3f0f5c29    # 0.56f

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v0, v5, v1, v6, v4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(FFFF)V

    iget-object v1, v2, Lcom/prineside/tdi2/managers/DebugManager;->r:Lcom/badlogic/gdx/utils/StringBuilder;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    iget-object v1, v2, Lcom/prineside/tdi2/managers/DebugManager;->r:Lcom/badlogic/gdx/utils/StringBuilder;

    const-string v4, "Total: "

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    iget-object v4, v2, Lcom/prineside/tdi2/managers/DebugManager;->A:[I

    iget v5, v2, Lcom/prineside/tdi2/managers/DebugManager;->B:I

    mul-int/lit8 v5, v5, 0x3

    add-int/lit8 v5, v5, 0x1

    aget v4, v4, v5

    int-to-long v4, v4

    invoke-static {v4, v5}, Lcom/prineside/tdi2/utils/StringFormatter;->commaSeparatedNumber(J)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Lcom/badlogic/gdx/utils/StringBuilder;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    const-string v4, "kb"

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    iget-object v6, v2, Lcom/prineside/tdi2/managers/DebugManager;->r:Lcom/badlogic/gdx/utils/StringBuilder;

    sub-float v1, v10, v19

    iget-object v4, v2, Lcom/prineside/tdi2/managers/DebugManager;->A:[I

    iget v5, v2, Lcom/prineside/tdi2/managers/DebugManager;->B:I

    mul-int/lit8 v5, v5, 0x3

    add-int/lit8 v5, v5, 0x1

    aget v4, v4, v5

    int-to-float v4, v4

    mul-float v4, v4, v24

    mul-float v4, v4, v14

    add-float v8, v22, v4

    const/high16 v9, 0x3f800000    # 1.0f

    const/16 v10, 0x10

    const/4 v11, 0x0

    move-object v4, v0

    move-object v5, v15

    move v7, v1

    invoke-virtual/range {v4 .. v11}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FFFIZ)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    const v4, 0x3f0f5c29    # 0.56f

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v0, v5, v6, v5, v4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(FFFF)V

    iget-object v4, v2, Lcom/prineside/tdi2/managers/DebugManager;->r:Lcom/badlogic/gdx/utils/StringBuilder;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    iget-object v4, v2, Lcom/prineside/tdi2/managers/DebugManager;->r:Lcom/badlogic/gdx/utils/StringBuilder;

    const-string v5, "Free: "

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/prineside/tdi2/managers/DebugManager;->A:[I

    iget v6, v2, Lcom/prineside/tdi2/managers/DebugManager;->B:I

    mul-int/lit8 v6, v6, 0x3

    aget v5, v5, v6

    int-to-long v5, v5

    invoke-static {v5, v6}, Lcom/prineside/tdi2/utils/StringFormatter;->commaSeparatedNumber(J)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Lcom/badlogic/gdx/utils/StringBuilder;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    const-string v5, "kb"

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    iget-object v6, v2, Lcom/prineside/tdi2/managers/DebugManager;->r:Lcom/badlogic/gdx/utils/StringBuilder;

    iget-object v4, v2, Lcom/prineside/tdi2/managers/DebugManager;->A:[I

    iget v5, v2, Lcom/prineside/tdi2/managers/DebugManager;->B:I

    mul-int/lit8 v5, v5, 0x3

    aget v4, v4, v5

    int-to-float v4, v4

    mul-float v4, v4, v24

    mul-float v4, v4, v14

    add-float v8, v22, v4

    move-object v4, v0

    move-object v5, v15

    invoke-virtual/range {v4 .. v11}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FFFIZ)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    const v4, 0x3f333333    # 0.7f

    const v5, 0x3f0f5c29    # 0.56f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    invoke-virtual {v0, v6, v4, v12, v5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(FFFF)V

    iget-object v4, v2, Lcom/prineside/tdi2/managers/DebugManager;->r:Lcom/badlogic/gdx/utils/StringBuilder;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    iget-object v4, v2, Lcom/prineside/tdi2/managers/DebugManager;->r:Lcom/badlogic/gdx/utils/StringBuilder;

    const-string v5, "Max: "

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/prineside/tdi2/managers/DebugManager;->A:[I

    iget v6, v2, Lcom/prineside/tdi2/managers/DebugManager;->B:I

    mul-int/lit8 v6, v6, 0x3

    add-int/lit8 v6, v6, 0x2

    aget v5, v5, v6

    int-to-long v5, v5

    invoke-static {v5, v6}, Lcom/prineside/tdi2/utils/StringFormatter;->commaSeparatedNumber(J)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Lcom/badlogic/gdx/utils/StringBuilder;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    const-string v5, "kb"

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    iget-object v6, v2, Lcom/prineside/tdi2/managers/DebugManager;->r:Lcom/badlogic/gdx/utils/StringBuilder;

    iget-object v4, v2, Lcom/prineside/tdi2/managers/DebugManager;->A:[I

    iget v5, v2, Lcom/prineside/tdi2/managers/DebugManager;->B:I

    mul-int/lit8 v5, v5, 0x3

    add-int/lit8 v5, v5, 0x2

    aget v4, v4, v5

    int-to-float v4, v4

    mul-float v4, v4, v24

    mul-float v4, v4, v14

    add-float v4, v22, v4

    const/high16 v5, 0x41800000    # 16.0f

    add-float v8, v4, v5

    move-object v4, v0

    move-object v5, v15

    invoke-virtual/range {v4 .. v11}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FFFIZ)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v15}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    iget v1, v2, Lcom/prineside/tdi2/managers/DebugManager;->B:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v2, Lcom/prineside/tdi2/managers/DebugManager;->B:I

    const/16 v3, 0xf0

    if-ne v1, v3, :cond_4e

    const/4 v1, 0x0

    iput v1, v2, Lcom/prineside/tdi2/managers/DebugManager;->B:I

    :cond_4e
    iget-object v1, v2, Lcom/prineside/tdi2/managers/DebugManager;->s:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v1

    :cond_4f
    :goto_2a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_52

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, v2, Lcom/prineside/tdi2/managers/DebugManager;->v:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [J

    iget v5, v2, Lcom/prineside/tdi2/managers/DebugManager;->B:I

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v5

    array-length v5, v4

    const/4 v9, 0x0

    :goto_2b
    if-ge v9, v5, :cond_51

    aget-wide v6, v4, v9

    const-wide/16 v10, 0x0

    cmp-long v8, v6, v10

    if-eqz v8, :cond_50

    const/4 v9, 0x0

    goto :goto_2c

    :cond_50
    add-int/lit8 v9, v9, 0x1

    goto :goto_2b

    :cond_51
    const/4 v9, 0x1

    :goto_2c
    if-eqz v9, :cond_4f

    iget-object v4, v2, Lcom/prineside/tdi2/managers/DebugManager;->v:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/utils/ObjectMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2a

    :cond_52
    iget-object v1, v2, Lcom/prineside/tdi2/managers/DebugManager;->S:[I

    const/4 v3, 0x0

    invoke-static {v1, v3}, Ljava/util/Arrays;->fill([II)V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->soundManager:Lcom/prineside/tdi2/managers/SoundManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/SoundManager;->playingSoundStats:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v1, v1, -0x1

    :goto_2d
    if-ltz v1, :cond_54

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->soundManager:Lcom/prineside/tdi2/managers/SoundManager;

    iget-object v3, v3, Lcom/prineside/tdi2/managers/SoundManager;->playingSoundStats:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget-object v3, v3, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Lcom/prineside/tdi2/managers/SoundManager$PlayingSoundStat;

    aget-object v3, v3, v1

    if-eqz v3, :cond_53

    iget-object v3, v3, Lcom/prineside/tdi2/managers/SoundManager$PlayingSoundStat;->type:Lcom/prineside/tdi2/enums/StaticSoundType;

    if-eqz v3, :cond_53

    iget-object v4, v2, Lcom/prineside/tdi2/managers/DebugManager;->S:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v5, v4, v3

    add-int/lit8 v5, v5, 0x1

    aput v5, v4, v3

    :cond_53
    add-int/lit8 v1, v1, -0x1

    goto :goto_2d

    :cond_54
    iget-object v1, v2, Lcom/prineside/tdi2/managers/DebugManager;->r:Lcom/badlogic/gdx/utils/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    const/4 v9, 0x0

    :goto_2e
    iget-object v1, v2, Lcom/prineside/tdi2/managers/DebugManager;->S:[I

    array-length v3, v1

    if-ge v9, v3, :cond_58

    aget v1, v1, v9

    if-eqz v1, :cond_57

    const/16 v3, 0x8

    if-lt v1, v3, :cond_55

    iget-object v1, v2, Lcom/prineside/tdi2/managers/DebugManager;->r:Lcom/badlogic/gdx/utils/StringBuilder;

    const-string v3, "[#FFFF00]"

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    :cond_55
    iget-object v1, v2, Lcom/prineside/tdi2/managers/DebugManager;->r:Lcom/badlogic/gdx/utils/StringBuilder;

    sget-object v3, Lcom/prineside/tdi2/enums/StaticSoundType;->values:[Lcom/prineside/tdi2/enums/StaticSoundType;

    aget-object v3, v3, v9

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    const-string v3, ": "

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    iget-object v3, v2, Lcom/prineside/tdi2/managers/DebugManager;->S:[I

    aget v3, v3, v9

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    iget-object v1, v2, Lcom/prineside/tdi2/managers/DebugManager;->S:[I

    aget v1, v1, v9

    const/16 v3, 0x8

    if-lt v1, v3, :cond_56

    iget-object v1, v2, Lcom/prineside/tdi2/managers/DebugManager;->r:Lcom/badlogic/gdx/utils/StringBuilder;

    const-string v4, "[]"

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    :cond_56
    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v12, v1

    goto :goto_2f

    :cond_57
    const/high16 v1, 0x3f800000    # 1.0f

    const/16 v3, 0x8

    :goto_2f
    add-int/lit8 v9, v9, 0x1

    goto :goto_2e

    :cond_58
    const/high16 v1, 0x3f800000    # 1.0f

    iget-object v3, v2, Lcom/prineside/tdi2/managers/DebugManager;->r:Lcom/badlogic/gdx/utils/StringBuilder;

    iget v3, v3, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-eqz v3, :cond_59

    const v3, 0x3f0f5c29    # 0.56f

    invoke-virtual {v0, v1, v1, v1, v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(FFFF)V

    invoke-virtual {v15}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    iget-object v6, v2, Lcom/prineside/tdi2/managers/DebugManager;->r:Lcom/badlogic/gdx/utils/StringBuilder;

    move-object/from16 v1, v34

    iget v1, v1, Lcom/badlogic/gdx/graphics/Camera;->viewportWidth:F

    const/high16 v3, 0x42c80000    # 100.0f

    sub-float/2addr v1, v3

    sub-float v1, v1, v36

    const/high16 v3, 0x40a00000    # 5.0f

    sub-float v7, v1, v3

    const/high16 v1, 0x42a00000    # 80.0f

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getLineHeight()F

    move-result v3

    mul-float v12, v12, v3

    add-float v8, v12, v1

    const/high16 v9, 0x42c80000    # 100.0f

    const/16 v10, 0x10

    const/4 v11, 0x0

    move-object v4, v0

    move-object v5, v15

    invoke-virtual/range {v4 .. v11}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FFFIZ)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    invoke-virtual {v15}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :cond_59
    :goto_30
    iget-object v0, v2, Lcom/prineside/tdi2/managers/DebugManager;->glProfiler:Lcom/badlogic/gdx/graphics/profiling/GLProfiler;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->reset()V

    return-void
.end method

.method public preRender(F)V
    .locals 2

    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/prineside/tdi2/managers/DebugManager;->I:J

    return-void
.end method

.method public registerFrameDrawTimeAndMemory(J)V
    .locals 7

    iget-boolean v0, p0, Lcom/prineside/tdi2/managers/DebugManager;->b:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->nanoTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/prineside/tdi2/managers/DebugManager;->E:[J

    iget v3, p0, Lcom/prineside/tdi2/managers/DebugManager;->G:I

    iget-wide v4, p0, Lcom/prineside/tdi2/managers/DebugManager;->D:J

    sub-long v4, v0, v4

    aput-wide v4, v2, v3

    iput-wide v0, p0, Lcom/prineside/tdi2/managers/DebugManager;->D:J

    iget-boolean v0, p0, Lcom/prineside/tdi2/managers/DebugManager;->d:Z

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v1

    const-wide/16 v3, 0x400

    div-long/2addr v1, v3

    long-to-int v2, v1

    invoke-virtual {v0}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v5

    div-long/2addr v5, v3

    long-to-int v1, v5

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v5

    div-long/2addr v5, v3

    long-to-int v0, v5

    iget-object v3, p0, Lcom/prineside/tdi2/managers/DebugManager;->z:[J

    iget v4, p0, Lcom/prineside/tdi2/managers/DebugManager;->B:I

    aput-wide p1, v3, v4

    iget-object p1, p0, Lcom/prineside/tdi2/managers/DebugManager;->A:[I

    mul-int/lit8 p2, v4, 0x3

    aput v2, p1, p2

    mul-int/lit8 p2, v4, 0x3

    add-int/lit8 p2, p2, 0x1

    aput v1, p1, p2

    mul-int/lit8 v4, v4, 0x3

    add-int/lit8 v4, v4, 0x2

    aput v0, p1, v4

    iget p1, p0, Lcom/prineside/tdi2/managers/DebugManager;->C:I

    if-ge p1, v0, :cond_1

    iput v0, p0, Lcom/prineside/tdi2/managers/DebugManager;->C:I

    :cond_1
    return-void
.end method

.method public registerFrameJob(Ljava/lang/String;J)V
    .locals 2

    iget-boolean v0, p0, Lcom/prineside/tdi2/managers/DebugManager;->b:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/managers/DebugManager;->v:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0xf0

    new-array v0, v0, [J

    iget-object v1, p0, Lcom/prineside/tdi2/managers/DebugManager;->v:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v1, p1, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcom/prineside/tdi2/managers/DebugManager;->v:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [J

    iget v0, p0, Lcom/prineside/tdi2/managers/DebugManager;->B:I

    aput-wide p2, p1, v0

    return-void
.end method

.method public registerGameStateUpdate()V
    .locals 5

    invoke-static {}, Lcom/prineside/tdi2/Config;->isHeadless()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->DBG_SHOW_FPS:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/SettingsManager;->getCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/managers/DebugManager;->w:Lcom/badlogic/gdx/utils/LongArray;

    invoke-static {}, Lcom/prineside/tdi2/Game;->getTimestampMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/LongArray;->add(J)V

    :cond_0
    return-void
.end method

.method public registerValue(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 2

    iget-boolean v0, p0, Lcom/prineside/tdi2/managers/DebugManager;->b:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/managers/DebugManager;->u:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/DebugManager;->u:Lcom/badlogic/gdx/utils/ObjectMap;

    new-instance v1, Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcom/prineside/tdi2/managers/DebugManager;->u:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/utils/StringBuilder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    return-object p1
.end method

.method public setup()V
    .locals 7

    invoke-static {}, Lcom/prineside/tdi2/Config;->isHeadless()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    new-instance v1, Lcom/prineside/tdi2/managers/DebugManager$1;

    invoke-direct {v1, p0}, Lcom/prineside/tdi2/managers/DebugManager$1;-><init>(Lcom/prineside/tdi2/managers/DebugManager;)V

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/Manager$ManagerWithListeners;->addListener(Ljava/lang/Object;)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    new-instance v1, Lcom/prineside/tdi2/managers/DebugManager$2;

    invoke-direct {v1, p0}, Lcom/prineside/tdi2/managers/DebugManager$2;-><init>(Lcom/prineside/tdi2/managers/DebugManager;)V

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/Game;->addListener(Lcom/prineside/tdi2/Game$GameListener;)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    new-instance v1, Lcom/prineside/tdi2/managers/DebugManager$3;

    invoke-direct {v1, p0}, Lcom/prineside/tdi2/managers/DebugManager$3;-><init>(Lcom/prineside/tdi2/managers/DebugManager;)V

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/Game;->addScreenResizeListener(Lcom/prineside/tdi2/Game$ScreenResizeListener;)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    sget-object v1, Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;->OVERLAY:Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;

    const/16 v2, 0x4a39

    const-string v3, "DebugManager main"

    invoke-virtual {v0, v1, v2, v3}, Lcom/prineside/tdi2/managers/UiManager;->addLayer(Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;ILjava/lang/String;)Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/managers/DebugManager;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->disabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setDebug(Z)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>()V

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v2

    iput-object v2, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v4, "blank"

    invoke-virtual {v2, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v2

    new-instance v4, Lcom/badlogic/gdx/graphics/Color;

    const v5, 0x3e8f5c29    # 0.28f

    const/4 v6, 0x0

    invoke-direct {v4, v6, v6, v6, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;->tint(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v2

    iput-object v2, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string v4, "Debug"

    invoke-direct {v2, v4, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v2, p0, Lcom/prineside/tdi2/managers/DebugManager;->k:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    iget-object v1, p0, Lcom/prineside/tdi2/managers/DebugManager;->k:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->pad(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expand()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->right()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v0, Lcom/prineside/tdi2/managers/DebugManager$4;

    invoke-direct {v0, p0}, Lcom/prineside/tdi2/managers/DebugManager$4;-><init>(Lcom/prineside/tdi2/managers/DebugManager;)V

    iput-object v0, p0, Lcom/prineside/tdi2/managers/DebugManager;->t:Lcom/prineside/tdi2/managers/SettingsManager$SettingsManagerListener;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/managers/SettingsManager;->addListener(Lcom/prineside/tdi2/managers/SettingsManager$SettingsManagerListener;)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/DebugManager;->e()V

    return-void
.end method

.method public test()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x64

    if-ge v0, v1, :cond_1

    sget-object v1, Lcom/prineside/tdi2/utils/FastRandom;->random:Lcom/badlogic/gdx/math/RandomXS128;

    invoke-virtual {v1}, Lcom/badlogic/gdx/math/RandomXS128;->nextFloat()F

    move-result v2

    invoke-virtual {v1}, Lcom/badlogic/gdx/math/RandomXS128;->nextFloat()F

    move-result v1

    sub-float/2addr v2, v1

    const/high16 v1, -0x40800000    # -1.0f

    cmpg-float v1, v2, v1

    if-ltz v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v2, v1

    if-gtz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Manual triangular random failed: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method public unregisterValue(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/DebugManager;->u:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
