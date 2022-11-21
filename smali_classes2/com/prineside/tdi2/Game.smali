.class public abstract Lcom/prineside/tdi2/Game;
.super Lcom/badlogic/gdx/Game;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/Game$GameListener;,
        Lcom/prineside/tdi2/Game$ScreenResizeListener;
    }
.end annotation


# static fields
.field public static i:Lcom/prineside/tdi2/Game;

.field public static final k:J

.field public static r:Lcom/prineside/tdi2/Registry;


# instance fields
.field public abilityManager:Lcom/prineside/tdi2/managers/AbilityManager;

.field public achievementManager:Lcom/prineside/tdi2/managers/AchievementManager;

.field public final actionResolver:Lcom/prineside/tdi2/ActionResolver;

.field public assetManager:Lcom/prineside/tdi2/managers/AssetManager;

.field public authManager:Lcom/prineside/tdi2/managers/AuthManager;

.field public b:Z

.field public basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

.field public buffManager:Lcom/prineside/tdi2/managers/BuffManager;

.field public c:Z

.field public final d:Lcom/badlogic/gdx/math/Rectangle;

.field public dailyQuestManager:Lcom/prineside/tdi2/managers/DailyQuestManager;

.field public debugManager:Lcom/prineside/tdi2/managers/DebugManager;

.field public defaultSmallFuturaFont:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

.field public e:Z

.field public enemyManager:Lcom/prineside/tdi2/managers/EnemyManager;

.field public explosionManager:Lcom/prineside/tdi2/managers/ExplosionManager;

.field public f:J

.field public final g:Lcom/badlogic/gdx/utils/DelayedRemovalArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/DelayedRemovalArray<",
            "Lcom/prineside/tdi2/Game$GameListener;",
            ">;"
        }
    .end annotation
.end field

.field public gameSyncLoader:Lcom/prineside/tdi2/utils/GameSyncLoader;

.field public gameValueManager:Lcom/prineside/tdi2/managers/GameValueManager;

.field public gateManager:Lcom/prineside/tdi2/managers/GateManager;

.field public final h:Lcom/badlogic/gdx/utils/DelayedRemovalArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/DelayedRemovalArray<",
            "Lcom/prineside/tdi2/Game$ScreenResizeListener;",
            ">;"
        }
    .end annotation
.end field

.field public itemManager:Lcom/prineside/tdi2/managers/ItemManager;

.field public j:Ljava/lang/Thread;

.field public leaderBoardManager:Lcom/prineside/tdi2/managers/LeaderBoardManager;

.field public localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

.field public final managers:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/Manager;",
            ">;"
        }
    .end annotation
.end field

.field public mapManager:Lcom/prineside/tdi2/managers/MapManager;

.field public minerManager:Lcom/prineside/tdi2/managers/MinerManager;

.field public modifierManager:Lcom/prineside/tdi2/managers/ModifierManager;

.field public musicManager:Lcom/prineside/tdi2/managers/MusicManager;

.field public networkManager:Lcom/prineside/tdi2/managers/NetworkManager;

.field public preferencesManager:Lcom/prineside/tdi2/managers/PreferencesManager;

.field public progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

.field public projectileManager:Lcom/prineside/tdi2/managers/ProjectileManager;

.field public purchaseManager:Lcom/prineside/tdi2/managers/PurchaseManager;

.field public ratingManager:Lcom/prineside/tdi2/managers/RatingManager;

.field public renderingManager:Lcom/prineside/tdi2/managers/RenderingManager;

.field public replayManager:Lcom/prineside/tdi2/managers/ReplayManager;

.field public researchManager:Lcom/prineside/tdi2/managers/ResearchManager;

.field public resourceManager:Lcom/prineside/tdi2/managers/ResourceManager;

.field public screenManager:Lcom/prineside/tdi2/managers/ScreenManager;

.field public scriptManager:Lcom/prineside/tdi2/managers/ScriptManager;

.field public secretCodeManager:Lcom/prineside/tdi2/managers/SecretCodeManager;

.field public settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

.field public shapeManager:Lcom/prineside/tdi2/managers/ShapeManager;

.field public soundManager:Lcom/prineside/tdi2/managers/SoundManager;

.field public statisticsManager:Lcom/prineside/tdi2/managers/StatisticsManager;

.field public tileManager:Lcom/prineside/tdi2/managers/TileManager;

.field public towerManager:Lcom/prineside/tdi2/managers/TowerManager;

.field public towerStatManager:Lcom/prineside/tdi2/managers/TowerStatManager;

.field public triggeredActionManager:Lcom/prineside/tdi2/managers/TriggeredActionManager;

.field public trophyManager:Lcom/prineside/tdi2/managers/TrophyManager;

.field public uiManager:Lcom/prineside/tdi2/managers/UiManager;

.field public unitManager:Lcom/prineside/tdi2/managers/UnitManager;

.field public userMapManager:Lcom/prineside/tdi2/managers/UserMapManager;

.field public waveManager:Lcom/prineside/tdi2/managers/WaveManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    sput-wide v0, Lcom/prineside/tdi2/Game;->k:J

    return-void
.end method

.method public constructor <init>(Lcom/prineside/tdi2/ActionResolver;)V
    .locals 4

    invoke-direct {p0}, Lcom/badlogic/gdx/Game;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(ZI)V

    iput-object v0, p0, Lcom/prineside/tdi2/Game;->managers:Lcom/badlogic/gdx/utils/Array;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prineside/tdi2/Game;->c:Z

    new-instance v2, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v2}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    iput-object v2, p0, Lcom/prineside/tdi2/Game;->d:Lcom/badlogic/gdx/math/Rectangle;

    iput-boolean v0, p0, Lcom/prineside/tdi2/Game;->e:Z

    new-instance v2, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const-class v3, Lcom/prineside/tdi2/Game$GameListener;

    invoke-direct {v2, v0, v1, v3}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;-><init>(ZILjava/lang/Class;)V

    iput-object v2, p0, Lcom/prineside/tdi2/Game;->g:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    new-instance v2, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const-class v3, Lcom/prineside/tdi2/Game$ScreenResizeListener;

    invoke-direct {v2, v0, v1, v3}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;-><init>(ZILjava/lang/Class;)V

    iput-object v2, p0, Lcom/prineside/tdi2/Game;->h:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    sput-object p0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    new-instance v0, Lcom/prineside/tdi2/Registry;

    invoke-direct {v0}, Lcom/prineside/tdi2/Registry;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/Game;->r:Lcom/prineside/tdi2/Registry;

    iput-object p1, p0, Lcom/prineside/tdi2/Game;->actionResolver:Lcom/prineside/tdi2/ActionResolver;

    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/Game;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/prineside/tdi2/Game;->e:Z

    return p1
.end method

.method public static synthetic b(Lcom/prineside/tdi2/Game;)Lcom/badlogic/gdx/utils/DelayedRemovalArray;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/Game;->g:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    return-object p0
.end method

.method public static checkConfiguredForProduction()V
    .locals 2

    new-instance v0, Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>()V

    const-string v1, "                  Production checklist:\n"

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    return-void
.end method

.method public static exit()V
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->exit()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    :goto_0
    return-void
.end method

.method public static getFreeHeapSpaceSize()J
    .locals 6

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v4

    sub-long/2addr v2, v4

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public static getRealTickCount()J
    .locals 4

    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    sget-wide v2, Lcom/prineside/tdi2/Game;->k:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public static getTimestampMillis()J
    .locals 2

    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getTimestampSeconds()I
    .locals 4

    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method


