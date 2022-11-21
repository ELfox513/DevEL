.class Lcom/prineside/tdi2/managers/SoundManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/managers/SoundManager;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final a:Lcom/badlogic/gdx/utils/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Pool<",
            "Lcom/prineside/tdi2/managers/SoundManager$PlayingSoundStat;",
            ">;"
        }
    .end annotation
.end field

.field public b:J

.field public final synthetic d:Lcom/prineside/tdi2/managers/SoundManager;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/managers/SoundManager;)V
    .locals 2

    iput-object p1, p0, Lcom/prineside/tdi2/managers/SoundManager$1;->d:Lcom/prineside/tdi2/managers/SoundManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/prineside/tdi2/managers/SoundManager$1$1;

    invoke-direct {p1, p0}, Lcom/prineside/tdi2/managers/SoundManager$1$1;-><init>(Lcom/prineside/tdi2/managers/SoundManager$1;)V

    iput-object p1, p0, Lcom/prineside/tdi2/managers/SoundManager$1;->a:Lcom/badlogic/gdx/utils/Pool;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/prineside/tdi2/managers/SoundManager$1;->b:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    :goto_0
    invoke-static {}, Lcom/prineside/tdi2/Game;->getTimestampMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/prineside/tdi2/managers/SoundManager$1;->b:J

    sub-long v4, v0, v2

    const-wide/16 v6, -0x1

    cmp-long v8, v2, v6

    if-nez v8, :cond_0

    const-wide/16 v4, 0x0

    :cond_0
    iput-wide v0, p0, Lcom/prineside/tdi2/managers/SoundManager$1;->b:J

    iget-object v0, p0, Lcom/prineside/tdi2/managers/SoundManager$1;->d:Lcom/prineside/tdi2/managers/SoundManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/SoundManager;->playingSoundStats:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/prineside/tdi2/managers/SoundManager$1;->d:Lcom/prineside/tdi2/managers/SoundManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/SoundManager;->playingSoundStats:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v3, :cond_2

    iget-object v3, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Lcom/prineside/tdi2/managers/SoundManager$PlayingSoundStat;

    aget-object v3, v3, v1

    iget v6, v3, Lcom/prineside/tdi2/managers/SoundManager$PlayingSoundStat;->durationLeft:I

    int-to-long v6, v6

    sub-long/2addr v6, v4

    long-to-int v7, v6

    iput v7, v3, Lcom/prineside/tdi2/managers/SoundManager$PlayingSoundStat;->durationLeft:I

    if-gtz v7, :cond_1

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->removeIndex(I)Ljava/lang/Object;

    iget-object v2, p0, Lcom/prineside/tdi2/managers/SoundManager$1;->a:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    iget-object v1, p0, Lcom/prineside/tdi2/managers/SoundManager$1;->d:Lcom/prineside/tdi2/managers/SoundManager;

    iget-object v2, v1, Lcom/prineside/tdi2/managers/SoundManager;->soundsToPlay:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v2, :cond_4

    :try_start_0
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/prineside/tdi2/Game;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "SoundManager"

    const-string v1, "game is disposed - stopping Sound thread (1)"

    invoke-static {v0, v1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    const-wide/16 v0, 0x10

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void

    :cond_4
    invoke-static {v1}, Lcom/prineside/tdi2/managers/SoundManager;->a(Lcom/prineside/tdi2/managers/SoundManager;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->clear()V

    iget-object v1, p0, Lcom/prineside/tdi2/managers/SoundManager$1;->d:Lcom/prineside/tdi2/managers/SoundManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/SoundManager;->soundsToPlay:Lcom/badlogic/gdx/utils/Array;

    monitor-enter v1

    :try_start_1
    iget-object v2, p0, Lcom/prineside/tdi2/managers/SoundManager$1;->d:Lcom/prineside/tdi2/managers/SoundManager;

    invoke-static {v2}, Lcom/prineside/tdi2/managers/SoundManager;->a(Lcom/prineside/tdi2/managers/SoundManager;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v2

    iget-object v3, p0, Lcom/prineside/tdi2/managers/SoundManager$1;->d:Lcom/prineside/tdi2/managers/SoundManager;

    iget-object v3, v3, Lcom/prineside/tdi2/managers/SoundManager;->soundsToPlay:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/Array;->addAll(Lcom/badlogic/gdx/utils/Array;)V

    iget-object v2, p0, Lcom/prineside/tdi2/managers/SoundManager$1;->d:Lcom/prineside/tdi2/managers/SoundManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/SoundManager;->soundsToPlay:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->clear()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :goto_2
    iget-object v1, p0, Lcom/prineside/tdi2/managers/SoundManager$1;->d:Lcom/prineside/tdi2/managers/SoundManager;

    invoke-static {v1}, Lcom/prineside/tdi2/managers/SoundManager;->a(Lcom/prineside/tdi2/managers/SoundManager;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v1

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v1, :cond_5

    iget-object v1, p0, Lcom/prineside/tdi2/managers/SoundManager$1;->d:Lcom/prineside/tdi2/managers/SoundManager;

    invoke-static {v1}, Lcom/prineside/tdi2/managers/SoundManager;->a(Lcom/prineside/tdi2/managers/SoundManager;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v1

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/managers/SoundManager$SoundCfg;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/prineside/tdi2/managers/SoundManager$1;->a:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/managers/SoundManager$PlayingSoundStat;

    iget-object v3, v1, Lcom/prineside/tdi2/managers/SoundManager$SoundCfg;->a:Lcom/prineside/StaticSound;

    iget-object v4, v3, Lcom/prineside/StaticSound;->type:Lcom/prineside/tdi2/enums/StaticSoundType;

    iput-object v4, v2, Lcom/prineside/tdi2/managers/SoundManager$PlayingSoundStat;->type:Lcom/prineside/tdi2/enums/StaticSoundType;

    iget v3, v3, Lcom/prineside/StaticSound;->durationMs:I

    int-to-float v3, v3

    iget v4, v1, Lcom/prineside/tdi2/managers/SoundManager$SoundCfg;->d:F

    div-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Lcom/prineside/tdi2/managers/SoundManager$PlayingSoundStat;->durationLeft:I

    iget-object v3, p0, Lcom/prineside/tdi2/managers/SoundManager$1;->d:Lcom/prineside/tdi2/managers/SoundManager;

    iget-object v3, v3, Lcom/prineside/tdi2/managers/SoundManager;->playingSoundStats:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :try_start_2
    iget-object v2, v1, Lcom/prineside/tdi2/managers/SoundManager$SoundCfg;->a:Lcom/prineside/StaticSound;

    iget-object v2, v2, Lcom/prineside/StaticSound;->sound:Lcom/badlogic/gdx/audio/Sound;

    iget v3, v1, Lcom/prineside/tdi2/managers/SoundManager$SoundCfg;->b:F

    iget v4, v1, Lcom/prineside/tdi2/managers/SoundManager$SoundCfg;->d:F

    iget v5, v1, Lcom/prineside/tdi2/managers/SoundManager$SoundCfg;->k:F

    invoke-interface {v2, v3, v4, v5}, Lcom/badlogic/gdx/audio/Sound;->play(FFF)J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/SoundManager$SoundCfg;->reset()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/SoundManager$SoundCfg;->reset()V

    throw v0

    :catch_1
    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/SoundManager$SoundCfg;->reset()V

    :cond_5
    iget-object v0, p0, Lcom/prineside/tdi2/managers/SoundManager$1;->d:Lcom/prineside/tdi2/managers/SoundManager;

    invoke-static {v0}, Lcom/prineside/tdi2/managers/SoundManager;->b(Lcom/prineside/tdi2/managers/SoundManager;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/prineside/tdi2/managers/SoundManager$1;->d:Lcom/prineside/tdi2/managers/SoundManager;

    invoke-static {v1}, Lcom/prineside/tdi2/managers/SoundManager;->b(Lcom/prineside/tdi2/managers/SoundManager;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v1

    iget-object v2, p0, Lcom/prineside/tdi2/managers/SoundManager$1;->d:Lcom/prineside/tdi2/managers/SoundManager;

    invoke-static {v2}, Lcom/prineside/tdi2/managers/SoundManager;->a(Lcom/prineside/tdi2/managers/SoundManager;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Array;->addAll(Lcom/badlogic/gdx/utils/Array;)V

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/SoundManager$1;->d:Lcom/prineside/tdi2/managers/SoundManager;

    invoke-static {v0}, Lcom/prineside/tdi2/managers/SoundManager;->a(Lcom/prineside/tdi2/managers/SoundManager;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/prineside/tdi2/Game;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "SoundManager"

    const-string v1, "game is disposed - stopping Sound thread (2)"

    invoke-static {v0, v1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_6
    const-wide/16 v0, 0xa

    :try_start_4
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void

    :catchall_1
    move-exception v1

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v1

    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method
