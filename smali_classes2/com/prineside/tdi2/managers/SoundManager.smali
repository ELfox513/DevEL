.class public Lcom/prineside/tdi2/managers/SoundManager;
.super Lcom/prineside/tdi2/Manager$ManagerAdapter;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
    serializer = Lcom/prineside/tdi2/managers/SoundManager$Serializer;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/managers/SoundManager$SoundCfg;,
        Lcom/prineside/tdi2/managers/SoundManager$PlayingSoundStat;,
        Lcom/prineside/tdi2/managers/SoundManager$Serializer;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Thread;

.field public final b:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/managers/SoundManager$SoundCfg;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/managers/SoundManager$SoundCfg;",
            ">;"
        }
    .end annotation
.end field

.field public final playingSoundStats:Lcom/badlogic/gdx/utils/DelayedRemovalArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/DelayedRemovalArray<",
            "Lcom/prineside/tdi2/managers/SoundManager$PlayingSoundStat;",
            ">;"
        }
    .end annotation
.end field

.field public final soundsToPlay:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/managers/SoundManager$SoundCfg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    const-class v0, Lcom/prineside/tdi2/managers/SoundManager$SoundCfg;

    invoke-direct {p0}, Lcom/prineside/tdi2/Manager$ManagerAdapter;-><init>()V

    new-instance v1, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/prineside/tdi2/managers/SoundManager;->soundsToPlay:Lcom/badlogic/gdx/utils/Array;

    new-instance v1, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/prineside/tdi2/managers/SoundManager;->b:Lcom/badlogic/gdx/utils/Array;

    new-instance v1, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/prineside/tdi2/managers/SoundManager;->d:Lcom/badlogic/gdx/utils/Array;

    new-instance v0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const-class v1, Lcom/prineside/tdi2/managers/SoundManager$PlayingSoundStat;

    const/4 v2, 0x0

    const/16 v3, 0x40

    invoke-direct {v0, v2, v3, v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;-><init>(ZILjava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/managers/SoundManager;->playingSoundStats:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/SoundManager;->d()V

    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/managers/SoundManager;)Lcom/badlogic/gdx/utils/Array;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/managers/SoundManager;->b:Lcom/badlogic/gdx/utils/Array;

    return-object p0
.end method

.method public static synthetic b(Lcom/prineside/tdi2/managers/SoundManager;)Lcom/badlogic/gdx/utils/Array;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/managers/SoundManager;->d:Lcom/badlogic/gdx/utils/Array;

    return-object p0
.end method


# virtual methods
.method public final c(Lcom/prineside/StaticSound;FFFZ)V
    .locals 4

    if-eqz p1, :cond_6

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/SettingsManager;->isSoundEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->SOUND_VOLUME:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/SettingsManager;->getCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float p2, p2, v0

    if-eqz p5, :cond_0

    iget-object p1, p1, Lcom/prineside/StaticSound;->sound:Lcom/badlogic/gdx/audio/Sound;

    invoke-interface {p1, p2, p3, p4}, Lcom/badlogic/gdx/audio/Sound;->loop(FFF)J

    goto :goto_2

    :cond_0
    iget-object p5, p0, Lcom/prineside/tdi2/managers/SoundManager;->soundsToPlay:Lcom/badlogic/gdx/utils/Array;

    monitor-enter p5

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/prineside/tdi2/managers/SoundManager;->soundsToPlay:Lcom/badlogic/gdx/utils/Array;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v2, :cond_2

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/managers/SoundManager$SoundCfg;

    aget-object v1, v1, v0

    iget-object v2, v1, Lcom/prineside/tdi2/managers/SoundManager$SoundCfg;->a:Lcom/prineside/StaticSound;

    if-ne v2, p1, :cond_1

    iget p1, v1, Lcom/prineside/tdi2/managers/SoundManager$SoundCfg;->b:F

    invoke-static {p1, p2}, Ljava/lang/StrictMath;->max(FF)F

    move-result p1

    iput p1, v1, Lcom/prineside/tdi2/managers/SoundManager$SoundCfg;->b:F

    iget p1, v1, Lcom/prineside/tdi2/managers/SoundManager$SoundCfg;->k:F

    add-float/2addr p1, p4

    const/high16 p2, 0x3f000000    # 0.5f

    mul-float p1, p1, p2

    iput p1, v1, Lcom/prineside/tdi2/managers/SoundManager$SoundCfg;->k:F

    monitor-exit p5

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/prineside/tdi2/managers/SoundManager;->d:Lcom/badlogic/gdx/utils/Array;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lcom/prineside/tdi2/managers/SoundManager;->d:Lcom/badlogic/gdx/utils/Array;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v3, 0x0

    if-lez v2, :cond_3

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/managers/SoundManager$SoundCfg;

    goto :goto_1

    :cond_3
    move-object v1, v3

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_4

    :try_start_2
    new-instance v1, Lcom/prineside/tdi2/managers/SoundManager$SoundCfg;

    invoke-direct {v1, v3}, Lcom/prineside/tdi2/managers/SoundManager$SoundCfg;-><init>(Lcom/prineside/tdi2/managers/SoundManager$1;)V

    :cond_4
    iput-object p1, v1, Lcom/prineside/tdi2/managers/SoundManager$SoundCfg;->a:Lcom/prineside/StaticSound;

    iput p2, v1, Lcom/prineside/tdi2/managers/SoundManager$SoundCfg;->b:F

    iput p4, v1, Lcom/prineside/tdi2/managers/SoundManager$SoundCfg;->k:F

    iput p3, v1, Lcom/prineside/tdi2/managers/SoundManager$SoundCfg;->d:F

    iget-object p1, p0, Lcom/prineside/tdi2/managers/SoundManager;->soundsToPlay:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    monitor-exit p5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    :catchall_1
    move-exception p1

    monitor-exit p5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1

    :cond_5
    :goto_2
    return-void

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "sound is nul"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public final d()V
    .locals 3

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/prineside/tdi2/managers/SoundManager$1;

    invoke-direct {v1, p0}, Lcom/prineside/tdi2/managers/SoundManager$1;-><init>(Lcom/prineside/tdi2/managers/SoundManager;)V

    const-string v2, "Sounds"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/prineside/tdi2/managers/SoundManager;->a:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/SoundManager;->a:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/SoundManager;->a:Ljava/lang/Thread;

    invoke-static {v0}, Lcom/prineside/tdi2/Logger;->handleThreadExceptionsForgiving(Ljava/lang/Thread;)V

    return-void
.end method

.method public getRarity(Lcom/prineside/tdi2/enums/RarityType;)Lcom/prineside/tdi2/enums/StaticSoundType;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/managers/SoundManager$2;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    sget-object p1, Lcom/prineside/tdi2/enums/StaticSoundType;->LOOT_LEGENDARY:Lcom/prineside/tdi2/enums/StaticSoundType;

    return-object p1

    :cond_1
    sget-object p1, Lcom/prineside/tdi2/enums/StaticSoundType;->LOOT_EPIC:Lcom/prineside/tdi2/enums/StaticSoundType;

    return-object p1

    :cond_2
    sget-object p1, Lcom/prineside/tdi2/enums/StaticSoundType;->LOOT_VERY_RARE:Lcom/prineside/tdi2/enums/StaticSoundType;

    return-object p1

    :cond_3
    sget-object p1, Lcom/prineside/tdi2/enums/StaticSoundType;->LOOT_RARE:Lcom/prineside/tdi2/enums/StaticSoundType;

    return-object p1

    :cond_4
    sget-object p1, Lcom/prineside/tdi2/enums/StaticSoundType;->LOOT_COMMON:Lcom/prineside/tdi2/enums/StaticSoundType;

    return-object p1
.end method

.method public playRarity(Lcom/prineside/tdi2/enums/RarityType;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/managers/SoundManager;->getRarity(Lcom/prineside/tdi2/enums/RarityType;)Lcom/prineside/tdi2/enums/StaticSoundType;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/managers/SoundManager;->playStatic(Lcom/prineside/tdi2/enums/StaticSoundType;)V

    return-void
.end method

.method public playStatic(Lcom/prineside/tdi2/enums/StaticSoundType;)V
    .locals 6

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/prineside/tdi2/managers/SoundManager;->playStatic(Lcom/prineside/tdi2/enums/StaticSoundType;FFFZ)V

    return-void
.end method

.method public playStatic(Lcom/prineside/tdi2/enums/StaticSoundType;FFFZ)V
    .locals 7

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/SettingsManager;->isSoundEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/managers/AssetManager;->getSound(Lcom/prineside/tdi2/enums/StaticSoundType;)Lcom/prineside/StaticSound;

    move-result-object v2

    if-eqz v2, :cond_1

    move-object v1, p0

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/prineside/tdi2/managers/SoundManager;->c(Lcom/prineside/StaticSound;FFFZ)V

    :cond_1
    return-void
.end method