# virtual methods
.method public addListener(Lcom/prineside/tdi2/Game$GameListener;)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/Game;->g:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/Array;->contains(Ljava/lang/Object;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/Game;->g:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "listener is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addScreenResizeListener(Lcom/prineside/tdi2/Game$ScreenResizeListener;)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/Game;->h:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/Array;->contains(Ljava/lang/Object;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/Game;->h:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public assertInMainThread()V
    .locals 3

    invoke-virtual {p0}, Lcom/prineside/tdi2/Game;->isInMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Must be called in a main thread, called from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " instead"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public create()V
    .locals 10

    invoke-static {}, Lcom/prineside/tdi2/Game;->checkConfiguredForProduction()V

    invoke-static {}, Lcom/prineside/tdi2/Game;->getTimestampMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/prineside/tdi2/Game;->f:J

    sget-object v0, Lcom/prineside/tdi2/Game;->r:Lcom/prineside/tdi2/Registry;

    invoke-virtual {v0}, Lcom/prineside/tdi2/Registry;->reload()V

    invoke-static {}, Lcom/prineside/tdi2/Game;->getTimestampMillis()J

    move-result-wide v0

    sget-object v2, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v2}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    sget-object v2, Lcom/badlogic/gdx/Application$ApplicationType;->Android:Lcom/badlogic/gdx/Application$ApplicationType;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iput-object v2, p0, Lcom/prineside/tdi2/Game;->j:Ljava/lang/Thread;

    const-string v3, "LibGDX rendering thread"

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/prineside/tdi2/Game;->j:Ljava/lang/Thread;

    iget-object v3, p0, Lcom/prineside/tdi2/Game;->actionResolver:Lcom/prineside/tdi2/ActionResolver;

    invoke-static {v2, v3}, Lcom/prineside/tdi2/Logger;->handleThreadExceptions(Ljava/lang/Thread;Lcom/prineside/tdi2/ActionResolver;)V

    invoke-static {}, Lcom/prineside/tdi2/Config;->isHeadless()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    new-instance v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    sget-object v4, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v5, "resourcepacks/default/futura.fnt"

    invoke-interface {v4, v5}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    new-instance v5, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    new-instance v6, Lcom/badlogic/gdx/graphics/Texture;

    sget-object v7, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v8, "resourcepacks/default/futura.png"

    invoke-interface {v7, v8}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v7

    sget-object v8, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA4444:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {v6, v7, v8, v3}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)V

    invoke-direct {v5, v6}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    invoke-direct {v2, v4, v5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    iput-object v2, p0, Lcom/prineside/tdi2/Game;->defaultSmallFuturaFont:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getRegion()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v2

    sget-object v4, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-virtual {v2, v4, v4}, Lcom/badlogic/gdx/graphics/GLTexture;->setFilter(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    iget-object v2, p0, Lcom/prineside/tdi2/Game;->defaultSmallFuturaFont:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v2

    const/high16 v4, 0x3f400000    # 0.75f

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    :cond_0
    sget-object v2, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/4 v4, 0x4

    const/4 v5, 0x1

    invoke-interface {v2, v4, v5}, Lcom/badlogic/gdx/Input;->setCatchKey(IZ)V

    iget-object v2, p0, Lcom/prineside/tdi2/Game;->actionResolver:Lcom/prineside/tdi2/ActionResolver;

    invoke-interface {v2}, Lcom/prineside/tdi2/ActionResolver;->getDeviceInfo()Lcom/badlogic/gdx/utils/ObjectMap;

    move-result-object v2

    const-string v6, "id"

    invoke-virtual {v2, v6}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v6, Lcom/prineside/tdi2/managers/PreferencesManager;

    invoke-direct {v6, v2}, Lcom/prineside/tdi2/managers/PreferencesManager;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/prineside/tdi2/Game;->preferencesManager:Lcom/prineside/tdi2/managers/PreferencesManager;

    iget-object v2, p0, Lcom/prineside/tdi2/Game;->managers:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v6}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    new-instance v2, Lcom/prineside/tdi2/managers/AuthManager;

    invoke-direct {v2}, Lcom/prineside/tdi2/managers/AuthManager;-><init>()V

    iput-object v2, p0, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    iget-object v6, p0, Lcom/prineside/tdi2/Game;->managers:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v6, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    new-instance v2, Lcom/prineside/tdi2/managers/ScreenManager;

    invoke-direct {v2}, Lcom/prineside/tdi2/managers/ScreenManager;-><init>()V

    iput-object v2, p0, Lcom/prineside/tdi2/Game;->screenManager:Lcom/prineside/tdi2/managers/ScreenManager;

    iget-object v6, p0, Lcom/prineside/tdi2/Game;->managers:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v6, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    const/4 v2, 0x3

    invoke-static {}, Lcom/prineside/tdi2/Config;->isHeadless()Z

    move-result v6

    if-nez v6, :cond_1

    new-instance v2, Lcom/prineside/tdi2/managers/RenderingManager;

    invoke-direct {v2}, Lcom/prineside/tdi2/managers/RenderingManager;-><init>()V

    iput-object v2, p0, Lcom/prineside/tdi2/Game;->renderingManager:Lcom/prineside/tdi2/managers/RenderingManager;

    iget-object v6, p0, Lcom/prineside/tdi2/Game;->managers:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v6, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 v4, 0x3

    :goto_0
    sget-object v2, Lcom/prineside/tdi2/Config;->NOTIFICATION_IDS:[I

    array-length v6, v2

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_2

    aget v8, v2, v7

    iget-object v9, p0, Lcom/prineside/tdi2/Game;->actionResolver:Lcom/prineside/tdi2/ActionResolver;

    invoke-interface {v9, v8}, Lcom/prineside/tdi2/ActionResolver;->clearNotification(I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    new-instance v2, Lcom/prineside/tdi2/utils/GameSyncLoader;

    invoke-direct {v2}, Lcom/prineside/tdi2/utils/GameSyncLoader;-><init>()V

    iput-object v2, p0, Lcom/prineside/tdi2/Game;->gameSyncLoader:Lcom/prineside/tdi2/utils/GameSyncLoader;

    new-instance v6, Lcom/prineside/tdi2/utils/GameSyncLoader$Task;

    new-instance v7, Lcom/prineside/tdi2/Game$2;

    invoke-direct {v7, p0}, Lcom/prineside/tdi2/Game$2;-><init>(Lcom/prineside/tdi2/Game;)V

    const-string v8, "Initialization"

    invoke-direct {v6, v8, v7}, Lcom/prineside/tdi2/utils/GameSyncLoader$Task;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v6}, Lcom/prineside/tdi2/utils/GameSyncLoader;->addTask(Lcom/prineside/tdi2/utils/GameSyncLoader$Task;)V

    iget-object v2, p0, Lcom/prineside/tdi2/Game;->gameSyncLoader:Lcom/prineside/tdi2/utils/GameSyncLoader;

    new-instance v6, Lcom/prineside/tdi2/utils/GameSyncLoader$Task;

    new-instance v7, Lcom/prineside/tdi2/Game$3;

    invoke-direct {v7, p0}, Lcom/prineside/tdi2/Game$3;-><init>(Lcom/prineside/tdi2/Game;)V

    const-string v8, "Settings"

    invoke-direct {v6, v8, v7}, Lcom/prineside/tdi2/utils/GameSyncLoader$Task;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v6}, Lcom/prineside/tdi2/utils/GameSyncLoader;->addTask(Lcom/prineside/tdi2/utils/GameSyncLoader$Task;)V

    add-int/2addr v4, v5

    invoke-static {}, Lcom/prineside/tdi2/Config;->isHeadless()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/prineside/tdi2/Game;->gameSyncLoader:Lcom/prineside/tdi2/utils/GameSyncLoader;

    new-instance v6, Lcom/prineside/tdi2/utils/GameSyncLoader$Task;

    new-instance v7, Lcom/prineside/tdi2/Game$4;

    invoke-direct {v7, p0}, Lcom/prineside/tdi2/Game$4;-><init>(Lcom/prineside/tdi2/Game;)V

    const-string v8, "Assets"

    invoke-direct {v6, v8, v7}, Lcom/prineside/tdi2/utils/GameSyncLoader$Task;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v6}, Lcom/prineside/tdi2/utils/GameSyncLoader;->addTask(Lcom/prineside/tdi2/utils/GameSyncLoader$Task;)V

    add-int/lit8 v4, v4, 0x1

    :cond_3
    invoke-static {}, Lcom/prineside/tdi2/Config;->isHeadless()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/prineside/tdi2/Game;->gameSyncLoader:Lcom/prineside/tdi2/utils/GameSyncLoader;

    new-instance v6, Lcom/prineside/tdi2/utils/GameSyncLoader$Task;

    new-instance v7, Lcom/prineside/tdi2/Game$5;

    invoke-direct {v7, p0}, Lcom/prineside/tdi2/Game$5;-><init>(Lcom/prineside/tdi2/Game;)V

    const-string v8, "XM music"

    invoke-direct {v6, v8, v7}, Lcom/prineside/tdi2/utils/GameSyncLoader$Task;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v6}, Lcom/prineside/tdi2/utils/GameSyncLoader;->addTask(Lcom/prineside/tdi2/utils/GameSyncLoader$Task;)V

    add-int/lit8 v4, v4, 0x1

    :cond_4
    iget-object v2, p0, Lcom/prineside/tdi2/Game;->gameSyncLoader:Lcom/prineside/tdi2/utils/GameSyncLoader;

    new-instance v6, Lcom/prineside/tdi2/utils/GameSyncLoader$Task;

    new-instance v7, Lcom/prineside/tdi2/Game$6;

    invoke-direct {v7, p0}, Lcom/prineside/tdi2/Game$6;-><init>(Lcom/prineside/tdi2/Game;)V

    const-string v8, "Game values"

    invoke-direct {v6, v8, v7}, Lcom/prineside/tdi2/utils/GameSyncLoader$Task;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v6}, Lcom/prineside/tdi2/utils/GameSyncLoader;->addTask(Lcom/prineside/tdi2/utils/GameSyncLoader$Task;)V

    add-int/2addr v4, v5

    iget-object v2, p0, Lcom/prineside/tdi2/Game;->gameSyncLoader:Lcom/prineside/tdi2/utils/GameSyncLoader;

    new-instance v6, Lcom/prineside/tdi2/utils/GameSyncLoader$Task;

    new-instance v7, Lcom/prineside/tdi2/Game$7;

    invoke-direct {v7, p0}, Lcom/prineside/tdi2/Game$7;-><init>(Lcom/prineside/tdi2/Game;)V

    const-string v8, "Achievements"

    invoke-direct {v6, v8, v7}, Lcom/prineside/tdi2/utils/GameSyncLoader$Task;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v6}, Lcom/prineside/tdi2/utils/GameSyncLoader;->addTask(Lcom/prineside/tdi2/utils/GameSyncLoader$Task;)V

    add-int/2addr v4, v5

    iget-object v2, p0, Lcom/prineside/tdi2/Game;->gameSyncLoader:Lcom/prineside/tdi2/utils/GameSyncLoader;

    new-instance v6, Lcom/prineside/tdi2/utils/GameSyncLoader$Task;

    new-instance v7, Lcom/prineside/tdi2/Game$8;

    invoke-direct {v7, p0}, Lcom/prineside/tdi2/Game$8;-><init>(Lcom/prineside/tdi2/Game;)V

    const-string v8, "Abilities"

    invoke-direct {v6, v8, v7}, Lcom/prineside/tdi2/utils/GameSyncLoader$Task;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v6}, Lcom/prineside/tdi2/utils/GameSyncLoader;->addTask(Lcom/prineside/tdi2/utils/GameSyncLoader$Task;)V

    add-int/2addr v4, v5

    iget-object v2, p0, Lcom/prineside/tdi2/Game;->gameSyncLoader:Lcom/prineside/tdi2/utils/GameSyncLoader;

    new-instance v6, Lcom/prineside/tdi2/utils/GameSyncLoader$Task;

    new-instance v7, Lcom/prineside/tdi2/Game$9;

    invoke-direct {v7, p0}, Lcom/prineside/tdi2/Game$9;-><init>(Lcom/prineside/tdi2/Game;)V

    const-string v8, "Statistics"

    invoke-direct {v6, v8, v7}, Lcom/prineside/tdi2/utils/GameSyncLoader$Task;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v6}, Lcom/prineside/tdi2/utils/GameSyncLoader;->addTask(Lcom/prineside/tdi2/utils/GameSyncLoader$Task;)V

    add-int/2addr v4, v5

    iget-object v2, p0, Lcom/prineside/tdi2/Game;->gameSyncLoader:Lcom/prineside/tdi2/utils/GameSyncLoader;

    new-instance v6, Lcom/prineside/tdi2/utils/GameSyncLoader$Task;

    new-instance v7, Lcom/prineside/tdi2/Game$10;

    invoke-direct {v7, p0}, Lcom/prineside/tdi2/Game$10;-><init>(Lcom/prineside/tdi2/Game;)V

    const-string v8, "Progress"

    invoke-direct {v6, v8, v7}, Lcom/prineside/tdi2/utils/GameSyncLoader$Task;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v6}, Lcom/prineside/tdi2/utils/GameSyncLoader;->addTask(Lcom/prineside/tdi2/utils/GameSyncLoader$Task;)V

    add-int/2addr v4, v5

    iget-object v2, p0, Lcom/prineside/tdi2/Game;->gameSyncLoader:Lcom/prineside/tdi2/utils/GameSyncLoader;

    new-instance v6, Lcom/prineside/tdi2/utils/GameSyncLoader$Task;

    new-instance v7, Lcom/prineside/tdi2/Game$11;

    invoke-direct {v7, p0}, Lcom/prineside/tdi2/Game$11;-><init>(Lcom/prineside/tdi2/Game;)V

    const-string v8, "Replays"

    invoke-direct {v6, v8, v7}, Lcom/prineside/tdi2/utils/GameSyncLoader$Task;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v6}, Lcom/prineside/tdi2/utils/GameSyncLoader;->addTask(Lcom/prineside/tdi2/utils/GameSyncLoader$Task;)V

    add-int/2addr v4, v5

    iget-object v2, p0, Lcom/prineside/tdi2/Game;->gameSyncLoader:Lcom/prineside/tdi2/utils/GameSyncLoader;

    new-instance v6, Lcom/prineside/tdi2/utils/GameSyncLoader$Task;

    new-instance v7, Lcom/prineside/tdi2/Game$12;

    invoke-direct {v7, p0}, Lcom/prineside/tdi2/Game$12;-><init>(Lcom/prineside/tdi2/Game;)V

    const-string v8, "Leader boards"

    invoke-direct {v6, v8, v7}, Lcom/prineside/tdi2/utils/GameSyncLoader$Task;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v6}, Lcom/prineside/tdi2/utils/GameSyncLoader;->addTask(Lcom/prineside/tdi2/utils/GameSyncLoader$Task;)V

    add-int/2addr v4, v5

    iget-object v2, p0, Lcom/prineside/tdi2/Game;->gameSyncLoader:Lcom/prineside/tdi2/utils/GameSyncLoader;

    new-instance v6, Lcom/prineside/tdi2/utils/GameSyncLoader$Task;

    new-instance v7, Lcom/prineside/tdi2/Game$13;

    invoke-direct {v7, p0}, Lcom/prineside/tdi2/Game$13;-><init>(Lcom/prineside/tdi2/Game;)V

    const-string v8, "Maps"

    invoke-direct {v6, v8, v7}, Lcom/prineside/tdi2/utils/GameSyncLoader$Task;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v6}, Lcom/prineside/tdi2/utils/GameSyncLoader;->addTask(Lcom/prineside/tdi2/utils/GameSyncLoader$Task;)V

    add-int/2addr v4, v5

    iget-object v2, p0, Lcom/prineside/tdi2/Game;->gameSyncLoader:Lcom/prineside/tdi2/utils/GameSyncLoader;

    new-instance v6, Lcom/prineside/tdi2/utils/GameSyncLoader$Task;

    new-instance v7, Lcom/prineside/tdi2/Game$14;

    invoke-direct {v7, p0}, Lcom/prineside/tdi2/Game$14;-><init>(Lcom/prineside/tdi2/Game;)V

    const-string v8, "Projectiles"

    invoke-direct {v6, v8, v7}, Lcom/prineside/tdi2/utils/GameSyncLoader$Task;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v6}, Lcom/prineside/tdi2/utils/GameSyncLoader;->addTask(Lcom/prineside/tdi2/utils/GameSyncLoader$Task;)V

    add-int/2addr v4, v5

    iget-object v2, p0, Lcom/prineside/tdi2/Game;->gameSyncLoader:Lcom/prineside/tdi2/utils/GameSyncLoader;

    new-instance v6, Lcom/prineside/tdi2/utils/GameSyncLoader$Task;

    new-instance v7, Lcom/prineside/tdi2/Game$15;

    invoke-direct {v7, p0}, Lcom/prineside/tdi2/Game$15;-><init>(Lcom/prineside/tdi2/Game;)V

    const-string v8, "Enemies"

    invoke-direct {v6, v8, v7}, Lcom/prineside/tdi2/utils/GameSyncLoader$Task;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v6}, Lcom/prineside/tdi2/utils/GameSyncLoader;->addTask(Lcom/prineside/tdi2/utils/GameSyncLoader$Task;)V

    add-int/2addr v4, v5

    iget-object v2, p0, Lcom/prineside/tdi2/Game;->gameSyncLoader:Lcom/prineside/tdi2/utils/GameSyncLoader;

    new-instance v6, Lcom/prineside/tdi2/utils/GameSyncLoader$Task;

    new-instance v7, Lcom/prineside/tdi2/Game$16;

    invoke-direct {v7, p0}, Lcom/prineside/tdi2/Game$16;-><init>(Lcom/prineside/tdi2/Game;)V

    const-string v8, "Units"

    invoke-direct {v6, v8, v7}, Lcom/prineside/tdi2/utils/GameSyncLoader$Task;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v6}, Lcom/prineside/tdi2/utils/GameSyncLoader;->addTask(Lcom/prineside/tdi2/utils/GameSyncLoader$Task;)V

    add-int/2addr v4, v5

    iget-object v2, p0, Lcom/prineside/tdi2/Game;->gameSyncLoader:Lcom/prineside/tdi2/utils/GameSyncLoader;

    new-instance v6, Lcom/prineside/tdi2/utils/GameSyncLoader$Task;

    new-instance v7, Lcom/prineside/tdi2/Game$17;

    invoke-direct {v7, p0}, Lcom/prineside/tdi2/Game$17;-><init>(Lcom/prineside/tdi2/Game;)V

    const-string v8, "Explosions"

    invoke-direct {v6, v8, v7}, Lcom/prineside/tdi2/utils/GameSyncLoader$Task;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v6}, Lcom/prineside/tdi2/utils/GameSyncLoader;->addTask(Lcom/prineside/tdi2/utils/GameSyncLoader$Task;)V

    add-int/2addr v4, v5

    iget-object v2, p0, Lcom/prineside/tdi2/Game;->gameSyncLoader:Lcom/prineside/tdi2/utils/GameSyncLoader;

    new-instance v6, Lcom/prineside/tdi2/utils/GameSyncLoader$Task;

    new-instance v7, Lcom/prineside/tdi2/Game$18;

    invoke-direct {v7, p0}, Lcom/prineside/tdi2/Game$18;-><init>(Lcom/prineside/tdi2/Game;)V

    const-string v8, "Sounds"

    invoke-direct {v6, v8, v7}, Lcom/prineside/tdi2/utils/GameSyncLoader$Task;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v6}, Lcom/prineside/tdi2/utils/GameSyncLoader;->addTask(Lcom/prineside/tdi2/utils/GameSyncLoader$Task;)V

    add-int/2addr v4, v5

    invoke-static {}, Lcom/prineside/tdi2/Config;->isHeadless()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/prineside/tdi2/Game;->gameSyncLoader:Lcom/prineside/tdi2/utils/GameSyncLoader;

    new-instance v6, Lcom/prineside/tdi2/utils/GameSyncLoader$Task;

    new-instance v7, Lcom/prineside/tdi2/Game$19;

    invoke-direct {v7, p0}, Lcom/prineside/tdi2/Game$19;-><init>(Lcom/prineside/tdi2/Game;)V

    const-string v8, "Shapes"

    invoke-direct {v6, v8, v7}, Lcom/prineside/tdi2/utils/GameSyncLoader$Task;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v6}, Lcom/prineside/tdi2/utils/GameSyncLoader;->addTask(Lcom/prineside/tdi2/utils/GameSyncLoader$Task;)V

    add-int/lit8 v4, v4, 0x1

    :cond_5
    iget-object v2, p0, Lcom/prineside/tdi2/Game;->gameSyncLoader:Lcom/prineside/tdi2/utils/GameSyncLoader;

    new-instance v6, Lcom/prineside/tdi2/utils/GameSyncLoader$Task;

    new-instance v7, Lcom/prineside/tdi2/Game$20;

    invoke-direct {v7, p0}, Lcom/prineside/tdi2/Game$20;-><init>(Lcom/prineside/tdi2/Game;)V

    const-string v8, "Towers"

    invoke-direct {v6, v8, v7}, Lcom/prineside/tdi2/utils/GameSyncLoader$Task;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v6}, Lcom/prineside/tdi2/utils/GameSyncLoader;->addTask(Lcom/prineside/tdi2/utils/GameSyncLoader$Task;)V

    add-int/2addr v4, v5

    iget-object v2, p0, Lcom/prineside/tdi2/Game;->gameSyncLoader:Lcom/prineside/tdi2/utils/GameSyncLoader;

    new-instance v6, Lcom/prineside/tdi2/utils/GameSyncLoader$Task;

    new-instance v7, Lcom/prineside/tdi2/Game$21;

    invoke-direct {v7, p0}, Lcom/prineside/tdi2/Game$21;-><init>(Lcom/prineside/tdi2/Game;)V

    const-string v8, "Miners"

    invoke-direct {v6, v8, v7}, Lcom/prineside/tdi2/utils/GameSyncLoader$Task;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v6}, Lcom/prineside/tdi2/utils/GameSyncLoader;->addTask(Lcom/prineside/tdi2/utils/GameSyncLoader$Task;)V

    add-int/2addr v4, v5

    iget-object v2, p0, Lcom/prineside/tdi2/Game;->gameSyncLoader:Lcom/prineside/tdi2/utils/GameSyncLoader;

    new-instance v6, Lcom/prineside/tdi2/utils/GameSyncLoader$Task;

    new-instance v7, Lcom/prineside/tdi2/Game$22;

    invoke-direct {v7, p0}, Lcom/prineside/tdi2/Game$22;-><init>(Lcom/prineside/tdi2/Game;)V

    const-string v8, "Modifiers"

    invoke-direct {v6, v8, v7}, Lcom/prineside/tdi2/utils/GameSyncLoader$Task;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v6}, Lcom/prineside/tdi2/utils/GameSyncLoader;->addTask(Lcom/prineside/tdi2/utils/GameSyncLoader$Task;)V

    add-int/2addr v4, v5

    iget-object v2, p0, Lcom/prineside/tdi2/Game;->gameSyncLoader:Lcom/prineside/tdi2/utils/GameSyncLoader;

    new-instance v6, Lcom/prineside/tdi2/utils/GameSyncLoader$Task;

    new-instance v7, Lcom/prineside/tdi2/Game$23;

    invoke-direct {v7, p0}, Lcom/prineside/tdi2/Game$23;-><init>(Lcom/prineside/tdi2/Game;)V

    const-string v8, "Network"

    invoke-direct {v6, v8, v7}, Lcom/prineside/tdi2/utils/GameSyncLoader$Task;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v6}, Lcom/prineside/tdi2/utils/GameSyncLoader;->addTask(Lcom/prineside/tdi2/utils/GameSyncLoader$Task;)V

    add-int/2addr v4, v5

    iget-object v2, p0, Lcom/prineside/tdi2/Game;->gameSyncLoader:Lcom/prineside/tdi2/utils/GameSyncLoader;

    new-instance v6, Lcom/prineside/tdi2/utils/GameSyncLoader$Task;

    new-instance v7, Lcom/prineside/tdi2/Game$24;

    invoke-direct {v7, p0}, Lcom/prineside/tdi2/Game$24;-><init>(Lcom/prineside/tdi2/Game;)V

    const-string v8, "Tiles"

    invoke-direct {v6, v8, v7}, Lcom/prineside/tdi2/utils/GameSyncLoader$Task;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v6}, Lcom/prineside/tdi2/utils/GameSyncLoader;->addTask(Lcom/prineside/tdi2/utils/GameSyncLoader$Task;)V

    add-int/2addr v4, v5

    iget-object v2, p0, Lcom/prineside/tdi2/Game;->gameSyncLoader:Lcom/prineside/tdi2/utils/GameSyncLoader;

    new-instance v6, Lcom/prineside/tdi2/utils/GameSyncLoader$Task;

    new-instance v7, Lcom/prineside/tdi2/Game$25;

    invoke-direct {v7, p0}, Lcom/prineside/tdi2/Game$25;-><init>(Lcom/prineside/tdi2/Game;)V

    const-string v8, "Gates"

    invoke-direct {v6, v8, v7}, Lcom/prineside/tdi2/utils/GameSyncLoader$Task;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v6}, Lcom/prineside/tdi2/utils/GameSyncLoader;->addTask(Lcom/prineside/tdi2/utils/GameSyncLoader$Task;)V

    add-int/2addr v4, v5

    iget-object v2, p0, Lcom/prineside/tdi2/Game;->gameSyncLoader:Lcom/prineside/tdi2/utils/GameSyncLoader;

    new-instance v6, Lcom/prineside/tdi2/utils/GameSyncLoader$Task;

    new-instance v7, Lcom/prineside/tdi2/Game$26;

    invoke-direct {v7, p0}, Lcom/prineside/tdi2/Game$26;-><init>(Lcom/prineside/tdi2/Game;)V

    const-string v8, "Locales"

    invoke-direct {v6, v8, v7}, Lcom/prineside/tdi2/utils/GameSyncLoader$Task;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v6}, Lcom/prineside/tdi2/utils/GameSyncLoader;->addTask(Lcom/prineside/tdi2/utils/GameSyncLoader$Task;)V

    add-int/2addr v4, v5

    invoke-static {}, Lcom/prineside/tdi2/Config;->isHeadless()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/prineside/tdi2/Game;->gameSyncLoader:Lcom/prineside/tdi2/utils/GameSyncLoader;

    new-instance v6, Lcom/prineside/tdi2/utils/GameSyncLoader$Task;

    new-instance v7, Lcom/prineside/tdi2/Game$27;

    invoke-direct {v7, p0}, Lcom/prineside/tdi2/Game$27;-><init>(Lcom/prineside/tdi2/Game;)V

    const-string v8, "Payments"

    invoke-direct {v6, v8, v7}, Lcom/prineside/tdi2/utils/GameSyncLoader$Task;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v6}, Lcom/prineside/tdi2/utils/GameSyncLoader;->addTask(Lcom/prineside/tdi2/utils/GameSyncLoader$Task;)V

    add-int/lit8 v4, v4, 0x1

    :cond_6
    iget-object v2, p0, Lcom/prineside/tdi2/Game;->gameSyncLoader:Lcom/prineside/tdi2/utils/GameSyncLoader;

    new-instance v6, Lcom/prineside/tdi2/utils/GameSyncLoader$Task;

    new-instance v7, Lcom/prineside/tdi2/Game$28;

    invoke-direct {v7, p0}, Lcom/prineside/tdi2/Game$28;-><init>(Lcom/prineside/tdi2/Game;)V

    const-string v8, "Items"

    invoke-direct {v6, v8, v7}, Lcom/prineside/tdi2/utils/GameSyncLoader$Task;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v6}, Lcom/prineside/tdi2/utils/GameSyncLoader;->addTask(Lcom/prineside/tdi2/utils/GameSyncLoader$Task;)V

    add-int/2addr v4, v5

    iget-object v2, p0, Lcom/prineside/tdi2/Game;->gameSyncLoader:Lcom/prineside/tdi2/utils/GameSyncLoader;

    new-instance v6, Lcom/prineside/tdi2/utils/GameSyncLoader$Task;

    new-instance v7, Lcom/prineside/tdi2/Game$29;

    invoke-direct {v7, p0}, Lcom/prineside/tdi2/Game$29;-><init>(Lcom/prineside/tdi2/Game;)V

    const-string v8, "Basic levels"

    invoke-direct {v6, v8, v7}, Lcom/prineside/tdi2/utils/GameSyncLoader$Task;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v6}, Lcom/prineside/tdi2/utils/GameSyncLoader;->addTask(Lcom/prineside/tdi2/utils/GameSyncLoader$Task;)V

    add-int/2addr v4, v5

    iget-object v2, p0, Lcom/prineside/tdi2/Game;->gameSyncLoader:Lcom/prineside/tdi2/utils/GameSyncLoader;

    new-instance v6, Lcom/prineside/tdi2/utils/GameSyncLoader$Task;

    new-instance v7, Lcom/prineside/tdi2/Game$30;

    invoke-direct {v7, p0}, Lcom/prineside/tdi2/Game$30;-><init>(Lcom/prineside/tdi2/Game;)V

    const-string v8, "Buffs"

    invoke-direct {v6, v8, v7}, Lcom/prineside/tdi2/utils/GameSyncLoader$Task;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v6}, Lcom/prineside/tdi2/utils/GameSyncLoader;->addTask(Lcom/prineside/tdi2/utils/GameSyncLoader$Task;)V

    add-int/2addr v4, v5

    iget-object v2, p0, Lcom/prineside/tdi2/Game;->gameSyncLoader:Lcom/prineside/tdi2/utils/GameSyncLoader;

    new-instance v6, Lcom/prineside/tdi2/utils/GameSyncLoader$Task;

    new-instance v7, Lcom/prineside/tdi2/Game$31;

    invoke-direct {v7, p0}, Lcom/prineside/tdi2/Game$31;-><init>(Lcom/prineside/tdi2/Game;)V

    const-string v8, "Custom maps"

    invoke-direct {v6, v8, v7}, Lcom/prineside/tdi2/utils/GameSyncLoader$Task;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v6}, Lcom/prineside/tdi2/utils/GameSyncLoader;->addTask(Lcom/prineside/tdi2/utils/GameSyncLoader$Task;)V

    add-int/2addr v4, v5

    iget-object v2, p0, Lcom/prineside/tdi2/Game;->gameSyncLoader:Lcom/prineside/tdi2/utils/GameSyncLoader;

    new-instance v6, Lcom/prineside/tdi2/utils/GameSyncLoader$Task;

    new-instance v7, Lcom/prineside/tdi2/Game$32;

    invoke-direct {v7, p0}, Lcom/prineside/tdi2/Game$32;-><init>(Lcom/prineside/tdi2/Game;)V

    const-string v8, "Researches"

    invoke-direct {v6, v8, v7}, Lcom/prineside/tdi2/utils/GameSyncLoader$Task;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v6}, Lcom/prineside/tdi2/utils/GameSyncLoader;->addTask(Lcom/prineside/tdi2/utils/GameSyncLoader$Task;)V

    add-int/2addr v4, v5

    iget-object v2, p0, Lcom/prineside/tdi2/Game;->gameSyncLoader:Lcom/prineside/tdi2/utils/GameSyncLoader;

    new-instance v6, Lcom/prineside/tdi2/utils/GameSyncLoader$Task;

    new-instance v7, Lcom/prineside/tdi2/Game$33;

    invoke-direct {v7, p0}, Lcom/prineside/tdi2/Game$33;-><init>(Lcom/prineside/tdi2/Game;)V

    const-string v8, "Triggered actions"

    invoke-direct {v6, v8, v7}, Lcom/prineside/tdi2/utils/GameSyncLoader$Task;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v6}, Lcom/prineside/tdi2/utils/GameSyncLoader;->addTask(Lcom/prineside/tdi2/utils/GameSyncLoader$Task;)V

    add-int/2addr v4, v5

    iget-object v2, p0, Lcom/prineside/tdi2/Game;->gameSyncLoader:Lcom/prineside/tdi2/utils/GameSyncLoader;

    new-instance v6, Lcom/prineside/tdi2/utils/GameSyncLoader$Task;

    new-instance v7, Lcom/prineside/tdi2/Game$34;

    invoke-direct {v7, p0}, Lcom/prineside/tdi2/Game$34;-><init>(Lcom/prineside/tdi2/Game;)V

    const-string v8, "Trophies"

    invoke-direct {v6, v8, v7}, Lcom/prineside/tdi2/utils/GameSyncLoader$Task;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v6}, Lcom/prineside/tdi2/utils/GameSyncLoader;->addTask(Lcom/prineside/tdi2/utils/GameSyncLoader$Task;)V

    add-int/2addr v4, v5

    iget-object v2, p0, Lcom/prineside/tdi2/Game;->gameSyncLoader:Lcom/prineside/tdi2/utils/GameSyncLoader;

    new-instance v6, Lcom/prineside/tdi2/utils/GameSyncLoader$Task;

    new-instance v7, Lcom/prineside/tdi2/Game$35;

    invoke-direct {v7, p0}, Lcom/prineside/tdi2/Game$35;-><init>(Lcom/prineside/tdi2/Game;)V

    const-string v8, "Daily quests"

    invoke-direct {v6, v8, v7}, Lcom/prineside/tdi2/utils/GameSyncLoader$Task;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v6}, Lcom/prineside/tdi2/utils/GameSyncLoader;->addTask(Lcom/prineside/tdi2/utils/GameSyncLoader$Task;)V

    add-int/2addr v4, v5

    iget-object v2, p0, Lcom/prineside/tdi2/Game;->gameSyncLoader:Lcom/prineside/tdi2/utils/GameSyncLoader;

    new-instance v6, Lcom/prineside/tdi2/utils/GameSyncLoader$Task;

    new-instance v7, Lcom/prineside/tdi2/Game$36;

    invoke-direct {v7, p0}, Lcom/prineside/tdi2/Game$36;-><init>(Lcom/prineside/tdi2/Game;)V

    const-string v8, "Resources"

    invoke-direct {v6, v8, v7}, Lcom/prineside/tdi2/utils/GameSyncLoader$Task;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v6}, Lcom/prineside/tdi2/utils/GameSyncLoader;->addTask(Lcom/prineside/tdi2/utils/GameSyncLoader$Task;)V

    add-int/2addr v4, v5

    iget-object v2, p0, Lcom/prineside/tdi2/Game;->gameSyncLoader:Lcom/prineside/tdi2/utils/GameSyncLoader;

    new-instance v6, Lcom/prineside/tdi2/utils/GameSyncLoader$Task;

    new-instance v7, Lcom/prineside/tdi2/Game$37;

    invoke-direct {v7, p0}, Lcom/prineside/tdi2/Game$37;-><init>(Lcom/prineside/tdi2/Game;)V

    const-string v8, "Secrets"

    invoke-direct {v6, v8, v7}, Lcom/prineside/tdi2/utils/GameSyncLoader$Task;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v6}, Lcom/prineside/tdi2/utils/GameSyncLoader;->addTask(Lcom/prineside/tdi2/utils/GameSyncLoader$Task;)V

    add-int/2addr v4, v5

    iget-object v2, p0, Lcom/prineside/tdi2/Game;->gameSyncLoader:Lcom/prineside/tdi2/utils/GameSyncLoader;

    new-instance v6, Lcom/prineside/tdi2/utils/GameSyncLoader$Task;

    new-instance v7, Lcom/prineside/tdi2/Game$38;

    invoke-direct {v7, p0}, Lcom/prineside/tdi2/Game$38;-><init>(Lcom/prineside/tdi2/Game;)V

    const-string v8, "Waves"

    invoke-direct {v6, v8, v7}, Lcom/prineside/tdi2/utils/GameSyncLoader$Task;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v6}, Lcom/prineside/tdi2/utils/GameSyncLoader;->addTask(Lcom/prineside/tdi2/utils/GameSyncLoader$Task;)V

    add-int/2addr v4, v5

    iget-object v2, p0, Lcom/prineside/tdi2/Game;->gameSyncLoader:Lcom/prineside/tdi2/utils/GameSyncLoader;

    new-instance v6, Lcom/prineside/tdi2/utils/GameSyncLoader$Task;

    new-instance v7, Lcom/prineside/tdi2/Game$39;

    invoke-direct {v7, p0}, Lcom/prineside/tdi2/Game$39;-><init>(Lcom/prineside/tdi2/Game;)V

    const-string v8, "Ratings"

    invoke-direct {v6, v8, v7}, Lcom/prineside/tdi2/utils/GameSyncLoader$Task;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v6}, Lcom/prineside/tdi2/utils/GameSyncLoader;->addTask(Lcom/prineside/tdi2/utils/GameSyncLoader$Task;)V

    add-int/2addr v4, v5

    iget-object v2, p0, Lcom/prineside/tdi2/Game;->gameSyncLoader:Lcom/prineside/tdi2/utils/GameSyncLoader;

    new-instance v6, Lcom/prineside/tdi2/utils/GameSyncLoader$Task;

    new-instance v7, Lcom/prineside/tdi2/Game$40;

    invoke-direct {v7, p0}, Lcom/prineside/tdi2/Game$40;-><init>(Lcom/prineside/tdi2/Game;)V

    const-string v8, "Tower stats"

    invoke-direct {v6, v8, v7}, Lcom/prineside/tdi2/utils/GameSyncLoader$Task;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v6}, Lcom/prineside/tdi2/utils/GameSyncLoader;->addTask(Lcom/prineside/tdi2/utils/GameSyncLoader$Task;)V

    add-int/2addr v4, v5

    invoke-static {}, Lcom/prineside/tdi2/Config;->isHeadless()Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/prineside/tdi2/Game;->gameSyncLoader:Lcom/prineside/tdi2/utils/GameSyncLoader;

    new-instance v6, Lcom/prineside/tdi2/utils/GameSyncLoader$Task;

    new-instance v7, Lcom/prineside/tdi2/Game$41;

    invoke-direct {v7, p0}, Lcom/prineside/tdi2/Game$41;-><init>(Lcom/prineside/tdi2/Game;)V

    const-string v8, "UI"

    invoke-direct {v6, v8, v7}, Lcom/prineside/tdi2/utils/GameSyncLoader$Task;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v6}, Lcom/prineside/tdi2/utils/GameSyncLoader;->addTask(Lcom/prineside/tdi2/utils/GameSyncLoader$Task;)V

    add-int/lit8 v4, v4, 0x1

    :cond_7
    iget-object v2, p0, Lcom/prineside/tdi2/Game;->gameSyncLoader:Lcom/prineside/tdi2/utils/GameSyncLoader;

    new-instance v6, Lcom/prineside/tdi2/utils/GameSyncLoader$Task;

    new-instance v7, Lcom/prineside/tdi2/Game$42;

    invoke-direct {v7, p0}, Lcom/prineside/tdi2/Game$42;-><init>(Lcom/prineside/tdi2/Game;)V

    const-string v8, "Debug"

    invoke-direct {v6, v8, v7}, Lcom/prineside/tdi2/utils/GameSyncLoader$Task;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v6}, Lcom/prineside/tdi2/utils/GameSyncLoader;->addTask(Lcom/prineside/tdi2/utils/GameSyncLoader$Task;)V

    add-int/2addr v4, v5

    iget-object v2, p0, Lcom/prineside/tdi2/Game;->gameSyncLoader:Lcom/prineside/tdi2/utils/GameSyncLoader;

    new-instance v6, Lcom/prineside/tdi2/utils/GameSyncLoader$Task;

    new-instance v7, Lcom/prineside/tdi2/Game$43;

    invoke-direct {v7, p0}, Lcom/prineside/tdi2/Game$43;-><init>(Lcom/prineside/tdi2/Game;)V

    const-string v8, "Scripts"

    invoke-direct {v6, v8, v7}, Lcom/prineside/tdi2/utils/GameSyncLoader$Task;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v6}, Lcom/prineside/tdi2/utils/GameSyncLoader;->addTask(Lcom/prineside/tdi2/utils/GameSyncLoader$Task;)V

    add-int/2addr v4, v5

    :goto_2
    if-ge v3, v4, :cond_8

    iget-object v2, p0, Lcom/prineside/tdi2/Game;->gameSyncLoader:Lcom/prineside/tdi2/utils/GameSyncLoader;

    new-instance v5, Lcom/prineside/tdi2/utils/GameSyncLoader$Task;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Setting up managers ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v8, Lcom/prineside/tdi2/Game$44;

    invoke-direct {v8, p0, v3}, Lcom/prineside/tdi2/Game$44;-><init>(Lcom/prineside/tdi2/Game;I)V

    invoke-direct {v5, v6, v8}, Lcom/prineside/tdi2/utils/GameSyncLoader$Task;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v5}, Lcom/prineside/tdi2/utils/GameSyncLoader;->addTask(Lcom/prineside/tdi2/utils/GameSyncLoader$Task;)V

    move v3, v7

    goto :goto_2

    :cond_8
    iget-object v2, p0, Lcom/prineside/tdi2/Game;->gameSyncLoader:Lcom/prineside/tdi2/utils/GameSyncLoader;

    new-instance v3, Lcom/prineside/tdi2/Game$47;

    invoke-direct {v3, p0, v0, v1}, Lcom/prineside/tdi2/Game$47;-><init>(Lcom/prineside/tdi2/Game;J)V

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/utils/GameSyncLoader;->addListener(Lcom/prineside/tdi2/utils/GameSyncLoader$SyncExecutionListener;)V

    iget-object v0, p0, Lcom/prineside/tdi2/Game;->g:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    iget-object v0, p0, Lcom/prineside/tdi2/Game;->g:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/Game$GameListener;

    invoke-interface {v1}, Lcom/prineside/tdi2/Game$GameListener;->gameStartedLoading()V

    goto :goto_3

    :cond_9
    iget-object v0, p0, Lcom/prineside/tdi2/Game;->g:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    return-void
