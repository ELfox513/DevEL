.class public Lcom/prineside/tdi2/managers/music/LiveMusicManager;
.super Lcom/prineside/tdi2/managers/MusicManager;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
    serializer = Lcom/prineside/tdi2/managers/MusicManager$Serializer;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/managers/music/LiveMusicManager$PcmBuffer;,
        Lcom/prineside/tdi2/managers/music/LiveMusicManager$SynthesizerStatus;,
        Lcom/prineside/tdi2/managers/music/LiveMusicManager$PlaybackStatus;,
        Lcom/prineside/tdi2/managers/music/LiveMusicManager$RestartableAudioDevice;
    }
.end annotation


# static fields
.field public static final O:[F

.field public static final SPECTRUM_SIZE:I


# instance fields
.field public A:Lcom/prineside/tdi2/managers/music/LiveMusicManager$SynthesizerStatus;

.field public B:Lcom/prineside/tdi2/managers/music/LiveMusicManager$PlaybackStatus;

.field public C:Lcom/badlogic/gdx/audio/analysis/FFT;

.field public D:[F

.field public E:Z

.field public G:Lcom/badlogic/gdx/audio/AudioDevice;

.field public H:Z

.field public I:Z

.field public J:Z

.field public K:[I

.field public L:J

.field public M:Ljava/lang/Thread;

.field public N:Ljava/lang/Thread;

.field public ibxm:Lcom/prineside/tdi2/ibxm/IBXM;

.field public spectrumLeft:[F

.field public final spectrumLock:Ljava/lang/Object;

.field public spectrumMaxValue:F

.field public spectrumRight:[F

.field public spectrumTemp:[F

.field public final y:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/managers/music/LiveMusicManager$PcmBuffer;",
            ">;"
        }
    .end annotation
.end field

.field public final z:[Lcom/prineside/tdi2/managers/music/LiveMusicManager$PcmBuffer;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xa

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->O:[F

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->SPECTRUM_SIZE:I

    return-void

    nop

    :array_0
    .array-data 4
        0x41a00000    # 20.0f
        0x425c0000    # 55.0f
        0x42dc0000    # 110.0f
        0x435c0000    # 220.0f
        0x43dc0000    # 440.0f
        0x445c0000    # 880.0f
        0x44dc0000    # 1760.0f
        0x455c0000    # 3520.0f
        0x45dc0000    # 7040.0f
        0x465c0000    # 14080.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Lcom/prineside/tdi2/managers/MusicManager;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/prineside/tdi2/managers/music/LiveMusicManager$PcmBuffer;

    const/4 v2, 0x1

    const/4 v3, 0x3

    invoke-direct {v0, v2, v3, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(ZILjava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->y:Lcom/badlogic/gdx/utils/Array;

    new-array v0, v3, [Lcom/prineside/tdi2/managers/music/LiveMusicManager$PcmBuffer;

    iput-object v0, p0, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->z:[Lcom/prineside/tdi2/managers/music/LiveMusicManager$PcmBuffer;

    sget-object v0, Lcom/prineside/tdi2/managers/music/LiveMusicManager$SynthesizerStatus;->NOT_ACTIVE:Lcom/prineside/tdi2/managers/music/LiveMusicManager$SynthesizerStatus;

    iput-object v0, p0, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->A:Lcom/prineside/tdi2/managers/music/LiveMusicManager$SynthesizerStatus;

    sget-object v0, Lcom/prineside/tdi2/managers/music/LiveMusicManager$PlaybackStatus;->STARTING:Lcom/prineside/tdi2/managers/music/LiveMusicManager$PlaybackStatus;

    iput-object v0, p0, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->B:Lcom/prineside/tdi2/managers/music/LiveMusicManager$PlaybackStatus;

    sget v0, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->SPECTRUM_SIZE:I

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->spectrumLeft:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->spectrumRight:[F

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->spectrumTemp:[F

    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->spectrumMaxValue:F

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->spectrumLock:Ljava/lang/Object;

    new-array v0, v2, [I

    iput-object v0, p0, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->K:[I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->L:J

    invoke-static {}, Lcom/prineside/tdi2/Config;->isHeadless()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "LiveMusicManager"

    const-string v1, "initializing"

    invoke-static {v0, v1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    iget-object v1, p0, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->z:[Lcom/prineside/tdi2/managers/music/LiveMusicManager$PcmBuffer;

    new-instance v4, Lcom/prineside/tdi2/managers/music/LiveMusicManager$PcmBuffer;

    invoke-direct {v4, p0}, Lcom/prineside/tdi2/managers/music/LiveMusicManager$PcmBuffer;-><init>(Lcom/prineside/tdi2/managers/music/LiveMusicManager;)V

    aput-object v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/prineside/tdi2/managers/music/b;

    invoke-direct {v1, p0}, Lcom/prineside/tdi2/managers/music/b;-><init>(Lcom/prineside/tdi2/managers/music/LiveMusicManager;)V

    const-string v3, "IBXM synthesizer"

    invoke-direct {v0, v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->M:Ljava/lang/Thread;

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->M:Ljava/lang/Thread;

    invoke-static {v0}, Lcom/prineside/tdi2/Logger;->handleThreadExceptionsForgiving(Ljava/lang/Thread;)V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->M:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->q()V

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v1, Lcom/prineside/tdi2/managers/music/LiveMusicManager$1;

    invoke-direct {v1, p0}, Lcom/prineside/tdi2/managers/music/LiveMusicManager$1;-><init>(Lcom/prineside/tdi2/managers/music/LiveMusicManager;)V

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Application;->addLifecycleListener(Lcom/badlogic/gdx/LifecycleListener;)V

    return-void
.end method

.method public static synthetic e(Lcom/prineside/tdi2/managers/music/LiveMusicManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->m()V

    return-void
.end method

.method public static synthetic f(Lcom/prineside/tdi2/managers/music/LiveMusicManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->k()V

    return-void
.end method

.method public static synthetic g(Lcom/prineside/tdi2/managers/music/LiveMusicManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->l()V

    return-void
.end method

.method public static synthetic h(Lcom/prineside/tdi2/managers/music/LiveMusicManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->I:Z

    return p1
.end method

.method private synthetic k()V
    .locals 12

    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->J:Z

    const-wide/16 v1, 0xc8

    if-eqz v0, :cond_19

    iget-boolean v0, p0, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->I:Z

    if-nez v0, :cond_0

    goto/16 :goto_e

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->ibxm:Lcom/prineside/tdi2/ibxm/IBXM;

    if-nez v0, :cond_1

    sget-object v0, Lcom/prineside/tdi2/managers/music/LiveMusicManager$SynthesizerStatus;->SLEEP_NO_IBXM:Lcom/prineside/tdi2/managers/music/LiveMusicManager$SynthesizerStatus;

    iput-object v0, p0, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->A:Lcom/prineside/tdi2/managers/music/LiveMusicManager$SynthesizerStatus;

    const-wide/16 v0, 0x64

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    move-object v4, v3

    :cond_2
    :goto_1
    const/4 v5, 0x0

    if-nez v4, :cond_7

    :goto_2
    iget-object v6, p0, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->z:[Lcom/prineside/tdi2/managers/music/LiveMusicManager$PcmBuffer;

    array-length v7, v6

    if-ge v5, v7, :cond_4

    aget-object v7, v6, v5

    if-eqz v7, :cond_3

    aput-object v3, v6, v5

    move-object v4, v7

    goto :goto_3

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    if-nez v4, :cond_2

    iget-boolean v5, p0, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->I:Z

    if-eqz v5, :cond_5

    iget-boolean v6, p0, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->J:Z

    if-eqz v6, :cond_5

    sget-object v5, Lcom/prineside/tdi2/managers/music/LiveMusicManager$SynthesizerStatus;->SLEEP_NO_FREE_BUFFER:Lcom/prineside/tdi2/managers/music/LiveMusicManager$SynthesizerStatus;

    iput-object v5, p0, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->A:Lcom/prineside/tdi2/managers/music/LiveMusicManager$SynthesizerStatus;

    const-wide/16 v5, 0x32

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_1

    :cond_5
    if-nez v5, :cond_6

    sget-object v5, Lcom/prineside/tdi2/managers/music/LiveMusicManager$SynthesizerStatus;->SLEEP_APP_INACTIVE:Lcom/prineside/tdi2/managers/music/LiveMusicManager$SynthesizerStatus;

    iput-object v5, p0, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->A:Lcom/prineside/tdi2/managers/music/LiveMusicManager$SynthesizerStatus;

    goto :goto_4

    :cond_6
    sget-object v5, Lcom/prineside/tdi2/managers/music/LiveMusicManager$SynthesizerStatus;->SLEEP_NOT_PLAYING:Lcom/prineside/tdi2/managers/music/LiveMusicManager$SynthesizerStatus;

    iput-object v5, p0, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->A:Lcom/prineside/tdi2/managers/music/LiveMusicManager$SynthesizerStatus;

    :goto_4
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_1

    :cond_7
    iget-object v1, p0, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->K:[I

    array-length v1, v1

    const/4 v2, 0x2

    mul-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {v4, v1}, Lcom/prineside/tdi2/managers/music/LiveMusicManager$PcmBuffer;->a(I)V

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_5
    if-ge v1, v2, :cond_c

    iget-object v6, p0, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->K:[I

    invoke-virtual {v0, v6}, Lcom/prineside/tdi2/ibxm/IBXM;->getAudio([I)I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    const/4 v7, 0x0

    :goto_6
    if-ge v7, v6, :cond_a

    iget-object v8, p0, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->K:[I

    aget v8, v8, v7

    const/16 v9, 0x7fff

    if-le v8, v9, :cond_8

    const/16 v8, 0x7fff

    :cond_8
    const/16 v9, -0x8000

    if-ge v8, v9, :cond_9

    const/16 v8, -0x8000

    :cond_9
    iget-object v9, v4, Lcom/prineside/tdi2/managers/music/LiveMusicManager$PcmBuffer;->data:[S

    add-int/lit8 v10, v3, 0x1

    int-to-short v8, v8

    aput-short v8, v9, v3

    add-int/lit8 v7, v7, 0x1

    move v3, v10

    goto :goto_6

    :cond_a
    invoke-virtual {v0}, Lcom/prineside/tdi2/ibxm/IBXM;->getModule()Lcom/prineside/tdi2/ibxm/Module;

    move-result-object v6

    iget v6, v6, Lcom/prineside/tdi2/ibxm/Module;->restartPos:I

    if-eqz v6, :cond_b

    invoke-virtual {v0}, Lcom/prineside/tdi2/ibxm/IBXM;->getSequencePos()I

    move-result v6

    iget v7, v0, Lcom/prineside/tdi2/ibxm/IBXM;->lastSeqPos:I

    if-ge v6, v7, :cond_b

    invoke-virtual {v0}, Lcom/prineside/tdi2/ibxm/IBXM;->getModule()Lcom/prineside/tdi2/ibxm/Module;

    move-result-object v6

    iget v6, v6, Lcom/prineside/tdi2/ibxm/Module;->restartPos:I

    invoke-virtual {v0, v6}, Lcom/prineside/tdi2/ibxm/IBXM;->setSequencePos(I)V

    :cond_b
    invoke-virtual {v0}, Lcom/prineside/tdi2/ibxm/IBXM;->getSequencePos()I

    move-result v6

    iput v6, v0, Lcom/prineside/tdi2/ibxm/IBXM;->lastSeqPos:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_c
    iput v3, v4, Lcom/prineside/tdi2/managers/music/LiveMusicManager$PcmBuffer;->length:I

    iget-object v0, v4, Lcom/prineside/tdi2/managers/music/LiveMusicManager$PcmBuffer;->data:[S

    add-int/lit8 v1, v3, -0x1

    invoke-static {v1}, Lcom/badlogic/gdx/math/MathUtils;->nextPowerOfTwo(I)I

    move-result v1

    const/4 v6, 0x1

    sub-int/2addr v1, v6

    invoke-static {v0, v3, v1, v5}, Ljava/util/Arrays;->fill([SIIS)V

    if-nez v3, :cond_10

    sget-object v0, Lcom/prineside/tdi2/managers/music/LiveMusicManager$SynthesizerStatus;->SLEEP_NO_AUDIO_DATA:Lcom/prineside/tdi2/managers/music/LiveMusicManager$SynthesizerStatus;

    iput-object v0, p0, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->A:Lcom/prineside/tdi2/managers/music/LiveMusicManager$SynthesizerStatus;

    iget-object v0, p0, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->z:[Lcom/prineside/tdi2/managers/music/LiveMusicManager$PcmBuffer;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    :goto_7
    :try_start_1
    iget-object v2, p0, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->z:[Lcom/prineside/tdi2/managers/music/LiveMusicManager$PcmBuffer;

    array-length v3, v2

    if-ge v1, v3, :cond_e

    aget-object v3, v2, v1

    if-nez v3, :cond_d

    aput-object v4, v2, v1

    const/4 v5, 0x1

    goto :goto_8

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_e
    :goto_8
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v5, :cond_f

    :try_start_2
    const-string v0, "LiveMusicManager"

    const-string v1, "buffer not freed - no space"

    invoke-static {v0, v1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    const-wide/16 v0, 0x5

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    :cond_10
    iget v0, v4, Lcom/prineside/tdi2/managers/music/LiveMusicManager$PcmBuffer;->length:I

    sub-int/2addr v0, v6

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->nextPowerOfTwo(I)I

    move-result v0

    div-int/2addr v0, v2

    iget-object v1, p0, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->C:Lcom/badlogic/gdx/audio/analysis/FFT;

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->getTimeSize()I

    move-result v1

    if-eq v1, v0, :cond_12

    :cond_11
    new-instance v1, Lcom/badlogic/gdx/audio/analysis/FFT;

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->getSampleRate()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v1, v0, v3}, Lcom/badlogic/gdx/audio/analysis/FFT;-><init>(IF)V

    iput-object v1, p0, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->C:Lcom/badlogic/gdx/audio/analysis/FFT;

    const/16 v3, 0xb

    invoke-virtual {v1, v3, v6}, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->logAverages(II)V

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->D:[F

    :cond_12
    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v2, :cond_18

    const/4 v3, 0x3

    :goto_a
    if-ge v3, v0, :cond_13

    iget-object v6, p0, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->D:[F

    iget-object v7, v4, Lcom/prineside/tdi2/managers/music/LiveMusicManager$PcmBuffer;->data:[S

    mul-int/lit8 v8, v3, 0x2

    add-int/2addr v8, v1

    aget-short v7, v7, v8

    int-to-float v7, v7

    const/high16 v8, 0x47000000    # 32768.0f

    div-float/2addr v7, v8

    aput v7, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_13
    iget-object v3, p0, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->C:Lcom/badlogic/gdx/audio/analysis/FFT;

    iget-object v6, p0, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->D:[F

    invoke-virtual {v3, v6}, Lcom/badlogic/gdx/audio/analysis/FFT;->forward([F)V

    iget-object v3, p0, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->C:Lcom/badlogic/gdx/audio/analysis/FFT;

    invoke-virtual {v3}, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->getSpectrum()[F

    move-result-object v3

    const/4 v6, 0x0

    :goto_b
    iget-object v7, p0, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->spectrumTemp:[F

    array-length v7, v7

    if-ge v6, v7, :cond_16

    iget-object v7, p0, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->C:Lcom/badlogic/gdx/audio/analysis/FFT;

    sget-object v8, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->O:[F

    aget v9, v8, v6

    invoke-virtual {v7, v9}, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->freqToIndex(F)I

    move-result v7

    iget-object v9, p0, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->C:Lcom/badlogic/gdx/audio/analysis/FFT;

    add-int/lit8 v10, v6, 0x1

    aget v8, v8, v10

    invoke-virtual {v9, v8}, Lcom/badlogic/gdx/audio/analysis/FourierTransform;->freqToIndex(F)I

    move-result v8

    const/4 v9, 0x0

    :goto_c
    if-gt v7, v8, :cond_14

    aget v11, v3, v7

    add-float/2addr v9, v11

    add-int/lit8 v7, v7, 0x1

    goto :goto_c

    :cond_14
    iget v7, p0, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->spectrumMaxValue:F

    cmpg-float v7, v7, v9

    if-gez v7, :cond_15

    iput v9, p0, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->spectrumMaxValue:F

    :cond_15
    iget v7, p0, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->spectrumMaxValue:F

    div-float/2addr v9, v7

    iget-object v7, p0, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->spectrumTemp:[F

    aput v9, v7, v6

    move v6, v10

    goto :goto_b

    :cond_16
    iget-object v3, p0, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->spectrumLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :try_start_5
    iget-object v6, p0, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->spectrumTemp:[F

    if-nez v1, :cond_17

    iget-object v7, p0, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->spectrumLeft:[F

    goto :goto_d

    :cond_17
    iget-object v7, p0, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->spectrumRight:[F

    :goto_d
    array-length v8, v6

    invoke-static {v6, v5, v7, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    monitor-exit v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :catchall_1
    move-exception v0

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0

    :cond_18
    iget-object v0, p0, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->y:Lcom/badlogic/gdx/utils/Array;

    monitor-enter v0
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :try_start_7
    iget-object v1, p0, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->y:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    sget-object v0, Lcom/prineside/tdi2/managers/music/LiveMusicManager$SynthesizerStatus;->ACTIVE:Lcom/prineside/tdi2/managers/music/LiveMusicManager$SynthesizerStatus;

    iput-object v0, p0, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->A:Lcom/prineside/tdi2/managers/music/LiveMusicManager$SynthesizerStatus;
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_0

    :catchall_2
    move-exception v1

    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v1

    :cond_19
    :goto_e
    iget-boolean v0, p0, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->I:Z

    if-nez v0, :cond_1a

    sget-object v0, Lcom/prineside/tdi2/managers/music/LiveMusicManager$SynthesizerStatus;->SLEEP_APP_INACTIVE:Lcom/prineside/tdi2/managers/music/LiveMusicManager$SynthesizerStatus;

    iput-object v0, p0, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->A:Lcom/prineside/tdi2/managers/music/LiveMusicManager$SynthesizerStatus;

    goto :goto_f

    :cond_1a
    sget-object v0, Lcom/prineside/tdi2/managers/music/LiveMusicManager$SynthesizerStatus;->SLEEP_NOT_PLAYING:Lcom/prineside/tdi2/managers/music/LiveMusicManager$SynthesizerStatus;

    iput-object v0, p0, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->A:Lcom/prineside/tdi2/managers/music/LiveMusicManager$SynthesizerStatus;

    :goto_f
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    const-string v1, "LiveMusicManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "synthesizer stopped: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic l()V
    .locals 9

    sget-object v0, Lcom/prineside/tdi2/managers/music/LiveMusicManager$PlaybackStatus;->STARTING:Lcom/prineside/tdi2/managers/music/LiveMusicManager$PlaybackStatus;

    iput-object v0, p0, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->B:Lcom/prineside/tdi2/managers/music/LiveMusicManager$PlaybackStatus;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    rem-int/lit16 v0, v0, 0x3e8

    const-string v1, "LiveMusicManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "started playback thread "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    const/4 v2, 0x0

    if-nez v1, :cond_3

    :try_start_0
    iget-object v3, p0, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->y:Lcom/badlogic/gdx/utils/Array;

    iget v4, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eqz v4, :cond_2

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    iget-object v1, p0, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->y:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/managers/music/LiveMusicManager$PcmBuffer;

    monitor-exit v3

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1

    :cond_2
    :goto_1
    if-nez v1, :cond_1

    sget-object v2, Lcom/prineside/tdi2/managers/music/LiveMusicManager$PlaybackStatus;->SLEEP_NO_BUFFER:Lcom/prineside/tdi2/managers/music/LiveMusicManager$PlaybackStatus;

    iput-object v2, p0, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->B:Lcom/prineside/tdi2/managers/music/LiveMusicManager$PlaybackStatus;

    const-wide/16 v2, 0x14

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->G:Lcom/badlogic/gdx/audio/AudioDevice;

    iget-boolean v4, p0, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->J:Z

    const/4 v5, 0x1

    if-eqz v4, :cond_5

    iget-boolean v4, p0, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->I:Z

    if-eqz v4, :cond_5

    if-eqz v3, :cond_5

    iget-boolean v4, p0, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->H:Z

    if-eqz v4, :cond_5

    sget-object v4, Lcom/prineside/tdi2/managers/music/LiveMusicManager$PlaybackStatus;->ACTIVE:Lcom/prineside/tdi2/managers/music/LiveMusicManager$PlaybackStatus;

    iput-object v4, p0, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->B:Lcom/prineside/tdi2/managers/music/LiveMusicManager$PlaybackStatus;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    invoke-static {}, Lcom/prineside/tdi2/Game;->getTimestampMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->L:J

    iget-object v4, v1, Lcom/prineside/tdi2/managers/music/LiveMusicManager$PcmBuffer;->data:[S

    iget v6, v1, Lcom/prineside/tdi2/managers/music/LiveMusicManager$PcmBuffer;->length:I

    invoke-interface {v3, v4, v2, v6}, Lcom/badlogic/gdx/audio/AudioDevice;->writeSamples([SII)V

    iget-wide v3, p0, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->L:J

    const-wide/16 v6, -0x2

    cmp-long v8, v3, v6

    if-nez v8, :cond_4

    const-string v3, "LiveMusicManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "playback thread "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " stops because someone has requested that due to large writeSamples delay"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v5, p0, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->E:Z

    const/4 v3, 0x1

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    :goto_2
    const-wide/16 v6, -0x1

    iput-wide v6, p0, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->L:J
    :try_end_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_6

    :catch_0
    move-exception v3

    :try_start_4
    const-string v4, "LiveMusicManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "writeSamples failed - GdxRuntimeException "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v3}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-boolean v5, p0, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->E:Z

    goto :goto_3

    :catch_1
    move-exception v3

    const-string v4, "LiveMusicManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "writeSamples failed - UnsatisfiedLinkError "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v3}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-boolean v5, p0, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->E:Z

    :goto_3
    const/4 v3, 0x1

    goto :goto_6

    :cond_5
    if-eqz v3, :cond_8

    iget-boolean v3, p0, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->H:Z

    if-nez v3, :cond_6

    goto :goto_4

    :cond_6
    iget-boolean v3, p0, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->I:Z

    if-nez v3, :cond_7

    sget-object v3, Lcom/prineside/tdi2/managers/music/LiveMusicManager$PlaybackStatus;->SLEEP_APP_INACTIVE:Lcom/prineside/tdi2/managers/music/LiveMusicManager$PlaybackStatus;

    iput-object v3, p0, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->B:Lcom/prineside/tdi2/managers/music/LiveMusicManager$PlaybackStatus;

    goto :goto_5

    :cond_7
    sget-object v3, Lcom/prineside/tdi2/managers/music/LiveMusicManager$PlaybackStatus;->SLEEP_NOT_PLAYING:Lcom/prineside/tdi2/managers/music/LiveMusicManager$PlaybackStatus;

    iput-object v3, p0, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->B:Lcom/prineside/tdi2/managers/music/LiveMusicManager$PlaybackStatus;

    goto :goto_5

    :cond_8
    :goto_4
    sget-object v3, Lcom/prineside/tdi2/managers/music/LiveMusicManager$PlaybackStatus;->SLEEP_NO_AUDIO_DEVICE:Lcom/prineside/tdi2/managers/music/LiveMusicManager$PlaybackStatus;

    iput-object v3, p0, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->B:Lcom/prineside/tdi2/managers/music/LiveMusicManager$PlaybackStatus;

    :goto_5
    const-wide/16 v3, 0x32

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    const/4 v3, 0x0

    :goto_6
    iget-object v4, p0, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->z:[Lcom/prineside/tdi2/managers/music/LiveMusicManager$PcmBuffer;

    monitor-enter v4
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    const/4 v6, 0x0

    :goto_7
    :try_start_5
    iget-object v7, p0, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->z:[Lcom/prineside/tdi2/managers/music/LiveMusicManager$PcmBuffer;

    array-length v8, v7

    if-ge v6, v8, :cond_a

    aget-object v8, v7, v6

    if-nez v8, :cond_9

    aput-object v1, v7, v6

    const/4 v2, 0x1

    goto :goto_8

    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_a
    :goto_8
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-nez v2, :cond_b

    :try_start_6
    const-string v1, "LiveMusicManager"

    const-string v2, "buffer not freed after playback - no space"

    invoke-static {v1, v2}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    :cond_b
    if-eqz v3, :cond_0

    goto :goto_9

    :catchall_1
    move-exception v1

    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v1
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    :catch_2
    move-exception v1

    const-string v2, "LiveMusicManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception in playback thread "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9

    :catch_3
    move-exception v1

    const-string v2, "LiveMusicManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "playback stopped "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    :goto_9
    const-string v1, "LiveMusicManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopped playback thread "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/prineside/tdi2/managers/music/LiveMusicManager$PlaybackStatus;->STOPPED:Lcom/prineside/tdi2/managers/music/LiveMusicManager$PlaybackStatus;

    iput-object v0, p0, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->B:Lcom/prineside/tdi2/managers/music/LiveMusicManager$PlaybackStatus;

    return-void
.end method

.method private synthetic m()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->spectrumLeft:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->spectrumRight:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->N:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->M:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method

.method public getPlayingMusic()Lcom/prineside/tdi2/ibxm/Module;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->ibxm:Lcom/prineside/tdi2/ibxm/IBXM;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/prineside/tdi2/ibxm/IBXM;->getModule()Lcom/prineside/tdi2/ibxm/Module;

    move-result-object v0

    return-object v0
.end method

.method public getSampleRate()I
    .locals 1

    const v0, 0xac44

    return v0
.end method

.method public final i()I
    .locals 5

    iget-object v0, p0, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->z:[Lcom/prineside/tdi2/managers/music/LiveMusicManager$PcmBuffer;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v4, v0, v2

    if-eqz v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method public final j()I
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->y:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    return v0
.end method

.method public final n(Lcom/prineside/tdi2/ibxm/Data;F)V
    .locals 1

    :try_start_0
    new-instance v0, Lcom/prineside/tdi2/ibxm/Module;

    invoke-direct {v0, p1}, Lcom/prineside/tdi2/ibxm/Module;-><init>(Lcom/prineside/tdi2/ibxm/Data;)V

    invoke-virtual {p0, v0, p2}, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->playMusic(Lcom/prineside/tdi2/ibxm/Module;F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public final o(Ljava/io/InputStream;F)V
    .locals 6

    :try_start_0
    new-instance v0, Ljava/util/zip/ZipInputStream;

    invoke-direct {v0, p1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v1

    long-to-int p1, v1

    new-array p1, p1, [B

    const/16 v1, 0x1000

    new-array v1, v1, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    invoke-static {v1, v2, p1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v3, v4

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    invoke-virtual {p0, p1, p2}, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->p([BF)V

    :cond_1
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "LiveMusicManager"

    const-string v0, "failed to play music"

    invoke-static {p2, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public final p([BF)V
    .locals 1

    new-instance v0, Lcom/prineside/tdi2/ibxm/Data;

    invoke-direct {v0, p1}, Lcom/prineside/tdi2/ibxm/Data;-><init>([B)V

    invoke-virtual {p0, v0, p2}, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->n(Lcom/prineside/tdi2/ibxm/Data;F)V

    return-void
.end method

.method public playMusic(Lcom/badlogic/gdx/files/FileHandle;F)V
    .locals 1

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, v0, p2}, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->o(Ljava/io/InputStream;F)V

    return-void
.end method

.method public playMusic(Lcom/prineside/tdi2/ibxm/Module;F)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->stopMusic()V

    new-instance v0, Lcom/prineside/tdi2/ibxm/IBXM;

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->getSampleRate()I

    move-result v1

    invoke-direct {v0, p1, v1}, Lcom/prineside/tdi2/ibxm/IBXM;-><init>(Lcom/prineside/tdi2/ibxm/Module;I)V

    iput-object v0, p0, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->ibxm:Lcom/prineside/tdi2/ibxm/IBXM;

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/MusicManager;->getInterpolation()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/ibxm/IBXM;->setInterpolation(I)V

    iget-object p1, p0, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->ibxm:Lcom/prineside/tdi2/ibxm/IBXM;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ibxm/IBXM;->getMixBufferLength()I

    move-result p1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->K:[I

    array-length v0, v0

    if-ge v0, p1, :cond_0

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->K:[I

    :cond_0
    invoke-virtual {p0, p2}, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->setBackendVolume(F)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->r(Z)V

    const/high16 p1, 0x41200000    # 10.0f

    iput p1, p0, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->spectrumMaxValue:F

    iget-object p1, p0, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->ibxm:Lcom/prineside/tdi2/ibxm/IBXM;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ibxm/IBXM;->getModule()Lcom/prineside/tdi2/ibxm/Module;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/managers/MusicManager;->showSongNotification(Lcom/prineside/tdi2/ibxm/Module;)Lcom/prineside/tdi2/ui/shared/Notifications$Notification;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Module is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public playMusic(Ljava/lang/String;F)V
    .locals 1

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-static {p1}, Lcom/badlogic/gdx/utils/Base64Coder;->decode(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, v0, p2}, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->o(Ljava/io/InputStream;F)V

    return-void
.end method

.method public preRender(F)V
    .locals 1

    invoke-super {p0, p1}, Lcom/prineside/tdi2/managers/MusicManager;->preRender(F)V

    iget-boolean p1, p0, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->E:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->q()V

    :cond_0
    iget-boolean p1, p0, Lcom/prineside/tdi2/managers/MusicManager;->p:Z

    if-eqz p1, :cond_1

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->debugManager:Lcom/prineside/tdi2/managers/DebugManager;

    const-string v0, "XM music playback queue"

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/managers/DebugManager;->registerValue(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->j()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->debugManager:Lcom/prineside/tdi2/managers/DebugManager;

    const-string v0, "XM music free buffers"

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/managers/DebugManager;->registerValue(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->i()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->debugManager:Lcom/prineside/tdi2/managers/DebugManager;

    const-string v0, "XM synthesizer"

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/managers/DebugManager;->registerValue(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->A:Lcom/prineside/tdi2/managers/music/LiveMusicManager$SynthesizerStatus;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->debugManager:Lcom/prineside/tdi2/managers/DebugManager;

    const-string v0, "XM playback"

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/managers/DebugManager;->registerValue(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->B:Lcom/prineside/tdi2/managers/music/LiveMusicManager$PlaybackStatus;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    :cond_1
    return-void
.end method

.method public final q()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->E:Z

    const-string v0, "LiveMusicManager"

    const-string v1, "restartPlaybackThread"

    invoke-static {v0, v1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->N:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    const-string v1, "restartPlaybackThread - playbackThread interrupted"

    invoke-static {v0, v1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->s()V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/prineside/tdi2/managers/music/a;

    invoke-direct {v1, p0}, Lcom/prineside/tdi2/managers/music/a;-><init>(Lcom/prineside/tdi2/managers/music/LiveMusicManager;)V

    const-string v2, "IBXM playback"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->N:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->N:Ljava/lang/Thread;

    invoke-static {v0}, Lcom/prineside/tdi2/Logger;->handleThreadExceptionsForgiving(Ljava/lang/Thread;)V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->N:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final r(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->J:Z

    return-void
.end method

.method public final s()V
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->G:Lcom/badlogic/gdx/audio/AudioDevice;

    const/4 v1, 0x0

    const-string v2, "LiveMusicManager"

    if-eqz v0, :cond_1

    instance-of v0, v0, Lcom/prineside/tdi2/managers/music/LiveMusicManager$RestartableAudioDevice;

    if-eqz v0, :cond_0

    const-string v0, "restarting old audioDevice"

    invoke-static {v2, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->G:Lcom/badlogic/gdx/audio/AudioDevice;

    check-cast v0, Lcom/prineside/tdi2/managers/music/LiveMusicManager$RestartableAudioDevice;

    invoke-interface {v0}, Lcom/prineside/tdi2/managers/music/LiveMusicManager$RestartableAudioDevice;->restart()V

    const-string v0, "old audioDevice restarted"

    invoke-static {v2, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "disposing old audioDevice"

    invoke-static {v2, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->H:Z

    iget-object v0, p0, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->G:Lcom/badlogic/gdx/audio/AudioDevice;

    invoke-interface {v0}, Lcom/badlogic/gdx/audio/AudioDevice;->dispose()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->G:Lcom/badlogic/gdx/audio/AudioDevice;

    const-string v0, "old audioDevice disposed"

    invoke-static {v2, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->ibxm:Lcom/prineside/tdi2/ibxm/IBXM;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->getSampleRate()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/prineside/tdi2/ibxm/IBXM;->setSampleRate(I)V

    :cond_2
    iget-object v0, p0, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->G:Lcom/badlogic/gdx/audio/AudioDevice;

    if-eqz v0, :cond_3

    return-void

    :cond_3
    :try_start_0
    const-string v0, "creating new audio device..."

    invoke-static {v2, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->actionResolver:Lcom/prineside/tdi2/ActionResolver;

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->getSampleRate()I

    move-result v3

    invoke-interface {v0, v3, v1}, Lcom/prineside/tdi2/ActionResolver;->newAudioDevice(IZ)Lcom/badlogic/gdx/audio/AudioDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->G:Lcom/badlogic/gdx/audio/AudioDevice;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->H:Z

    const-string v0, "set up new audio device"

    invoke-static {v2, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "failed to setup audio device"

    invoke-static {v2, v1, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Lcom/prineside/tdi2/managers/music/LiveMusicManager$2;

    invoke-direct {v0, p0}, Lcom/prineside/tdi2/managers/music/LiveMusicManager$2;-><init>(Lcom/prineside/tdi2/managers/music/LiveMusicManager;)V

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-static {v0, v1}, Lcom/badlogic/gdx/utils/Timer;->schedule(Lcom/badlogic/gdx/utils/Timer$Task;F)Lcom/badlogic/gdx/utils/Timer$Task;

    :goto_1
    return-void
.end method

.method public setBackendVolume(F)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    const/4 p1, 0x0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    :cond_1
    iget-object v0, p0, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->G:Lcom/badlogic/gdx/audio/AudioDevice;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/MusicManager;->c()F

    move-result v1

    mul-float p1, p1, v1

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/audio/AudioDevice;->setVolume(F)V

    :cond_2
    return-void
.end method

.method public setup()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prineside/tdi2/managers/MusicManager;->p:Z

    iput-boolean v0, p0, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->I:Z

    invoke-super {p0}, Lcom/prineside/tdi2/managers/MusicManager;->setup()V

    return-void
.end method

.method public stopMusic()V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->r(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->ibxm:Lcom/prineside/tdi2/ibxm/IBXM;

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v1, Lcom/prineside/tdi2/managers/music/c;

    invoke-direct {v1, p0}, Lcom/prineside/tdi2/managers/music/c;-><init>(Lcom/prineside/tdi2/managers/music/LiveMusicManager;)V

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Application;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method
