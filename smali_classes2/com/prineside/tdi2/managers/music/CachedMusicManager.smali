.class public abstract Lcom/prineside/tdi2/managers/music/CachedMusicManager;
.super Lcom/prineside/tdi2/managers/MusicManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/managers/music/CachedMusicManager$Status;,
        Lcom/prineside/tdi2/managers/music/CachedMusicManager$CacheStatus;,
        Lcom/prineside/tdi2/managers/music/CachedMusicManager$FileCacheStatus;
    }
.end annotation


# static fields
.field public static final I:[B


# instance fields
.field public A:Ljava/lang/String;

.field public B:Lcom/prineside/tdi2/ui/shared/Notifications$Notification;

.field public C:Ljava/lang/Thread;

.field public D:F

.field public E:Z

.field public G:F

.field public H:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/managers/music/CachedMusicManager$CacheStatus;",
            ">;"
        }
    .end annotation
.end field

.field public y:Lcom/prineside/tdi2/managers/music/CachedMusicManager$Status;

.field public z:Lcom/prineside/tdi2/ibxm/Module;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/ibxm/WavInputStream;->header:[B

    array-length v0, v0

    new-array v0, v0, [B

    sput-object v0, Lcom/prineside/tdi2/managers/music/CachedMusicManager;->I:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/prineside/tdi2/managers/MusicManager;-><init>()V

    sget-object v0, Lcom/prineside/tdi2/managers/music/CachedMusicManager$Status;->IDLE:Lcom/prineside/tdi2/managers/music/CachedMusicManager$Status;

    iput-object v0, p0, Lcom/prineside/tdi2/managers/music/CachedMusicManager;->y:Lcom/prineside/tdi2/managers/music/CachedMusicManager$Status;

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/prineside/tdi2/managers/music/CachedMusicManager$CacheStatus;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(ZILjava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/managers/music/CachedMusicManager;->H:Lcom/badlogic/gdx/utils/Array;

    const-string v0, "CachedMusicManager"

    const-string v1, "initializing"

    invoke-static {v0, v1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic e(Lcom/prineside/tdi2/managers/music/CachedMusicManager;)V
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/music/CachedMusicManager;->o()V

    return-void
.end method

.method public static synthetic f(Lcom/prineside/tdi2/managers/music/CachedMusicManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/prineside/tdi2/managers/music/CachedMusicManager;->E:Z

    return p0
.end method

.method public static synthetic g(Lcom/prineside/tdi2/managers/music/CachedMusicManager;)V
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/music/CachedMusicManager;->t()V

    return-void
.end method

.method public static getWavDuration(Lcom/badlogic/gdx/files/FileHandle;)D
    .locals 4

    sget-object v0, Lcom/prineside/tdi2/managers/music/CachedMusicManager;->I:[B

    array-length v1, v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lcom/badlogic/gdx/files/FileHandle;->readBytes([BII)I

    const/16 p0, 0x18

    invoke-static {v0, p0}, Lcom/prineside/tdi2/ibxm/WavInputStream;->readInt32([BI)I

    move-result p0

    const/16 v1, 0x28

    invoke-static {v0, v1}, Lcom/prineside/tdi2/ibxm/WavInputStream;->readInt32([BI)I

    move-result v0

    int-to-double v0, v0

    int-to-double v2, p0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static synthetic h(Lcom/prineside/tdi2/managers/music/CachedMusicManager;)F
    .locals 0

    iget p0, p0, Lcom/prineside/tdi2/managers/music/CachedMusicManager;->D:F

    return p0
.end method

.method public static synthetic i(Lcom/prineside/tdi2/managers/music/CachedMusicManager;F)F
    .locals 0

    iput p1, p0, Lcom/prineside/tdi2/managers/music/CachedMusicManager;->D:F

    return p1
.end method

.method public static isMusicCached(Lcom/prineside/tdi2/ibxm/Module;)Z
    .locals 3

    iget v0, p0, Lcom/prineside/tdi2/ibxm/Module;->restartPos:I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/prineside/tdi2/managers/music/CachedMusicManager;->q(Lcom/prineside/tdi2/ibxm/Module;Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/prineside/tdi2/managers/music/CachedMusicManager;->q(Lcom/prineside/tdi2/ibxm/Module;Z)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result p0

    return p0
.end method

.method public static synthetic j(Lcom/prineside/tdi2/managers/music/CachedMusicManager;)Lcom/prineside/tdi2/managers/music/CachedMusicManager$Status;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/managers/music/CachedMusicManager;->y:Lcom/prineside/tdi2/managers/music/CachedMusicManager$Status;

    return-object p0
.end method

.method public static synthetic k(Lcom/prineside/tdi2/managers/music/CachedMusicManager;Lcom/prineside/tdi2/managers/music/CachedMusicManager$Status;)Lcom/prineside/tdi2/managers/music/CachedMusicManager$Status;
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/managers/music/CachedMusicManager;->y:Lcom/prineside/tdi2/managers/music/CachedMusicManager$Status;

    return-object p1
.end method

.method public static synthetic l(Lcom/prineside/tdi2/ibxm/Module;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/prineside/tdi2/managers/music/CachedMusicManager;->p(Lcom/prineside/tdi2/ibxm/Module;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic m(Lcom/prineside/tdi2/managers/music/CachedMusicManager;Lcom/prineside/tdi2/ibxm/Module;F)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/prineside/tdi2/managers/music/CachedMusicManager;->r(Lcom/prineside/tdi2/ibxm/Module;F)V

    return-void
.end method

.method public static synthetic n(Lcom/prineside/tdi2/managers/music/CachedMusicManager;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/managers/music/CachedMusicManager;->C:Ljava/lang/Thread;

    return-object p1
.end method

.method public static p(Lcom/prineside/tdi2/ibxm/Module;)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/prineside/tdi2/ibxm/Module;->sequence:[I

    array-length v4, v3

    if-ge v2, v4, :cond_0

    mul-int/lit8 v1, v1, 0x1f

    aget v3, v3, v2

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/prineside/tdi2/ibxm/Module;->patterns:[Lcom/prineside/tdi2/ibxm/Pattern;

    array-length v2, v2

    add-int/2addr v1, v2

    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lcom/prineside/tdi2/ibxm/Module;->songName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    mul-int/lit8 v1, v1, 0x1f

    iget-object v3, p0, Lcom/prineside/tdi2/ibxm/Module;->songName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/prineside/tdi2/ibxm/Module;->instruments:[Lcom/prineside/tdi2/ibxm/Instrument;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_3

    aget-object v5, v2, v4

    iget-object v6, v5, Lcom/prineside/tdi2/ibxm/Instrument;->name:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x0

    :goto_3
    iget-object v7, v5, Lcom/prineside/tdi2/ibxm/Instrument;->name:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v7, v5, Lcom/prineside/tdi2/ibxm/Instrument;->name:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    add-int/2addr v1, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    if-gez v1, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    neg-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_4
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/prineside/tdi2/ibxm/Module;->songName:Ljava/lang/String;

    const-string v2, "[^A-Za-z0-9]"

    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "-"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static q(Lcom/prineside/tdi2/ibxm/Module;Z)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cache/music/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/prineside/tdi2/managers/music/CachedMusicManager;->p(Lcom/prineside/tdi2/ibxm/Module;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string p0, "-l"

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".wav"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getPlayingMusic()Lcom/prineside/tdi2/ibxm/Module;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/music/CachedMusicManager;->z:Lcom/prineside/tdi2/ibxm/Module;

    return-object v0
.end method

.method public final o()V
    .locals 17

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/prineside/tdi2/managers/music/CachedMusicManager;->C:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-wide/16 v2, 0x0

    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v4, "cache/music/"

    invoke-interface {v0, v4}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {v4}, Lcom/badlogic/gdx/files/FileHandle;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {v4}, Lcom/badlogic/gdx/files/FileHandle;->list()[Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v5

    array-length v6, v5

    const/4 v8, 0x0

    :goto_0
    const-string v9, ".wav"

    const-string v10, "CachedMusicManager"

    if-ge v8, v6, :cond_2

    aget-object v11, v5, v8

    :try_start_0
    invoke-virtual {v11}, Lcom/badlogic/gdx/files/FileHandle;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v11}, Lcom/badlogic/gdx/files/FileHandle;->length()J

    move-result-wide v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-long/2addr v2, v9

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "cleanupCache failed to get size for "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lcom/badlogic/gdx/files/FileHandle;->name()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    const-wide/16 v5, 0x400

    div-long v11, v2, v5

    div-long/2addr v11, v5

    long-to-int v0, v11

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object v11, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->MUSIC_CACHE_MAX_SIZE:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {v8, v11}, Lcom/prineside/tdi2/managers/SettingsManager;->getCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;)D

    move-result-wide v11

    double-to-int v8, v11

    if-le v0, v8, :cond_c

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "music cache limit exceeded, cleaning up ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " Mb)"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v11, Lcom/badlogic/gdx/utils/Array;

    const-class v0, Lcom/prineside/tdi2/managers/music/CachedMusicManager$FileCacheStatus;

    invoke-direct {v11, v0}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v4}, Lcom/badlogic/gdx/files/FileHandle;->list()[Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    array-length v12, v4

    const/4 v13, 0x0

    :goto_2
    if-ge v13, v12, :cond_6

    aget-object v14, v4, v13

    :try_start_1
    invoke-virtual {v14}, Lcom/badlogic/gdx/files/FileHandle;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/prineside/tdi2/managers/music/CachedMusicManager$FileCacheStatus;

    const/4 v15, 0x0

    invoke-direct {v0, v1, v15}, Lcom/prineside/tdi2/managers/music/CachedMusicManager$FileCacheStatus;-><init>(Lcom/prineside/tdi2/managers/music/CachedMusicManager;Lcom/prineside/tdi2/managers/music/CachedMusicManager$1;)V

    iput-object v14, v0, Lcom/prineside/tdi2/managers/music/CachedMusicManager$FileCacheStatus;->a:Lcom/badlogic/gdx/files/FileHandle;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move/from16 v16, v8

    :try_start_2
    invoke-virtual {v14}, Lcom/badlogic/gdx/files/FileHandle;->length()J

    move-result-wide v7

    iput-wide v7, v0, Lcom/prineside/tdi2/managers/music/CachedMusicManager$FileCacheStatus;->b:J

    const/4 v7, 0x0

    :goto_3
    iget-object v8, v1, Lcom/prineside/tdi2/managers/music/CachedMusicManager;->H:Lcom/badlogic/gdx/utils/Array;

    iget v15, v8, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v7, v15, :cond_4

    iget-object v8, v8, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v8, [Lcom/prineside/tdi2/managers/music/CachedMusicManager$CacheStatus;

    aget-object v8, v8, v7

    invoke-virtual {v14}, Lcom/badlogic/gdx/files/FileHandle;->name()Ljava/lang/String;

    move-result-object v15

    iget-object v5, v8, Lcom/prineside/tdi2/managers/music/CachedMusicManager$CacheStatus;->songFileName:Ljava/lang/String;

    invoke-virtual {v15, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    iput-object v8, v0, Lcom/prineside/tdi2/managers/music/CachedMusicManager$FileCacheStatus;->c:Lcom/prineside/tdi2/managers/music/CachedMusicManager$CacheStatus;

    goto :goto_4

    :cond_3
    add-int/lit8 v7, v7, 0x1

    const-wide/16 v5, 0x400

    goto :goto_3

    :cond_4
    :goto_4
    invoke-virtual {v11, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_6

    :catch_1
    move-exception v0

    goto :goto_5

    :cond_5
    move/from16 v16, v8

    goto :goto_6

    :catch_2
    move-exception v0

    move/from16 v16, v8

    :goto_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cleanupCache failed for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Lcom/badlogic/gdx/files/FileHandle;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_6
    add-int/lit8 v13, v13, 0x1

    move/from16 v8, v16

    const-wide/16 v5, 0x400

    goto :goto_2

    :cond_6
    move/from16 v16, v8

    iget v0, v11, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v4, 0x1

    sub-int/2addr v0, v4

    move-wide v5, v2

    move v2, v0

    :goto_7
    if-ltz v2, :cond_9

    iget-object v0, v11, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v0, [Lcom/prineside/tdi2/managers/music/CachedMusicManager$FileCacheStatus;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/prineside/tdi2/managers/music/CachedMusicManager$FileCacheStatus;->c:Lcom/prineside/tdi2/managers/music/CachedMusicManager$CacheStatus;

    if-nez v0, :cond_8

    invoke-virtual {v11, v2}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/prineside/tdi2/managers/music/CachedMusicManager$FileCacheStatus;

    iget-object v0, v1, Lcom/prineside/tdi2/managers/music/CachedMusicManager;->A:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, v3, Lcom/prineside/tdi2/managers/music/CachedMusicManager$FileCacheStatus;->a:Lcom/badlogic/gdx/files/FileHandle;

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->name()Ljava/lang/String;

    move-result-object v0

    iget-object v7, v1, Lcom/prineside/tdi2/managers/music/CachedMusicManager;->A:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    :try_start_3
    iget-object v0, v3, Lcom/prineside/tdi2/managers/music/CachedMusicManager$FileCacheStatus;->a:Lcom/badlogic/gdx/files/FileHandle;

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->delete()Z

    iget-wide v7, v3, Lcom/prineside/tdi2/managers/music/CachedMusicManager$FileCacheStatus;->b:J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    sub-long/2addr v5, v7

    goto :goto_8

    :catch_3
    move-exception v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "failed to delete file with unknown cache "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Lcom/prineside/tdi2/managers/music/CachedMusicManager$FileCacheStatus;->a:Lcom/badlogic/gdx/files/FileHandle;

    invoke-virtual {v3}, Lcom/badlogic/gdx/files/FileHandle;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_8
    :goto_8
    add-int/lit8 v2, v2, -0x1

    goto :goto_7

    :cond_9
    new-instance v0, Lcom/prineside/tdi2/managers/music/CachedMusicManager$3;

    invoke-direct {v0, v1}, Lcom/prineside/tdi2/managers/music/CachedMusicManager$3;-><init>(Lcom/prineside/tdi2/managers/music/CachedMusicManager;)V

    invoke-virtual {v11, v0}, Lcom/badlogic/gdx/utils/Array;->sort(Ljava/util/Comparator;)V

    const/4 v7, 0x0

    :goto_9
    iget v0, v11, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v7, v0, :cond_c

    const-wide/16 v2, 0x400

    div-long v8, v5, v2

    div-long/2addr v8, v2

    long-to-int v0, v8

    move/from16 v8, v16

    if-ge v0, v8, :cond_a

    goto :goto_b

    :cond_a
    iget-object v0, v11, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v0, [Lcom/prineside/tdi2/managers/music/CachedMusicManager$FileCacheStatus;

    aget-object v9, v0, v7

    iget-object v0, v9, Lcom/prineside/tdi2/managers/music/CachedMusicManager$FileCacheStatus;->c:Lcom/prineside/tdi2/managers/music/CachedMusicManager$CacheStatus;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/music/CachedMusicManager$CacheStatus;->songFileName:Ljava/lang/String;

    iget-object v12, v1, Lcom/prineside/tdi2/managers/music/CachedMusicManager;->A:Ljava/lang/String;

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_a

    :cond_b
    iget-object v0, v1, Lcom/prineside/tdi2/managers/music/CachedMusicManager;->H:Lcom/badlogic/gdx/utils/Array;

    iget-object v12, v9, Lcom/prineside/tdi2/managers/music/CachedMusicManager$FileCacheStatus;->c:Lcom/prineside/tdi2/managers/music/CachedMusicManager$CacheStatus;

    invoke-virtual {v0, v12, v4}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    :try_start_4
    iget-object v0, v9, Lcom/prineside/tdi2/managers/music/CachedMusicManager$FileCacheStatus;->a:Lcom/badlogic/gdx/files/FileHandle;

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->delete()Z

    iget-object v0, v11, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v0, [Lcom/prineside/tdi2/managers/music/CachedMusicManager$FileCacheStatus;

    aget-object v0, v0, v7

    iget-wide v12, v0, Lcom/prineside/tdi2/managers/music/CachedMusicManager$FileCacheStatus;->b:J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    sub-long/2addr v5, v12

    goto :goto_a

    :catch_4
    move-exception v0

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "failed to delete file "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v9, Lcom/prineside/tdi2/managers/music/CachedMusicManager$FileCacheStatus;->a:Lcom/badlogic/gdx/files/FileHandle;

    invoke-virtual {v9}, Lcom/badlogic/gdx/files/FileHandle;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_a
    add-int/lit8 v7, v7, 0x1

    move/from16 v16, v8

    goto :goto_9

    :cond_c
    :goto_b
    return-void
.end method

.method public abstract playCachedMusic(Lcom/prineside/tdi2/ibxm/Module;F)V
.end method

.method public playMusic(Lcom/prineside/tdi2/ibxm/Module;F)V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/managers/music/CachedMusicManager;->z:Lcom/prineside/tdi2/ibxm/Module;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/music/CachedMusicManager;->stopMusic()V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prineside/tdi2/managers/MusicManager;->k:Z

    iput-object p1, p0, Lcom/prineside/tdi2/managers/music/CachedMusicManager;->z:Lcom/prineside/tdi2/ibxm/Module;

    invoke-static {p1}, Lcom/prineside/tdi2/managers/music/CachedMusicManager;->p(Lcom/prineside/tdi2/ibxm/Module;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/managers/music/CachedMusicManager;->A:Ljava/lang/String;

    iget-object v0, p0, Lcom/prineside/tdi2/managers/music/CachedMusicManager;->B:Lcom/prineside/tdi2/ui/shared/Notifications$Notification;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ui/shared/Notifications$Notification;->hide(F)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prineside/tdi2/managers/music/CachedMusicManager;->B:Lcom/prineside/tdi2/ui/shared/Notifications$Notification;

    :cond_2
    invoke-static {p1}, Lcom/prineside/tdi2/managers/music/CachedMusicManager;->isMusicCached(Lcom/prineside/tdi2/ibxm/Module;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p2}, Lcom/prineside/tdi2/managers/MusicManager;->setBackendVolume(F)V

    invoke-virtual {p0, p1, p2}, Lcom/prineside/tdi2/managers/music/CachedMusicManager;->r(Lcom/prineside/tdi2/ibxm/Module;F)V

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/managers/MusicManager;->showSongNotification(Lcom/prineside/tdi2/ibxm/Module;)Lcom/prineside/tdi2/ui/shared/Notifications$Notification;

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/managers/MusicManager;->showSongNotification(Lcom/prineside/tdi2/ibxm/Module;)Lcom/prineside/tdi2/ui/shared/Notifications$Notification;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/managers/music/CachedMusicManager;->B:Lcom/prineside/tdi2/ui/shared/Notifications$Notification;

    const/high16 v2, 0x41f00000    # 30.0f

    iput v2, v0, Lcom/prineside/tdi2/ui/shared/Notifications$Notification;->showDuration:F

    iput v1, p0, Lcom/prineside/tdi2/managers/music/CachedMusicManager;->D:F

    sget-object v0, Lcom/prineside/tdi2/managers/music/CachedMusicManager$Status;->WAITING_CACHE_GENERATION:Lcom/prineside/tdi2/managers/music/CachedMusicManager$Status;

    iput-object v0, p0, Lcom/prineside/tdi2/managers/music/CachedMusicManager;->y:Lcom/prineside/tdi2/managers/music/CachedMusicManager$Status;

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/music/CachedMusicManager;->u()V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/prineside/tdi2/managers/music/CachedMusicManager$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/prineside/tdi2/managers/music/CachedMusicManager$4;-><init>(Lcom/prineside/tdi2/managers/music/CachedMusicManager;Lcom/prineside/tdi2/ibxm/Module;F)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/prineside/tdi2/managers/music/CachedMusicManager;->C:Ljava/lang/Thread;

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    iget-object p1, p0, Lcom/prineside/tdi2/managers/music/CachedMusicManager;->C:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    iget-object p1, p0, Lcom/prineside/tdi2/managers/music/CachedMusicManager;->C:Ljava/lang/Thread;

    invoke-static {p1}, Lcom/prineside/tdi2/Logger;->handleThreadExceptionsForgiving(Ljava/lang/Thread;)V

    :goto_0
    return-void
.end method

.method public preRender(F)V
    .locals 3

    invoke-super {p0, p1}, Lcom/prineside/tdi2/managers/MusicManager;->preRender(F)V

    iget-boolean v0, p0, Lcom/prineside/tdi2/managers/MusicManager;->p:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/prineside/tdi2/managers/music/CachedMusicManager;->B:Lcom/prineside/tdi2/ui/shared/Notifications$Notification;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/prineside/tdi2/managers/music/CachedMusicManager;->D:F

    sget-object v2, Lcom/badlogic/gdx/graphics/Color;->GREEN:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1, v2}, Lcom/prineside/tdi2/ui/shared/Notifications$Notification;->showProgress(FLcom/badlogic/gdx/graphics/Color;)V

    :cond_0
    iget-boolean v0, p0, Lcom/prineside/tdi2/managers/music/CachedMusicManager;->E:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/prineside/tdi2/managers/music/CachedMusicManager;->G:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/prineside/tdi2/managers/music/CachedMusicManager;->G:F

    const/high16 p1, 0x41f00000    # 30.0f

    cmpl-float p1, v0, p1

    if-lez p1, :cond_1

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/music/CachedMusicManager;->t()V

    :cond_1
    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->debugManager:Lcom/prineside/tdi2/managers/DebugManager;

    const-string v0, "XM cached music status"

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/managers/DebugManager;->registerValue(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/prineside/tdi2/managers/music/CachedMusicManager;->y:Lcom/prineside/tdi2/managers/music/CachedMusicManager$Status;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    :cond_2
    return-void
.end method

.method public final r(Lcom/prineside/tdi2/ibxm/Module;F)V
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/music/CachedMusicManager;->stopMusic()V

    sget-object v0, Lcom/prineside/tdi2/managers/music/CachedMusicManager$Status;->PLAYING:Lcom/prineside/tdi2/managers/music/CachedMusicManager$Status;

    iput-object v0, p0, Lcom/prineside/tdi2/managers/music/CachedMusicManager;->y:Lcom/prineside/tdi2/managers/music/CachedMusicManager$Status;

    iput-object p1, p0, Lcom/prineside/tdi2/managers/music/CachedMusicManager;->z:Lcom/prineside/tdi2/ibxm/Module;

    invoke-static {p1}, Lcom/prineside/tdi2/managers/music/CachedMusicManager;->p(Lcom/prineside/tdi2/ibxm/Module;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/managers/music/CachedMusicManager;->A:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/managers/music/CachedMusicManager;->s(Lcom/prineside/tdi2/ibxm/Module;)V

    invoke-virtual {p0, p1, p2}, Lcom/prineside/tdi2/managers/music/CachedMusicManager;->playCachedMusic(Lcom/prineside/tdi2/ibxm/Module;F)V

    return-void
.end method

.method public final s(Lcom/prineside/tdi2/ibxm/Module;)V
    .locals 3

    invoke-static {p1}, Lcom/prineside/tdi2/managers/music/CachedMusicManager;->p(Lcom/prineside/tdi2/ibxm/Module;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/prineside/tdi2/managers/music/CachedMusicManager;->H:Lcom/badlogic/gdx/utils/Array;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v2, :cond_1

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/managers/music/CachedMusicManager$CacheStatus;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/prineside/tdi2/managers/music/CachedMusicManager$CacheStatus;->songFileName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/managers/music/CachedMusicManager;->H:Lcom/badlogic/gdx/utils/Array;

    iget-object p1, p1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast p1, [Lcom/prineside/tdi2/managers/music/CachedMusicManager$CacheStatus;

    aget-object p1, p1, v0

    invoke-static {}, Lcom/prineside/tdi2/Game;->getTimestampSeconds()I

    move-result v0

    iput v0, p1, Lcom/prineside/tdi2/managers/music/CachedMusicManager$CacheStatus;->lastPlayTimestamp:I

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/prineside/tdi2/managers/music/CachedMusicManager$CacheStatus;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/prineside/tdi2/managers/music/CachedMusicManager$CacheStatus;-><init>(Lcom/prineside/tdi2/managers/music/CachedMusicManager$1;)V

    iput-object p1, v0, Lcom/prineside/tdi2/managers/music/CachedMusicManager$CacheStatus;->songFileName:Ljava/lang/String;

    invoke-static {}, Lcom/prineside/tdi2/Game;->getTimestampSeconds()I

    move-result p1

    iput p1, v0, Lcom/prineside/tdi2/managers/music/CachedMusicManager$CacheStatus;->lastPlayTimestamp:I

    iget-object p1, p0, Lcom/prineside/tdi2/managers/music/CachedMusicManager;->H:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/prineside/tdi2/managers/music/CachedMusicManager;->E:Z

    return-void
.end method

.method public setup()V
    .locals 4

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->preferencesManager:Lcom/prineside/tdi2/managers/PreferencesManager;

    sget-object v1, Lcom/prineside/tdi2/Config;->PREFERENCES_NAME_SETTINGS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/PreferencesManager;->getInstance(Ljava/lang/String;)Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;

    move-result-object v0

    const-string v1, "cachedMusicStatus"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/badlogic/gdx/utils/JsonReader;

    invoke-direct {v2}, Lcom/badlogic/gdx/utils/JsonReader;-><init>()V

    const-string v3, "[]"

    invoke-virtual {v0, v1, v3}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/JsonValue;

    :try_start_0
    invoke-static {v1}, Lcom/prineside/tdi2/managers/music/CachedMusicManager$CacheStatus;->fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/managers/music/CachedMusicManager$CacheStatus;

    move-result-object v1

    iget-object v2, p0, Lcom/prineside/tdi2/managers/music/CachedMusicManager;->H:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->screenManager:Lcom/prineside/tdi2/managers/ScreenManager;

    new-instance v1, Lcom/prineside/tdi2/managers/music/CachedMusicManager$1;

    invoke-direct {v1, p0}, Lcom/prineside/tdi2/managers/music/CachedMusicManager$1;-><init>(Lcom/prineside/tdi2/managers/music/CachedMusicManager;)V

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/ScreenManager;->addListener(Lcom/prineside/tdi2/managers/ScreenManager$ScreenManagerListener;)V

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v1, Lcom/prineside/tdi2/managers/music/CachedMusicManager$2;

    invoke-direct {v1, p0}, Lcom/prineside/tdi2/managers/music/CachedMusicManager$2;-><init>(Lcom/prineside/tdi2/managers/music/CachedMusicManager;)V

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Application;->addLifecycleListener(Lcom/badlogic/gdx/LifecycleListener;)V

    invoke-super {p0}, Lcom/prineside/tdi2/managers/MusicManager;->setup()V

    return-void
.end method

.method public stopMusic()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prineside/tdi2/managers/music/CachedMusicManager;->z:Lcom/prineside/tdi2/ibxm/Module;

    sget-object v1, Lcom/prineside/tdi2/managers/music/CachedMusicManager$Status;->IDLE:Lcom/prineside/tdi2/managers/music/CachedMusicManager$Status;

    iput-object v1, p0, Lcom/prineside/tdi2/managers/music/CachedMusicManager;->y:Lcom/prineside/tdi2/managers/music/CachedMusicManager$Status;

    iput-object v0, p0, Lcom/prineside/tdi2/managers/music/CachedMusicManager;->A:Ljava/lang/String;

    return-void
.end method

.method public final t()V
    .locals 5

    new-instance v0, Lcom/badlogic/gdx/utils/Json;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->minimal:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Json;-><init>(Lcom/badlogic/gdx/utils/JsonWriter$OutputType;)V

    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Json;->setWriter(Ljava/io/Writer;)V

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Json;->writeArrayStart()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lcom/prineside/tdi2/managers/music/CachedMusicManager;->H:Lcom/badlogic/gdx/utils/Array;

    iget v4, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v3, v4, :cond_0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart()V

    iget-object v4, p0, Lcom/prineside/tdi2/managers/music/CachedMusicManager;->H:Lcom/badlogic/gdx/utils/Array;

    iget-object v4, v4, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v4, [Lcom/prineside/tdi2/managers/music/CachedMusicManager$CacheStatus;

    aget-object v4, v4, v3

    invoke-virtual {v4, v0}, Lcom/prineside/tdi2/managers/music/CachedMusicManager$CacheStatus;->toJson(Lcom/badlogic/gdx/utils/Json;)V

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Json;->writeArrayEnd()V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->preferencesManager:Lcom/prineside/tdi2/managers/PreferencesManager;

    sget-object v3, Lcom/prineside/tdi2/Config;->PREFERENCES_NAME_SETTINGS:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/prineside/tdi2/managers/PreferencesManager;->getInstance(Ljava/lang/String;)Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "cachedMusicStatus"

    invoke-virtual {v0, v3, v1}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->flush()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/prineside/tdi2/managers/music/CachedMusicManager;->G:F

    iput-boolean v2, p0, Lcom/prineside/tdi2/managers/music/CachedMusicManager;->E:Z

    return-void
.end method

.method public final u()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/managers/music/CachedMusicManager;->C:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prineside/tdi2/managers/music/CachedMusicManager;->C:Ljava/lang/Thread;

    const-string v0, "CachedMusicManager"

    const-string v1, "interrupted caching thread"

    invoke-static {v0, v1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
