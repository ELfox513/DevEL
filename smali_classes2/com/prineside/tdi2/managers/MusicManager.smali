.class public abstract Lcom/prineside/tdi2/managers/MusicManager;
.super Lcom/prineside/tdi2/Manager$ManagerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/managers/MusicManager$MusicSource;,
        Lcom/prineside/tdi2/managers/MusicManager$MusicSourceType;,
        Lcom/prineside/tdi2/managers/MusicManager$ModuleCacheConfig;,
        Lcom/prineside/tdi2/managers/MusicManager$Serializer;
    }
.end annotation


# static fields
.field public static final DEFAULT_VOLUME_CHANGE_SPEED:F = 2.0f

.field public static final v:Lcom/badlogic/gdx/graphics/Color;

.field public static final w:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/managers/MusicManager$ModuleCacheConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final x:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/prineside/tdi2/managers/MusicManager$ModuleCacheConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:F

.field public b:F

.field public d:F

.field public k:Z

.field public menuThemeSources:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/managers/MusicManager$MusicSource;",
            ">;"
        }
    .end annotation
.end field

.field public p:Z

.field public q:F

.field public r:Z

.field public s:F

.field public final t:Lcom/badlogic/gdx/utils/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/IntMap<",
            "Ljava/lang/ref/SoftReference<",
            "Lcom/prineside/tdi2/managers/MusicManager$ModuleCacheConfig;",
            ">;>;"
        }
    .end annotation
.end field

.field public thumbsUpMusicHashes:Lcom/badlogic/gdx/utils/IntArray;

.field public final u:Lcom/badlogic/gdx/utils/IntIntMap;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/4 v1, 0x0

    const v2, 0x3f47ae14    # 0.78f

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lcom/prineside/tdi2/managers/MusicManager;->v:Lcom/badlogic/gdx/graphics/Color;

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/prineside/tdi2/managers/MusicManager$ModuleCacheConfig;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/prineside/tdi2/managers/MusicManager;->w:Lcom/badlogic/gdx/utils/Array;

    new-instance v0, Lcom/prineside/tdi2/managers/MusicManager$1;

    invoke-direct {v0}, Lcom/prineside/tdi2/managers/MusicManager$1;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/managers/MusicManager;->x:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/prineside/tdi2/Manager$ManagerAdapter;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/prineside/tdi2/managers/MusicManager;->a:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/prineside/tdi2/managers/MusicManager;->b:F

    iput v0, p0, Lcom/prineside/tdi2/managers/MusicManager;->d:F

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/prineside/tdi2/managers/MusicManager$MusicSource;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(ZILjava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/managers/MusicManager;->menuThemeSources:Lcom/badlogic/gdx/utils/Array;

    new-instance v0, Lcom/badlogic/gdx/utils/IntArray;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntArray;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/managers/MusicManager;->thumbsUpMusicHashes:Lcom/badlogic/gdx/utils/IntArray;

    new-instance v0, Lcom/badlogic/gdx/utils/IntMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntMap;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/managers/MusicManager;->t:Lcom/badlogic/gdx/utils/IntMap;

    new-instance v0, Lcom/badlogic/gdx/utils/IntIntMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntIntMap;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/managers/MusicManager;->u:Lcom/badlogic/gdx/utils/IntIntMap;

    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/managers/MusicManager;)V
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/MusicManager;->reload()V

    return-void
.end method

.method public static synthetic b(Lcom/prineside/tdi2/managers/MusicManager;)F
    .locals 0

    iget p0, p0, Lcom/prineside/tdi2/managers/MusicManager;->b:F

    return p0
.end method

.method public static createSelfSetuppingDummy()Lcom/prineside/tdi2/managers/MusicManager;
    .locals 1

    new-instance v0, Lcom/prineside/tdi2/managers/MusicManager$5;

    invoke-direct {v0}, Lcom/prineside/tdi2/managers/MusicManager$5;-><init>()V

    return-object v0
.end method


