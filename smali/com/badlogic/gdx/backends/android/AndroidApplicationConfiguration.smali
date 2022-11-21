.class public Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public depth:I

.field public disableAudio:Z

.field public g:I

.field public getTouchEventsForLiveWallpaper:Z

.field public maxNetThreads:I

.field public maxSimultaneousSounds:I

.field public numSamples:I

.field public r:I

.field public resolutionStrategy:Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;

.field public sensorDelay:I

.field public stencil:I

.field public touchSleepTime:I

.field public useAccelerometer:Z

.field public useCompass:Z

.field public useGL30:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public useGyroscope:Z

.field public useImmersiveMode:Z

.field public useRotationVectorSensor:Z

.field public useWakelock:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    iput v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->r:I

    iput v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->g:I

    iput v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->b:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->a:I

    const/16 v1, 0x10

    iput v1, p0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->depth:I

    iput v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->stencil:I

    iput v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->numSamples:I

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->useAccelerometer:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->useGyroscope:Z

    iput-boolean v2, p0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->useCompass:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->useRotationVectorSensor:Z

    iput v2, p0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->sensorDelay:I

    iput v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->touchSleepTime:I

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->useWakelock:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->disableAudio:Z

    iput v1, p0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->maxSimultaneousSounds:I

    new-instance v1, Lcom/badlogic/gdx/backends/android/surfaceview/FillResolutionStrategy;

    invoke-direct {v1}, Lcom/badlogic/gdx/backends/android/surfaceview/FillResolutionStrategy;-><init>()V

    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->resolutionStrategy:Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->getTouchEventsForLiveWallpaper:Z

    iput-boolean v2, p0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->useImmersiveMode:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->useGL30:Z

    const v0, 0x7fffffff

    iput v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->maxNetThreads:I

    return-void
.end method