.end method

.method public dispose()V
    .locals 2

    const-string v0, "Game"

    const-string v1, "Dispose"

    invoke-static {v0, v1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->actionResolver:Lcom/prineside/tdi2/ActionResolver;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/prineside/tdi2/ActionResolver;->onExit()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prineside/tdi2/Game;->b:Z

    invoke-super {p0}, Lcom/badlogic/gdx/Game;->dispose()V

    invoke-virtual {p0}, Lcom/prineside/tdi2/Game;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/Game;->managers:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/Manager;

    invoke-interface {v1}, Lcom/badlogic/gdx/utils/Disposable;->dispose()V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/prineside/tdi2/Logger;->dispose()V

    return-void
.end method

.method public getMillisTillGameStart()J
    .locals 4

    invoke-static {}, Lcom/prineside/tdi2/Game;->getTimestampMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/prineside/tdi2/Game;->f:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getVisibleDisplayFrame()Lcom/badlogic/gdx/math/Rectangle;
    .locals 4

    iget-boolean v0, p0, Lcom/prineside/tdi2/Game;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/Game;->d:Lcom/badlogic/gdx/math/Rectangle;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/Game;->d:Lcom/badlogic/gdx/math/Rectangle;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sget-object v2, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v2}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/badlogic/gdx/math/Rectangle;->set(FFFF)Lcom/badlogic/gdx/math/Rectangle;

    iget-object v0, p0, Lcom/prineside/tdi2/Game;->d:Lcom/badlogic/gdx/math/Rectangle;

    return-object v0