# virtual methods
.method public addMenuMusicSource(Lcom/prineside/tdi2/managers/MusicManager$MusicSource;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/managers/MusicManager;->isMenuMusicSourceEnabled(Lcom/prineside/tdi2/managers/MusicManager$MusicSource;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/managers/MusicManager;->menuThemeSources:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/MusicManager;->menuThemeSources:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public c()F
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->MUSIC_VOLUME:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/SettingsManager;->getCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public continuePlayingMenuMusicTrack()V
    .locals 4

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/SettingsManager;->isMusicEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/MusicManager;->stopMusic()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/MusicManager;->getCurrentlyPlayingMenuThemeSource()Lcom/prineside/tdi2/managers/MusicManager$MusicSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/MusicManager$MusicSource;->getModule()Lcom/prineside/tdi2/ibxm/Module;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/AssetManager;->getMenuXmSoundTrack()Lcom/prineside/tdi2/ibxm/Module;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/MusicManager;->stopMusic()V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/MusicManager;->getPlayingMusic()Lcom/prineside/tdi2/ibxm/Module;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/MusicManager;->getPlayingMusic()Lcom/prineside/tdi2/ibxm/Module;

    move-result-object v1

    iget-object v1, v1, Lcom/prineside/tdi2/ibxm/Module;->songName:Ljava/lang/String;

    iget-object v3, v0, Lcom/prineside/tdi2/ibxm/Module;->songName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    invoke-virtual {p0, v0, v2}, Lcom/prineside/tdi2/managers/MusicManager;->playMusic(Lcom/prineside/tdi2/ibxm/Module;F)V

    const-string v0, "MusicManager"

    const-string v1, "started menu music"

    invoke-static {v0, v1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v2, v0}, Lcom/prineside/tdi2/managers/MusicManager;->setVolume(FFZ)V

    return-void
.end method

.method public final d()V
    .locals 7

    sget-object v0, Lcom/prineside/tdi2/managers/MusicManager;->w:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    invoke-static {}, Lcom/prineside/tdi2/Game;->getTimestampSeconds()I

    move-result v0

    iget-object v1, p0, Lcom/prineside/tdi2/managers/MusicManager;->t:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/IntMap;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/utils/IntMap$Entry;

    iget-object v4, v3, Lcom/badlogic/gdx/utils/IntMap$Entry;->value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/ref/SoftReference;

    invoke-virtual {v4}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/prineside/tdi2/managers/MusicManager$ModuleCacheConfig;

    if-eqz v4, :cond_2

    iget v5, v4, Lcom/prineside/tdi2/managers/MusicManager$ModuleCacheConfig;->lastUsed:I

    sub-int v5, v0, v5

    const/16 v6, 0x12c

    if-le v5, v6, :cond_1

    if-nez v2, :cond_0

    new-instance v2, Lcom/badlogic/gdx/utils/IntArray;

    invoke-direct {v2}, Lcom/badlogic/gdx/utils/IntArray;-><init>()V

    :cond_0
    iget v3, v3, Lcom/badlogic/gdx/utils/IntMap$Entry;->key:I

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/prineside/tdi2/managers/MusicManager;->w:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    if-nez v2, :cond_3

    new-instance v2, Lcom/badlogic/gdx/utils/IntArray;

    invoke-direct {v2}, Lcom/badlogic/gdx/utils/IntArray;-><init>()V

    :cond_3
    iget v3, v3, Lcom/badlogic/gdx/utils/IntMap$Entry;->key:I

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/prineside/tdi2/managers/MusicManager;->w:Lcom/badlogic/gdx/utils/Array;

    iget v1, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v3, 0x5

    if-le v1, v3, :cond_6

    sget-object v1, Lcom/prineside/tdi2/managers/MusicManager;->x:Ljava/util/Comparator;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->sort(Ljava/util/Comparator;)V

    :goto_1
    sget-object v0, Lcom/prineside/tdi2/managers/MusicManager;->w:Lcom/badlogic/gdx/utils/Array;

    iget v1, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v3, v1, :cond_6

    if-nez v2, :cond_5

    new-instance v2, Lcom/badlogic/gdx/utils/IntArray;

    invoke-direct {v2}, Lcom/badlogic/gdx/utils/IntArray;-><init>()V

    :cond_5
    iget-object v0, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v0, [Lcom/prineside/tdi2/managers/MusicManager$ModuleCacheConfig;

    aget-object v0, v0, v3

    iget v0, v0, Lcom/prineside/tdi2/managers/MusicManager$ModuleCacheConfig;->hash:I

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    if-eqz v2, :cond_7

    const/4 v0, 0x0

    :goto_2
    iget v1, v2, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-ge v0, v1, :cond_7

    iget-object v1, v2, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    aget v1, v1, v0

    iget-object v3, p0, Lcom/prineside/tdi2/managers/MusicManager;->t:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/utils/IntMap;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    sget-object v0, Lcom/prineside/tdi2/managers/MusicManager;->w:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    return-void
.end method

.method public dispose()V
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/MusicManager;->saveIfRequired()V

    return-void
.end method

.method public getCurrentlyPlayingMenuThemeSource()Lcom/prineside/tdi2/managers/MusicManager$MusicSource;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/MusicManager;->menuThemeSources:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/managers/MusicManager$MusicSource;

    return-object v0
.end method

.method public getInterpolation()I
    .locals 5

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->SMOOTH_MUSIC:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/SettingsManager;->getCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getMenuMusicSourceRepeatCount(Lcom/prineside/tdi2/managers/MusicManager$MusicSource;)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/prineside/tdi2/managers/MusicManager;->menuThemeSources:Lcom/badlogic/gdx/utils/Array;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v2, :cond_1

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/managers/MusicManager$MusicSource;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/prineside/tdi2/managers/MusicManager$MusicSource;->sameAs(Lcom/prineside/tdi2/managers/MusicManager$MusicSource;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget p1, v1, Lcom/prineside/tdi2/managers/MusicManager$MusicSource;->repeats:I

    return p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public getMenuThemeSources()Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/managers/MusicManager$MusicSource;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/prineside/tdi2/managers/MusicManager;->menuThemeSources:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public getModule(Ljava/lang/String;)Lcom/prineside/tdi2/ibxm/Module;
    .locals 5

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/managers/MusicManager;->getMusicB64hash(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/prineside/tdi2/managers/MusicManager;->t:Lcom/badlogic/gdx/utils/IntMap;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/prineside/tdi2/managers/MusicManager;->t:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/IntMap;->containsKey(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/prineside/tdi2/managers/MusicManager;->t:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/SoftReference;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/managers/MusicManager$ModuleCacheConfig;

    if-eqz v2, :cond_0

    iget-object p1, v2, Lcom/prineside/tdi2/managers/MusicManager$ModuleCacheConfig;->module:Lcom/prineside/tdi2/ibxm/Module;

    monitor-exit v1

    return-object p1

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-static {p1}, Lcom/badlogic/gdx/utils/Base64Coder;->decode(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v1}, Lcom/prineside/tdi2/ibxm/Module;->fromZipInputStream(Ljava/io/InputStream;)Lcom/prineside/tdi2/ibxm/Module;

    move-result-object v1

    new-instance v2, Lcom/prineside/tdi2/managers/MusicManager$ModuleCacheConfig;

    invoke-direct {v2}, Lcom/prineside/tdi2/managers/MusicManager$ModuleCacheConfig;-><init>()V

    iput v0, v2, Lcom/prineside/tdi2/managers/MusicManager$ModuleCacheConfig;->hash:I

    iput-object v1, v2, Lcom/prineside/tdi2/managers/MusicManager$ModuleCacheConfig;->module:Lcom/prineside/tdi2/ibxm/Module;

    invoke-static {}, Lcom/prineside/tdi2/Game;->getTimestampSeconds()I

    move-result v3

    iput v3, v2, Lcom/prineside/tdi2/managers/MusicManager$ModuleCacheConfig;->lastUsed:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, v2, Lcom/prineside/tdi2/managers/MusicManager$ModuleCacheConfig;->size:I

    iget-object p1, p0, Lcom/prineside/tdi2/managers/MusicManager;->t:Lcom/badlogic/gdx/utils/IntMap;

    monitor-enter p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-object v3, p0, Lcom/prineside/tdi2/managers/MusicManager;->t:Lcom/badlogic/gdx/utils/IntMap;

    new-instance v4, Ljava/lang/ref/SoftReference;

    invoke-direct {v4, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v0, v4}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/MusicManager;->d()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    return-object v1

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "failed to read module from base64"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catchall_1
    move-exception p1

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p1
.end method

.method public getMusicB64hash(Ljava/lang/String;)I
    .locals 6

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/prineside/tdi2/managers/MusicManager;->u:Lcom/badlogic/gdx/utils/IntIntMap;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/prineside/tdi2/managers/MusicManager;->u:Lcom/badlogic/gdx/utils/IntIntMap;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/badlogic/gdx/utils/IntIntMap;->get(II)I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x1

    :goto_0
    if-ge v3, v2, :cond_0

    mul-int/lit8 v4, v4, 0x1f

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/prineside/tdi2/managers/MusicManager;->u:Lcom/badlogic/gdx/utils/IntIntMap;

    invoke-virtual {p1, v0, v4}, Lcom/badlogic/gdx/utils/IntIntMap;->put(II)V

    move v2, v4

    :cond_1
    monitor-exit v1

    return v2

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public abstract getPlayingMusic()Lcom/prineside/tdi2/ibxm/Module;
.end method

.method public isMenuMusicSourceEnabled(Lcom/prineside/tdi2/managers/MusicManager$MusicSource;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/prineside/tdi2/managers/MusicManager;->menuThemeSources:Lcom/badlogic/gdx/utils/Array;

    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v3, :cond_1

    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/prineside/tdi2/managers/MusicManager$MusicSource;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lcom/prineside/tdi2/managers/MusicManager$MusicSource;->sameAs(Lcom/prineside/tdi2/managers/MusicManager$MusicSource;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public isMusicThumbsUp(I)Z
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/MusicManager;->thumbsUpMusicHashes:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/IntArray;->contains(I)Z

    move-result p1

    return p1
.end method

.method public abstract playMusic(Lcom/prineside/tdi2/ibxm/Module;F)V
.end method

.method public preRender(F)V
    .locals 5

    iget-boolean v0, p0, Lcom/prineside/tdi2/managers/MusicManager;->p:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/prineside/tdi2/managers/MusicManager;->a:F

    iget v1, p0, Lcom/prineside/tdi2/managers/MusicManager;->d:F

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/prineside/tdi2/managers/MusicManager;->b:F

    cmpl-float v4, v0, v3

    if-eqz v4, :cond_2

    mul-float v1, v1, p1

    sub-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/StrictMath;->abs(F)F

    move-result v4

    div-float/2addr v1, v4

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, v1, v4

    if-ltz v4, :cond_1

    iget v1, p0, Lcom/prineside/tdi2/managers/MusicManager;->b:F

    iput v1, p0, Lcom/prineside/tdi2/managers/MusicManager;->a:F

    goto :goto_0

    :cond_1
    mul-float v3, v3, v1

    add-float/2addr v3, v0

    iput v3, p0, Lcom/prineside/tdi2/managers/MusicManager;->a:F

    :goto_0
    iget v1, p0, Lcom/prineside/tdi2/managers/MusicManager;->a:F

    invoke-virtual {p0, v1}, Lcom/prineside/tdi2/managers/MusicManager;->setBackendVolume(F)V

    goto :goto_1

    :cond_2
    iput v2, p0, Lcom/prineside/tdi2/managers/MusicManager;->d:F

    :cond_3
    :goto_1
    iget-boolean v1, p0, Lcom/prineside/tdi2/managers/MusicManager;->k:Z

    if-eqz v1, :cond_4

    cmpl-float v0, v0, v2

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/MusicManager;->stopMusic()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prineside/tdi2/managers/MusicManager;->k:Z

    :cond_4
    iget v0, p0, Lcom/prineside/tdi2/managers/MusicManager;->s:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/prineside/tdi2/managers/MusicManager;->s:F

    const/high16 v1, 0x42700000    # 60.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    iput v2, p0, Lcom/prineside/tdi2/managers/MusicManager;->s:F

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/MusicManager;->d()V

    :cond_5
    iget-boolean v0, p0, Lcom/prineside/tdi2/managers/MusicManager;->r:Z

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/prineside/tdi2/managers/MusicManager;->q:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/prineside/tdi2/managers/MusicManager;->q:F

    const/high16 p1, 0x41f00000    # 30.0f

    cmpl-float p1, v0, p1

    if-lez p1, :cond_6

    iput v2, p0, Lcom/prineside/tdi2/managers/MusicManager;->q:F

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/MusicManager;->saveIfRequired()V

    :cond_6
    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->debugManager:Lcom/prineside/tdi2/managers/DebugManager;

    const-string v0, "Music"

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/managers/DebugManager;->registerValue(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p1

    if-eqz p1, :cond_8

    const-string v0, "v:"

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/prineside/tdi2/managers/MusicManager;->a:F

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p1

    const-string v0, "% "

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/MusicManager;->getPlayingMusic()Lcom/prineside/tdi2/ibxm/Module;

    move-result-object v0

    if-nez v0, :cond_7

    const-string v0, "NP"

    goto :goto_2

    :cond_7
    const-string v0, "P"

    :goto_2
    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    :cond_8
    return-void
.end method

.method public final reload()V
    .locals 8

    const-string v0, "menuThemeSourceId"

    const-string v1, "menuThemeSource"

    const-string v2, "MusicManager"

    iget-object v3, p0, Lcom/prineside/tdi2/managers/MusicManager;->thumbsUpMusicHashes:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/IntArray;->clear()V

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->preferencesManager:Lcom/prineside/tdi2/managers/PreferencesManager;

    sget-object v4, Lcom/prineside/tdi2/Config;->PREFERENCES_NAME_SETTINGS:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/managers/PreferencesManager;->getInstance(Ljava/lang/String;)Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;

    move-result-object v3

    :try_start_0
    const-string v4, "thumbsUpMusicHashes"

    const-string v5, "[]"

    invoke-virtual {v3, v4, v5}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/badlogic/gdx/utils/JsonReader;

    invoke-direct {v5}, Lcom/badlogic/gdx/utils/JsonReader;-><init>()V

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/utils/JsonValue;

    iget-object v6, p0, Lcom/prineside/tdi2/managers/MusicManager;->thumbsUpMusicHashes:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/JsonValue;->asInt()I

    move-result v5

    invoke-virtual {v6, v5}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    const-string v5, "failed to load thumbsUpMusicHashes"

    invoke-static {v2, v5, v4}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 v4, 0x0

    :try_start_1
    sget-object v5, Lcom/prineside/tdi2/managers/MusicManager$MusicSourceType;->DEFAULT:Lcom/prineside/tdi2/managers/MusicManager$MusicSourceType;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v1, v5}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/prineside/tdi2/managers/MusicManager$MusicSourceType;->valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/managers/MusicManager$MusicSourceType;

    move-result-object v5

    invoke-virtual {v3, v0, v4}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/prineside/tdi2/managers/MusicManager$MusicSource;

    invoke-direct {v7, v5, v6}, Lcom/prineside/tdi2/managers/MusicManager$MusicSource;-><init>(Lcom/prineside/tdi2/managers/MusicManager$MusicSourceType;Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Lcom/prineside/tdi2/managers/MusicManager;->addMenuMusicSource(Lcom/prineside/tdi2/managers/MusicManager$MusicSource;)V

    invoke-virtual {v3, v1}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->remove(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->remove(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prineside/tdi2/managers/MusicManager;->r:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "failed to load menuThemeSource"

    invoke-static {v2, v1, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    const-string v0, "menuThemeSources"

    invoke-virtual {v3, v0, v4}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_2
    new-instance v1, Lcom/badlogic/gdx/utils/JsonReader;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/JsonReader;-><init>()V

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/JsonValue;

    invoke-static {v1}, Lcom/prineside/tdi2/managers/MusicManager$MusicSource;->fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/managers/MusicManager$MusicSource;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/prineside/tdi2/managers/MusicManager;->addMenuMusicSource(Lcom/prineside/tdi2/managers/MusicManager$MusicSource;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    const-string v1, "failed to load menuThemeSources from preferences"

    invoke-static {v2, v1, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    iget-object v0, p0, Lcom/prineside/tdi2/managers/MusicManager;->menuThemeSources:Lcom/badlogic/gdx/utils/Array;

    iget v1, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v1, :cond_2

    sget-object v1, Lcom/prineside/tdi2/managers/MusicManager$MusicSource;->DEFAULT:Lcom/prineside/tdi2/managers/MusicManager$MusicSource;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public removeMenuMusicSource(Lcom/prineside/tdi2/managers/MusicManager$MusicSource;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/prineside/tdi2/managers/MusicManager;->menuThemeSources:Lcom/badlogic/gdx/utils/Array;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v2, :cond_2

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/managers/MusicManager$MusicSource;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Lcom/prineside/tdi2/managers/MusicManager$MusicSource;->sameAs(Lcom/prineside/tdi2/managers/MusicManager$MusicSource;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p1, p0, Lcom/prineside/tdi2/managers/MusicManager;->menuThemeSources:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    iget-object p1, p0, Lcom/prineside/tdi2/managers/MusicManager;->menuThemeSources:Lcom/badlogic/gdx/utils/Array;

    iget v0, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v0, :cond_0

    sget-object v0, Lcom/prineside/tdi2/managers/MusicManager$MusicSource;->DEFAULT:Lcom/prineside/tdi2/managers/MusicManager$MusicSource;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public requireSave()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prineside/tdi2/managers/MusicManager;->r:Z

    return-void
.end method

.method public save()V
    .locals 7

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prineside/tdi2/managers/MusicManager;->r:Z

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->preferencesManager:Lcom/prineside/tdi2/managers/PreferencesManager;

    sget-object v2, Lcom/prineside/tdi2/Config;->PREFERENCES_NAME_SETTINGS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/PreferencesManager;->getInstance(Ljava/lang/String;)Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;

    move-result-object v1

    new-instance v2, Lcom/badlogic/gdx/utils/Json;

    sget-object v3, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->json:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/utils/Json;-><init>(Lcom/badlogic/gdx/utils/JsonWriter$OutputType;)V

    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/Json;->setWriter(Ljava/io/Writer;)V

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Json;->writeArrayStart()V

    const/4 v4, 0x0

    :goto_0
    iget-object v5, p0, Lcom/prineside/tdi2/managers/MusicManager;->thumbsUpMusicHashes:Lcom/badlogic/gdx/utils/IntArray;

    iget v6, v5, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-ge v4, v6, :cond_0

    iget-object v5, v5, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    aget v5, v5, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Json;->writeArrayEnd()V

    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "thumbsUpMusicHashes"

    invoke-virtual {v1, v3, v2}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->set(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/badlogic/gdx/utils/Json;

    sget-object v3, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->json:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/utils/Json;-><init>(Lcom/badlogic/gdx/utils/JsonWriter$OutputType;)V

    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/Json;->setWriter(Ljava/io/Writer;)V

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Json;->writeArrayStart()V

    :goto_1
    iget-object v4, p0, Lcom/prineside/tdi2/managers/MusicManager;->menuThemeSources:Lcom/badlogic/gdx/utils/Array;

    iget v5, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v5, :cond_1

    iget-object v4, v4, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v4, [Lcom/prineside/tdi2/managers/MusicManager$MusicSource;

    aget-object v4, v4, v0

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart()V

    invoke-virtual {v4, v2}, Lcom/prineside/tdi2/managers/MusicManager$MusicSource;->toJson(Lcom/badlogic/gdx/utils/Json;)V

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Json;->writeArrayEnd()V

    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "menuThemeSources"

    invoke-virtual {v1, v2, v0}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->flush()V

    const-string v0, "MusicManager"

    const-string v1, "saved"

    invoke-static {v0, v1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveIfRequired()V
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/managers/MusicManager;->r:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/MusicManager;->save()V

    :cond_0
    return-void
.end method

.method public abstract setBackendVolume(F)V
.end method

.method public setVolume(FFZ)V
    .locals 2

    invoke-static {}, Lcom/prineside/tdi2/Config;->isHeadless()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/prineside/tdi2/managers/MusicManager;->b:F

    const/4 v0, 0x0

    cmpg-float v1, p2, v0

    if-gtz v1, :cond_3

    cmpg-float p2, p1, v0

    if-gtz p2, :cond_2

    if-eqz p3, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/prineside/tdi2/managers/MusicManager;->k:Z

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/MusicManager;->stopMusic()V

    goto :goto_0

    :cond_1
    iput v0, p0, Lcom/prineside/tdi2/managers/MusicManager;->a:F

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/managers/MusicManager;->setBackendVolume(F)V

    goto :goto_0

    :cond_2
    iput p1, p0, Lcom/prineside/tdi2/managers/MusicManager;->a:F

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/managers/MusicManager;->setBackendVolume(F)V

    goto :goto_0

    :cond_3
    iput p2, p0, Lcom/prineside/tdi2/managers/MusicManager;->d:F

    iput-boolean p3, p0, Lcom/prineside/tdi2/managers/MusicManager;->k:Z

    :goto_0
    return-void
.end method

.method public setup()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prineside/tdi2/managers/MusicManager;->p:Z

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->preferencesManager:Lcom/prineside/tdi2/managers/PreferencesManager;

    new-instance v1, Lcom/prineside/tdi2/managers/MusicManager$2;

    invoke-direct {v1, p0}, Lcom/prineside/tdi2/managers/MusicManager$2;-><init>(Lcom/prineside/tdi2/managers/MusicManager;)V

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/PreferencesManager;->addListener(Lcom/prineside/tdi2/managers/PreferencesManager$PreferencesManagerListener;)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    new-instance v1, Lcom/prineside/tdi2/managers/MusicManager$3;

    invoke-direct {v1, p0}, Lcom/prineside/tdi2/managers/MusicManager$3;-><init>(Lcom/prineside/tdi2/managers/MusicManager;)V

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/SettingsManager;->addListener(Lcom/prineside/tdi2/managers/SettingsManager$SettingsManagerListener;)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/MusicManager;->reload()V

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v1, Lcom/prineside/tdi2/managers/MusicManager$4;

    invoke-direct {v1, p0}, Lcom/prineside/tdi2/managers/MusicManager$4;-><init>(Lcom/prineside/tdi2/managers/MusicManager;)V

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Application;->addLifecycleListener(Lcom/badlogic/gdx/LifecycleListener;)V

    return-void
.end method

.method public showSongNotification(Lcom/prineside/tdi2/ibxm/Module;)Lcom/prineside/tdi2/ui/shared/Notifications$Notification;
    .locals 5

    new-instance v0, Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/prineside/tdi2/ibxm/Module;->songName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    const-string v2, "[#8a8a8a]"

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    iget-object p1, p1, Lcom/prineside/tdi2/ibxm/Module;->instruments:[Lcom/prineside/tdi2/ibxm/Instrument;

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    iget-object v3, v3, Lcom/prineside/tdi2/ibxm/Instrument;->name:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string p1, "[]"

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, p1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/UiManager;->notifications:Lcom/prineside/tdi2/ui/shared/Notifications;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v2, "icon-note"

    invoke-virtual {p1, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object p1

    sget-object v2, Lcom/prineside/tdi2/managers/MusicManager;->v:Lcom/badlogic/gdx/graphics/Color;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, p1, v2, v3}, Lcom/prineside/tdi2/ui/shared/Notifications;->add(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/Color;Lcom/prineside/tdi2/enums/StaticSoundType;)Lcom/prineside/tdi2/ui/shared/Notifications$Notification;

    move-result-object p1

    return-object p1
.end method

.method public abstract stopMusic()V
.end method

.method public voteThumbsUp(IZ)V
    .locals 1

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/prineside/tdi2/managers/MusicManager;->thumbsUpMusicHashes:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/utils/IntArray;->contains(I)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/prineside/tdi2/managers/MusicManager;->thumbsUpMusicHashes:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    iput-boolean v0, p0, Lcom/prineside/tdi2/managers/MusicManager;->r:Z

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/prineside/tdi2/managers/MusicManager;->thumbsUpMusicHashes:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/utils/IntArray;->removeValue(I)Z

    move-result p1

    if-eqz p1, :cond_1

    iput-boolean v0, p0, Lcom/prineside/tdi2/managers/MusicManager;->r:Z

    :cond_1
    :goto_0
    return-void
.end method