.end method

.method public isDisposed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/Game;->b:Z

    return v0
.end method

.method public isInMainThread()Z
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/Game;->j:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/Game;->j:Ljava/lang/Thread;

    const-string v1, "Game"

    if-nez v0, :cond_1

    sget-object v0, Lcom/prineside/tdi2/Logger$EntryType;->ERROR:Lcom/prineside/tdi2/Logger$EntryType;

    const-string v3, "isInMainThread - libgdxThread is null"

    invoke-static {v0, v1, v3}, Lcom/prineside/tdi2/Logger;->addToLog(Lcom/prineside/tdi2/Logger$EntryType;Ljava/lang/String;Ljava/lang/String;)Lcom/prineside/tdi2/Logger$LogEntry;

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return v2

    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "LibGDX rendering thread"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isInMainThread - current thread has correct name but libgdxThread not equals current thread (libgdxThread name:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/prineside/tdi2/Game;->j:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "). Overwriting libgdxThread with current"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/prineside/tdi2/Logger$EntryType;->ERROR:Lcom/prineside/tdi2/Logger$EntryType;

    invoke-static {v3, v1, v0}, Lcom/prineside/tdi2/Logger;->addToLog(Lcom/prineside/tdi2/Logger$EntryType;Ljava/lang/String;Ljava/lang/String;)Lcom/prineside/tdi2/Logger$LogEntry;

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/Game;->j:Ljava/lang/Thread;

    return v2

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public isLoaded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/Game;->e:Z

    return v0
.end method

.method public notifyVisibleDisplayFrameChanged(IIII)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prineside/tdi2/Game;->c:Z

    iget-object v0, p0, Lcom/prineside/tdi2/Game;->d:Lcom/badlogic/gdx/math/Rectangle;

    int-to-float p1, p1

    int-to-float p2, p2

    int-to-float p3, p3

    int-to-float p4, p4

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/math/Rectangle;->set(FFFF)Lcom/badlogic/gdx/math/Rectangle;

    iget-object p1, p0, Lcom/prineside/tdi2/Game;->h:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    iget-object p1, p0, Lcom/prineside/tdi2/Game;->h:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/prineside/tdi2/Game$ScreenResizeListener;

    invoke-interface {p2}, Lcom/prineside/tdi2/Game$ScreenResizeListener;->visibleDisplayFrameChanged()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/prineside/tdi2/Game;->h:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    return-void
.end method

.method public pause()V
    .locals 2

    invoke-super {p0}, Lcom/badlogic/gdx/Game;->pause()V

    const-string v0, "Game"

    const-string v1, "Paused"

    invoke-static {v0, v1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public removeListener(Lcom/prineside/tdi2/Game$GameListener;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/Game;->g:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->removeValue(Ljava/lang/Object;Z)Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "listener is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeScreenResizeListener(Lcom/prineside/tdi2/Game$ScreenResizeListener;)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/Game;->h:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->removeValue(Ljava/lang/Object;Z)Z

    return-void
.end method

.method public render()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/prineside/tdi2/Game;->g:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v2, :cond_0

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/Game$GameListener;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lcom/prineside/tdi2/Game$GameListener;->render()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v1, 0x8d

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Input;->isKeyJustPressed(I)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->isFullscreen()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->actionResolver:Lcom/prineside/tdi2/ActionResolver;

    invoke-interface {v0}, Lcom/prineside/tdi2/ActionResolver;->getInitConfigManager()Lcom/prineside/tdi2/ActionResolver$InitConfigManager;

    move-result-object v0

    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;->GRAPHICS_FS_WIDTH:Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ActionResolver$InitConfigManager;->get(Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;)I

    move-result v0

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->actionResolver:Lcom/prineside/tdi2/ActionResolver;

    invoke-interface {v1}, Lcom/prineside/tdi2/ActionResolver;->getInitConfigManager()Lcom/prineside/tdi2/ActionResolver$InitConfigManager;

    move-result-object v1

    sget-object v2, Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;->GRAPHICS_FS_HEIGHT:Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/ActionResolver$InitConfigManager;->get(Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/prineside/tdi2/managers/SettingsManager;->getBestFullscreenMode(II)Lcom/badlogic/gdx/Graphics$DisplayMode;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/Graphics;->setFullscreenMode(Lcom/badlogic/gdx/Graphics$DisplayMode;)Z

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    const/16 v1, 0x500

    const/16 v2, 0x2d0

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Graphics;->setWindowedMode(II)Z

    :cond_2
    :goto_1
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    invoke-virtual {v0}, Lcom/prineside/tdi2/Game;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/prineside/tdi2/managers/UiManager;->developerConsole:Lcom/prineside/tdi2/ui/shared/DeveloperConsole;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v1, 0x44

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Input;->isKeyJustPressed(I)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/UiManager;->developerConsole:Lcom/prineside/tdi2/ui/shared/DeveloperConsole;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->toggleVisible()V

    :cond_3
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getDeltaTime()F

    move-result v0

    float-to-double v1, v0

    invoke-static {v1, v2}, Lcom/prineside/tdi2/utils/PMath;->cachedLuaDouble1(D)Lcom/prineside/luaj/LuaDouble;

    move-result-object v1

    iget-boolean v2, p0, Lcom/prineside/tdi2/Game;->e:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/prineside/tdi2/Game;->scriptManager:Lcom/prineside/tdi2/managers/ScriptManager;

    if-eqz v2, :cond_4

    iget-object v2, v2, Lcom/prineside/tdi2/managers/ScriptManager;->global:Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;

    if-eqz v2, :cond_4

    const-string v3, "PreRender"

    invoke-virtual {v2, v3, v1}, Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;->triggerEvent(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)V

    :cond_4
    iget-object v2, p0, Lcom/prineside/tdi2/Game;->managers:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/prineside/tdi2/Manager;

    invoke-interface {v3, v0}, Lcom/prineside/tdi2/Manager;->preRender(F)V

    goto :goto_2

    :cond_5
    invoke-super {p0}, Lcom/badlogic/gdx/Game;->render()V

    iget-boolean v2, p0, Lcom/prineside/tdi2/Game;->e:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/prineside/tdi2/Game;->scriptManager:Lcom/prineside/tdi2/managers/ScriptManager;

    if-eqz v2, :cond_6

    iget-object v2, v2, Lcom/prineside/tdi2/managers/ScriptManager;->global:Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;

    if-eqz v2, :cond_6

    const-string v3, "Render"

    invoke-virtual {v2, v3, v1}, Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;->triggerEvent(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)V

    :cond_6
    iget-boolean v2, p0, Lcom/prineside/tdi2/Game;->e:Z

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/prineside/tdi2/Game;->managers:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/prineside/tdi2/Manager;

    invoke-interface {v3, v0}, Lcom/prineside/tdi2/Manager;->postRender(F)V

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lcom/prineside/tdi2/Game;->scriptManager:Lcom/prineside/tdi2/managers/ScriptManager;

    if-eqz v0, :cond_8

    iget-object v0, v0, Lcom/prineside/tdi2/managers/ScriptManager;->global:Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;

    if-eqz v0, :cond_8

    const-string v2, "PostRender"

    invoke-virtual {v0, v2, v1}, Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;->triggerEvent(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)V

    :cond_8
    return-void
.end method

.method public resize(II)V
    .locals 3

    if-lez p1, :cond_1

    if-lez p2, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/Game;->h:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/prineside/tdi2/Game;->h:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/prineside/tdi2/Game;->h:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/prineside/tdi2/Game$ScreenResizeListener;

    aget-object v2, v2, v0

    invoke-interface {v2, p1, p2}, Lcom/prineside/tdi2/Game$ScreenResizeListener;->resize(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/Game;->h:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/Game;->resize(II)V

    return-void
.end method

.method public resume()V
    .locals 2

    invoke-super {p0}, Lcom/badlogic/gdx/Game;->resume()V

    const-string v0, "Game"

    const-string v1, "Resumed"

    invoke-static {v0, v1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
