.class public Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;
.super Lcom/badlogic/gdx/AbstractInput;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/backends/android/AndroidInput;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$SensorListener;,
        Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;,
        Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$KeyEvent;
    }
.end annotation


# static fields
.field public static final NUM_TOUCHES:I = 0x14


# instance fields
.field public A:[I

.field public B:[I

.field public C:[F

.field public final D:Z

.field public E:[Z

.field public F:Landroid/hardware/SensorManager;

.field public final G:[F

.field public final H:[F

.field public I:Landroid/os/Handler;

.field public final J:Lcom/badlogic/gdx/Application;

.field public final K:Landroid/content/Context;

.field public final L:Lcom/badlogic/gdx/backends/android/AndroidTouchHandler;

.field public M:I

.field public final N:Lcom/badlogic/gdx/backends/android/AndroidHaptics;

.field public O:Z

.field public P:Z

.field public Q:Z

.field public final R:[F

.field public final S:[F

.field public T:F

.field public U:F

.field public V:F

.field public W:Z

.field public X:Lcom/badlogic/gdx/InputProcessor;

.field public final Y:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

.field public final Z:Lcom/badlogic/gdx/Input$Orientation;

.field public a0:J

.field public accelerometerAvailable:Z

.field public b0:Landroid/hardware/SensorEventListener;

.field public c0:Landroid/hardware/SensorEventListener;

.field public d0:Landroid/hardware/SensorEventListener;

.field public e0:Landroid/hardware/SensorEventListener;

.field public final f0:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View$OnGenericMotionListener;",
            ">;"
        }
    .end annotation
.end field

.field public final g0:Lcom/badlogic/gdx/backends/android/AndroidMouseHandler;

.field public gyroscopeAvailable:Z

.field public h0:Z

.field public final i0:[F

.field public final j0:[F

.field public q:Lcom/badlogic/gdx/utils/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Pool<",
            "Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$KeyEvent;",
            ">;"
        }
    .end annotation
.end field

.field public r:Lcom/badlogic/gdx/utils/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Pool<",
            "Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;",
            ">;"
        }
    .end annotation
.end field

.field public s:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View$OnKeyListener;",
            ">;"
        }
    .end annotation
.end field

.field public t:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$KeyEvent;",
            ">;"
        }
    .end annotation
.end field

.field public u:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;",
            ">;"
        }
    .end annotation
.end field

.field public v:[I

.field public w:[I

.field public x:[I

.field public y:[I

.field public z:[Z


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/Application;Landroid/content/Context;Ljava/lang/Object;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;)V
    .locals 4

    invoke-direct {p0}, Lcom/badlogic/gdx/AbstractInput;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$1;

    const/16 v1, 0x10

    const/16 v2, 0x3e8

    invoke-direct {v0, p0, v1, v2}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$1;-><init>(Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;II)V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->q:Lcom/badlogic/gdx/utils/Pool;

    new-instance v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$2;

    invoke-direct {v0, p0, v1, v2}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$2;-><init>(Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;II)V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->r:Lcom/badlogic/gdx/utils/Pool;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->s:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->t:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->u:Ljava/util/ArrayList;

    const/16 v0, 0x14

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->v:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->w:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->x:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->y:[I

    new-array v1, v0, [Z

    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->z:[Z

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->A:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->B:[I

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->C:[F

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->E:[Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->accelerometerAvailable:Z

    const/4 v1, 0x3

    new-array v2, v1, [F

    iput-object v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->G:[F

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->gyroscopeAvailable:Z

    new-array v2, v1, [F

    iput-object v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->H:[F

    iput v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->M:I

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->O:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->P:Z

    new-array v2, v1, [F

    iput-object v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->R:[F

    new-array v2, v1, [F

    iput-object v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->S:[F

    const/4 v2, 0x0

    iput v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->T:F

    iput v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->U:F

    iput v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->V:F

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->W:Z

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->a0:J

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->f0:Ljava/util/ArrayList;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->h0:Z

    const/16 v3, 0x9

    new-array v3, v3, [F

    iput-object v3, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->i0:[F

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->j0:[F

    instance-of v1, p3, Landroid/view/View;

    if-eqz v1, :cond_0

    check-cast p3, Landroid/view/View;

    invoke-virtual {p3, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    invoke-virtual {p3, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p3, v2}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {p3, v2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    invoke-virtual {p3}, Landroid/view/View;->requestFocus()Z

    invoke-virtual {p3, p0}, Landroid/view/View;->setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V

    :cond_0
    iput-object p4, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->Y:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    new-instance p3, Lcom/badlogic/gdx/backends/android/AndroidMouseHandler;

    invoke-direct {p3}, Lcom/badlogic/gdx/backends/android/AndroidMouseHandler;-><init>()V

    iput-object p3, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->g0:Lcom/badlogic/gdx/backends/android/AndroidMouseHandler;

    :goto_0
    iget-object p3, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->B:[I

    array-length v1, p3

    if-ge v0, v1, :cond_1

    const/4 v1, -0x1

    aput v1, p3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance p3, Landroid/os/Handler;

    invoke-direct {p3}, Landroid/os/Handler;-><init>()V

    iput-object p3, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->I:Landroid/os/Handler;

    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->J:Lcom/badlogic/gdx/Application;

    iput-object p2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->K:Landroid/content/Context;

    iget p3, p4, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->touchSleepTime:I

    iput p3, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->M:I

    new-instance p3, Lcom/badlogic/gdx/backends/android/AndroidTouchHandler;

    invoke-direct {p3}, Lcom/badlogic/gdx/backends/android/AndroidTouchHandler;-><init>()V

    iput-object p3, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->L:Lcom/badlogic/gdx/backends/android/AndroidTouchHandler;

    invoke-virtual {p3, p2}, Lcom/badlogic/gdx/backends/android/AndroidTouchHandler;->supportsMultitouch(Landroid/content/Context;)Z

    move-result p3

    iput-boolean p3, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->D:Z

    new-instance p3, Lcom/badlogic/gdx/backends/android/AndroidHaptics;

    invoke-direct {p3, p2}, Lcom/badlogic/gdx/backends/android/AndroidHaptics;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->N:Lcom/badlogic/gdx/backends/android/AndroidHaptics;

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->getRotation()I

    move-result p2

    invoke-interface {p1}, Lcom/badlogic/gdx/Application;->getGraphics()Lcom/badlogic/gdx/Graphics;

    move-result-object p1

    invoke-interface {p1}, Lcom/badlogic/gdx/Graphics;->getDisplayMode()Lcom/badlogic/gdx/Graphics$DisplayMode;

    move-result-object p1

    if-eqz p2, :cond_2

    const/16 p3, 0xb4

    if-ne p2, p3, :cond_3

    :cond_2
    iget p3, p1, Lcom/badlogic/gdx/Graphics$DisplayMode;->width:I

    iget p4, p1, Lcom/badlogic/gdx/Graphics$DisplayMode;->height:I

    if-ge p3, p4, :cond_6

    :cond_3
    const/16 p3, 0x5a

    if-eq p2, p3, :cond_4

    const/16 p3, 0x10e

    if-ne p2, p3, :cond_5

    :cond_4
    iget p2, p1, Lcom/badlogic/gdx/Graphics$DisplayMode;->width:I

    iget p1, p1, Lcom/badlogic/gdx/Graphics$DisplayMode;->height:I

    if-gt p2, p1, :cond_5

    goto :goto_1

    :cond_5
    sget-object p1, Lcom/badlogic/gdx/Input$Orientation;->Portrait:Lcom/badlogic/gdx/Input$Orientation;

    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->Z:Lcom/badlogic/gdx/Input$Orientation;

    goto :goto_2

    :cond_6
    :goto_1
    sget-object p1, Lcom/badlogic/gdx/Input$Orientation;->Landscape:Lcom/badlogic/gdx/Input$Orientation;

    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->Z:Lcom/badlogic/gdx/Input$Orientation;

    :goto_2
    const/16 p1, 0xff

    invoke-virtual {p0, p1, v2}, Lcom/badlogic/gdx/AbstractInput;->setCatchKey(IZ)V

    return-void
.end method

.method public static getAndroidInputType(Lcom/badlogic/gdx/Input$OnscreenKeyboardType;)I
    .locals 3

    sget-object v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$6;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq p0, v0, :cond_3

    if-eq p0, v2, :cond_4

    if-eq p0, v1, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/16 v1, 0x90

    goto :goto_0

    :cond_0
    const/16 v1, 0x11

    goto :goto_0

    :cond_1
    const/16 v1, 0x81

    goto :goto_0

    :cond_2
    const/16 v1, 0x21

    goto :goto_0

    :cond_3
    const/4 v1, 0x2

    :cond_4
    :goto_0
    return v1
.end method


# virtual methods
.method public a()V
    .locals 7

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->Y:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    iget-boolean v0, v0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->useAccelerometer:Z

    const-string v1, "sensor"

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->K:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->F:Landroid/hardware/SensorManager;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->accelerometerAvailable:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->F:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v3}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    new-instance v3, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$SensorListener;

    invoke-direct {v3, p0}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$SensorListener;-><init>(Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;)V

    iput-object v3, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->b0:Landroid/hardware/SensorEventListener;

    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->F:Landroid/hardware/SensorManager;

    iget-object v5, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->Y:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    iget v5, v5, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->sensorDelay:I

    invoke-virtual {v4, v3, v0, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->accelerometerAvailable:Z

    goto :goto_0

    :cond_1
    iput-boolean v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->accelerometerAvailable:Z

    :goto_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->Y:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    iget-boolean v0, v0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->useGyroscope:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->K:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->F:Landroid/hardware/SensorManager;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->gyroscopeAvailable:Z

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->F:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v3}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    new-instance v3, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$SensorListener;

    invoke-direct {v3, p0}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$SensorListener;-><init>(Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;)V

    iput-object v3, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->c0:Landroid/hardware/SensorEventListener;

    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->F:Landroid/hardware/SensorManager;

    iget-object v5, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->Y:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    iget v5, v5, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->sensorDelay:I

    invoke-virtual {v4, v3, v0, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->gyroscopeAvailable:Z

    goto :goto_1

    :cond_3
    iput-boolean v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->gyroscopeAvailable:Z

    :goto_1
    iput-boolean v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->P:Z

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->Y:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    iget-boolean v0, v0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->useRotationVectorSensor:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->F:Landroid/hardware/SensorManager;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->K:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->F:Landroid/hardware/SensorManager;

    :cond_4
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->F:Landroid/hardware/SensorManager;

    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    new-instance v3, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$SensorListener;

    invoke-direct {v3, p0}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$SensorListener;-><init>(Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;)V

    iput-object v3, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->e0:Landroid/hardware/SensorEventListener;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Sensor;

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getVendor()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Google Inc."

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getVersion()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_5

    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->F:Landroid/hardware/SensorManager;

    iget-object v5, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->e0:Landroid/hardware/SensorEventListener;

    iget-object v6, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->Y:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    iget v6, v6, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->sensorDelay:I

    invoke-virtual {v3, v5, v4, v6}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->P:Z

    :cond_6
    iget-boolean v3, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->P:Z

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->F:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->e0:Landroid/hardware/SensorEventListener;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    iget-object v5, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->Y:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    iget v5, v5, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->sensorDelay:I

    invoke-virtual {v3, v4, v0, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->P:Z

    :cond_7
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->Y:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    iget-boolean v0, v0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->useCompass:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->P:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->F:Landroid/hardware/SensorManager;

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->K:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->F:Landroid/hardware/SensorManager;

    :cond_8
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->F:Landroid/hardware/SensorManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-boolean v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->accelerometerAvailable:Z

    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->O:Z

    if-eqz v1, :cond_b

    new-instance v1, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$SensorListener;

    invoke-direct {v1, p0}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$SensorListener;-><init>(Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;)V

    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->d0:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->F:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->Y:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    iget v3, v3, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->sensorDelay:I

    invoke-virtual {v2, v1, v0, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->O:Z

    goto :goto_2

    :cond_9
    iput-boolean v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->O:Z

    goto :goto_2

    :cond_a
    iput-boolean v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->O:Z

    :cond_b
    :goto_2
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "AndroidInput"

    const-string v2, "sensor listener setup"

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->f0:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addKeyListener(Landroid/view/View$OnKeyListener;)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b([F)[F
    .locals 3

    array-length v0, p1

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [F

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public final c([I)[I
    .locals 3

    array-length v0, p1

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public final d([Z)[Z
    .locals 3

    array-length v0, p1

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Z

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public e()V
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->F:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->b0:Landroid/hardware/SensorEventListener;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    iput-object v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->b0:Landroid/hardware/SensorEventListener;

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->c0:Landroid/hardware/SensorEventListener;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->F:Landroid/hardware/SensorManager;

    invoke-virtual {v1, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    iput-object v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->c0:Landroid/hardware/SensorEventListener;

    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->e0:Landroid/hardware/SensorEventListener;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->F:Landroid/hardware/SensorManager;

    invoke-virtual {v1, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    iput-object v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->e0:Landroid/hardware/SensorEventListener;

    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->d0:Landroid/hardware/SensorEventListener;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->F:Landroid/hardware/SensorManager;

    invoke-virtual {v1, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    iput-object v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->d0:Landroid/hardware/SensorEventListener;

    :cond_3
    iput-object v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->F:Landroid/hardware/SensorManager;

    :cond_4
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "AndroidInput"

    const-string v2, "sensor listener tear down"

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final g()V
    .locals 4

    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->P:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->i0:[F

    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->S:[F

    invoke-static {v0, v1}, Landroid/hardware/SensorManager;->getRotationMatrixFromVector([F[F)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->i0:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->G:[F

    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->R:[F

    invoke-static {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->i0:[F

    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->j0:[F

    invoke-static {v0, v1}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->j0:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->T:F

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->j0:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->U:F

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->j0:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->V:F

    return-void
.end method

.method public getAccelerometerX()F
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->G:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getAccelerometerY()F
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->G:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getAccelerometerZ()F
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->G:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public getAzimuth()F
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->O:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->P:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->g()V

    iget v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->T:F

    return v0
.end method

.method public getCurrentEventTime()J
    .locals 2

    iget-wide v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->a0:J

    return-wide v0
.end method

.method public getDeltaX()I
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->x:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getDeltaX(I)I
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->x:[I

    aget p1, v0, p1

    return p1
.end method

.method public getDeltaY()I
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->y:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getDeltaY(I)I
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->y:[I

    aget p1, v0, p1

    return p1
.end method

.method public getFreePointerIndex()I
    .locals 4

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->B:[I

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->B:[I

    aget v2, v2, v1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->C:[F

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->b([F)[F

    move-result-object v1

    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->C:[F

    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->B:[I

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->c([I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->B:[I

    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->v:[I

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->c([I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->v:[I

    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->w:[I

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->c([I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->w:[I

    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->x:[I

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->c([I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->x:[I

    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->y:[I

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->c([I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->y:[I

    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->z:[Z

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->d([Z)[Z

    move-result-object v1

    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->z:[Z

    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->A:[I

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->c([I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->A:[I

    return v0
.end method

.method public getGyroscopeX()F
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->H:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getGyroscopeY()F
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->H:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getGyroscopeZ()F
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->H:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public getInputProcessor()Lcom/badlogic/gdx/InputProcessor;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->X:Lcom/badlogic/gdx/InputProcessor;

    return-object v0
.end method

.method public getMaxPointers()I
    .locals 1

    const/16 v0, 0x14

    return v0
.end method

.method public getNativeOrientation()Lcom/badlogic/gdx/Input$Orientation;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->Z:Lcom/badlogic/gdx/Input$Orientation;

    return-object v0
.end method

.method public getPitch()F
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->O:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->P:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->g()V

    iget v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->U:F

    return v0
.end method

.method public getPressure()F
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->getPressure(I)F

    move-result v0

    return v0
.end method

.method public getPressure(I)F
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->C:[F

    aget p1, v0, p1

    return p1
.end method

.method public getRoll()F
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->O:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->P:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->g()V

    iget v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->V:F

    return v0
.end method

.method public getRotation()I
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->K:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    goto :goto_0

    :cond_0
    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    :goto_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    const/16 v0, 0x10e

    return v0

    :cond_2
    const/16 v0, 0xb4

    return v0

    :cond_3
    const/16 v0, 0x5a

    return v0
.end method

.method public getRotationMatrix([F)V
    .locals 3

    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->P:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->S:[F

    invoke-static {p1, v0}, Landroid/hardware/SensorManager;->getRotationMatrixFromVector([F[F)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->G:[F

    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->R:[F

    invoke-static {p1, v0, v1, v2}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    :goto_0
    return-void
.end method

.method public getTextInput(Lcom/badlogic/gdx/Input$TextInputListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    sget-object v5, Lcom/badlogic/gdx/Input$OnscreenKeyboardType;->Default:Lcom/badlogic/gdx/Input$OnscreenKeyboardType;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->getTextInput(Lcom/badlogic/gdx/Input$TextInputListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/badlogic/gdx/Input$OnscreenKeyboardType;)V

    return-void
.end method

.method public getTextInput(Lcom/badlogic/gdx/Input$TextInputListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/badlogic/gdx/Input$OnscreenKeyboardType;)V
    .locals 9

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->I:Landroid/os/Handler;

    new-instance v8, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p2

    move-object v4, p5

    move-object v5, p4

    move-object v6, p3

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3;-><init>(Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;Ljava/lang/String;Lcom/badlogic/gdx/Input$OnscreenKeyboardType;Ljava/lang/String;Ljava/lang/String;Lcom/badlogic/gdx/Input$TextInputListener;)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getX()I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->v:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getX(I)I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->v:[I

    aget p1, v0, p1

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getY()I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->w:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getY(I)I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->w:[I

    aget p1, v0, p1

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public isButtonJustPressed(I)Z
    .locals 1

    if-ltz p1, :cond_1

    const/16 v0, 0x14

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->E:[Z

    aget-boolean p1, v0, p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public isButtonPressed(I)Z
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->D:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    const/16 v3, 0x14

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->z:[Z

    aget-boolean v3, v3, v0

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->A:[I

    aget v3, v3, v0

    if-ne v3, p1, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->z:[Z

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->A:[I

    aget v0, v0, v2

    if-ne v0, p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public isCursorCatched()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->J:Lcom/badlogic/gdx/Application;

    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getGraphics()Lcom/badlogic/gdx/Graphics;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/badlogic/gdx/backends/android/i;->a(Landroid/view/View;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isPeripheralAvailable(Lcom/badlogic/gdx/Input$Peripheral;)Z
    .locals 2

    sget-object v0, Lcom/badlogic/gdx/Input$Peripheral;->Accelerometer:Lcom/badlogic/gdx/Input$Peripheral;

    if-ne p1, v0, :cond_0

    iget-boolean p1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->accelerometerAvailable:Z

    return p1

    :cond_0
    sget-object v0, Lcom/badlogic/gdx/Input$Peripheral;->Gyroscope:Lcom/badlogic/gdx/Input$Peripheral;

    if-ne p1, v0, :cond_1

    iget-boolean p1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->gyroscopeAvailable:Z

    return p1

    :cond_1
    sget-object v0, Lcom/badlogic/gdx/Input$Peripheral;->Compass:Lcom/badlogic/gdx/Input$Peripheral;

    if-ne p1, v0, :cond_2

    iget-boolean p1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->O:Z

    return p1

    :cond_2
    sget-object v0, Lcom/badlogic/gdx/Input$Peripheral;->HardwareKeyboard:Lcom/badlogic/gdx/Input$Peripheral;

    if-ne p1, v0, :cond_3

    iget-boolean p1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->Q:Z

    return p1

    :cond_3
    sget-object v0, Lcom/badlogic/gdx/Input$Peripheral;->OnscreenKeyboard:Lcom/badlogic/gdx/Input$Peripheral;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_4

    return v1

    :cond_4
    sget-object v0, Lcom/badlogic/gdx/Input$Peripheral;->Vibrator:Lcom/badlogic/gdx/Input$Peripheral;

    if-ne p1, v0, :cond_5

    iget-object p1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->N:Lcom/badlogic/gdx/backends/android/AndroidHaptics;

    invoke-virtual {p1}, Lcom/badlogic/gdx/backends/android/AndroidHaptics;->hasVibratorAvailable()Z

    move-result p1

    return p1

    :cond_5
    sget-object v0, Lcom/badlogic/gdx/Input$Peripheral;->HapticFeedback:Lcom/badlogic/gdx/Input$Peripheral;

    if-ne p1, v0, :cond_6

    iget-object p1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->N:Lcom/badlogic/gdx/backends/android/AndroidHaptics;

    invoke-virtual {p1}, Lcom/badlogic/gdx/backends/android/AndroidHaptics;->hasHapticsSupport()Z

    move-result p1

    return p1

    :cond_6
    sget-object v0, Lcom/badlogic/gdx/Input$Peripheral;->MultitouchScreen:Lcom/badlogic/gdx/Input$Peripheral;

    if-ne p1, v0, :cond_7

    iget-boolean p1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->D:Z

    return p1

    :cond_7
    sget-object v0, Lcom/badlogic/gdx/Input$Peripheral;->RotationVector:Lcom/badlogic/gdx/Input$Peripheral;

    if-ne p1, v0, :cond_8

    iget-boolean p1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->P:Z

    return p1

    :cond_8
    sget-object v0, Lcom/badlogic/gdx/Input$Peripheral;->Pressure:Lcom/badlogic/gdx/Input$Peripheral;

    if-ne p1, v0, :cond_9

    return v1

    :cond_9
    const/4 p1, 0x0

    return p1
.end method

.method public isTouched()Z
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->D:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0x14

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->z:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_0

    monitor-exit p0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->z:[Z

    aget-boolean v0, v0, v1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public isTouched(I)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->z:[Z

    aget-boolean p1, v0, p1

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public justTouched()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->W:Z

    return v0
.end method

.method public lookUpPointerIndex(I)I
    .locals 5

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->B:[I

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->B:[I

    aget v3, v3, v2

    if-ne v3, p1, :cond_0

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    if-ge v1, v0, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->B:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pointer ID lookup failed: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "AndroidInput"

    invoke-interface {v0, v1, p1}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    return p1
.end method

.method public onDreamingStarted()V
    .locals 0

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->a()V

    return-void
.end method

.method public onDreamingStopped()V
    .locals 2

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->e()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->B:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->z:[Z

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    return-void
.end method

.method public onGenericMotion(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->g0:Lcom/badlogic/gdx/backends/android/AndroidMouseHandler;

    invoke-virtual {v0, p2, p0}, Lcom/badlogic/gdx/backends/android/AndroidMouseHandler;->onGenericMotion(Landroid/view/MotionEvent;Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->f0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->f0:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View$OnGenericMotionListener;

    invoke-interface {v4, p1, p2}, Landroid/view/View$OnGenericMotionListener;->onGenericMotion(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_1

    return v1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 9

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_1

    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->s:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View$OnKeyListener;

    invoke-interface {v4, p1, p2, p3}, Landroid/view/View$OnKeyListener;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_0

    return v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-lez p1, :cond_2

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/AbstractInput;->isCatchKey(I)Z

    move-result p1

    return p1

    :cond_2
    monitor-enter p0

    :try_start_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/4 v0, 0x2

    if-nez p1, :cond_4

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-ne p1, v0, :cond_4

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    if-ge p2, p3, :cond_3

    iget-object p3, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->q:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {p3}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$KeyEvent;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, p3, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$KeyEvent;->a:J

    iput v1, p3, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$KeyEvent;->c:I

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iput-char v2, p3, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$KeyEvent;->d:C

    iput v0, p3, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$KeyEvent;->b:I

    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->t:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_3
    monitor-exit p0

    return v1

    :cond_4
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result p1

    int-to-char p1, p1

    const/16 v2, 0x43

    if-ne p2, v2, :cond_5

    const/16 p1, 0x8

    :cond_5
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    if-ltz v2, :cond_d

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v4, 0xff

    if-le v2, v4, :cond_6

    goto/16 :goto_3

    :cond_6
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    const/4 v5, 0x4

    if-eqz v2, :cond_a

    if-eq v2, v3, :cond_7

    goto/16 :goto_2

    :cond_7
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->q:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$KeyEvent;

    iput-wide v6, v2, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$KeyEvent;->a:J

    iput-char v1, v2, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$KeyEvent;->d:C

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v8

    iput v8, v2, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$KeyEvent;->c:I

    iput v3, v2, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$KeyEvent;->b:I

    if-ne p2, v5, :cond_8

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v5

    if-eqz v5, :cond_8

    iput v4, v2, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$KeyEvent;->c:I

    const/16 p2, 0xff

    :cond_8
    iget-object v5, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->t:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->q:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$KeyEvent;

    iput-wide v6, v2, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$KeyEvent;->a:J

    iput-char p1, v2, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$KeyEvent;->d:C

    iput v1, v2, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$KeyEvent;->c:I

    iput v0, v2, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$KeyEvent;->b:I

    iget-object p1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->t:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-ne p2, v4, :cond_9

    iget-object p1, p0, Lcom/badlogic/gdx/AbstractInput;->a:[Z

    aget-boolean p3, p1, v4

    if-eqz p3, :cond_c

    iget p3, p0, Lcom/badlogic/gdx/AbstractInput;->k:I

    sub-int/2addr p3, v3

    iput p3, p0, Lcom/badlogic/gdx/AbstractInput;->k:I

    aput-boolean v1, p1, v4

    goto :goto_2

    :cond_9
    iget-object p1, p0, Lcom/badlogic/gdx/AbstractInput;->a:[Z

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    aget-boolean p1, p1, v0

    if-eqz p1, :cond_c

    iget p1, p0, Lcom/badlogic/gdx/AbstractInput;->k:I

    sub-int/2addr p1, v3

    iput p1, p0, Lcom/badlogic/gdx/AbstractInput;->k:I

    iget-object p1, p0, Lcom/badlogic/gdx/AbstractInput;->a:[Z

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p3

    aput-boolean v1, p1, p3

    goto :goto_2

    :cond_a
    iget-object p1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->q:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$KeyEvent;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    iput-wide v6, p1, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$KeyEvent;->a:J

    iput-char v1, p1, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$KeyEvent;->d:C

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    iput v0, p1, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$KeyEvent;->c:I

    iput v1, p1, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$KeyEvent;->b:I

    if-ne p2, v5, :cond_b

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result p3

    if-eqz p3, :cond_b

    iput v4, p1, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$KeyEvent;->c:I

    const/16 p2, 0xff

    :cond_b
    iget-object p3, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->t:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p3, p0, Lcom/badlogic/gdx/AbstractInput;->a:[Z

    iget p1, p1, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$KeyEvent;->c:I

    aget-boolean v0, p3, p1

    if-nez v0, :cond_c

    iget v0, p0, Lcom/badlogic/gdx/AbstractInput;->k:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/badlogic/gdx/AbstractInput;->k:I

    aput-boolean v3, p3, p1

    :cond_c
    :goto_2
    iget-object p1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->J:Lcom/badlogic/gdx/Application;

    invoke-interface {p1}, Lcom/badlogic/gdx/Application;->getGraphics()Lcom/badlogic/gdx/Graphics;

    move-result-object p1

    invoke-interface {p1}, Lcom/badlogic/gdx/Graphics;->requestRendering()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/AbstractInput;->isCatchKey(I)Z

    move-result p1

    return p1

    :cond_d
    :goto_3
    :try_start_1
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method public onPause()V
    .locals 0

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->e()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->a()V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->h0:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->h0:Z

    :cond_0
    iget-object p1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->L:Lcom/badlogic/gdx/backends/android/AndroidTouchHandler;

    invoke-virtual {p1, p2, p0}, Lcom/badlogic/gdx/backends/android/AndroidTouchHandler;->onTouch(Landroid/view/MotionEvent;Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;)V

    iget p1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->M:I

    if-eqz p1, :cond_1

    int-to-long p1, p1

    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return v1
.end method

.method public processEvents()V
    .locals 10

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->W:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->W:Z

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->E:[Z

    array-length v3, v2

    if-ge v0, v3, :cond_0

    aput-boolean v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/AbstractInput;->p:Z

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/badlogic/gdx/AbstractInput;->p:Z

    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/badlogic/gdx/AbstractInput;->b:[Z

    array-length v3, v2

    if-ge v0, v3, :cond_1

    aput-boolean v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->isCursorCatched()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->x:[I

    aput v1, v0, v1

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->y:[I

    aput v1, v0, v1

    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->X:Lcom/badlogic/gdx/InputProcessor;

    const/4 v2, 0x1

    if-eqz v0, :cond_11

    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->t:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_2
    const/4 v5, 0x2

    if-ge v4, v3, :cond_a

    iget-object v6, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->t:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$KeyEvent;

    iget-wide v7, v6, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$KeyEvent;->a:J

    iput-wide v7, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->a0:J

    iget v7, v6, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$KeyEvent;->b:I

    const/16 v8, 0x17

    const/16 v9, 0x13

    if-eqz v7, :cond_7

    if-eq v7, v2, :cond_5

    if-eq v7, v5, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->isCursorCatched()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-char v5, v6, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$KeyEvent;->d:C

    if-eqz v5, :cond_9

    :cond_4
    iget-char v5, v6, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$KeyEvent;->d:C

    invoke-interface {v0, v5}, Lcom/badlogic/gdx/InputProcessor;->keyTyped(C)Z

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->isCursorCatched()Z

    move-result v5

    if-eqz v5, :cond_6

    iget v5, v6, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$KeyEvent;->c:I

    if-lt v5, v9, :cond_6

    if-le v5, v8, :cond_9

    :cond_6
    iget v5, v6, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$KeyEvent;->c:I

    invoke-interface {v0, v5}, Lcom/badlogic/gdx/InputProcessor;->keyUp(I)Z

    goto :goto_3

    :cond_7
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->isCursorCatched()Z

    move-result v5

    if-eqz v5, :cond_8

    iget v5, v6, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$KeyEvent;->c:I

    if-lt v5, v9, :cond_8

    if-le v5, v8, :cond_9

    :cond_8
    iget v5, v6, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$KeyEvent;->c:I

    invoke-interface {v0, v5}, Lcom/badlogic/gdx/InputProcessor;->keyDown(I)Z

    iput-boolean v2, p0, Lcom/badlogic/gdx/AbstractInput;->p:Z

    iget-object v5, p0, Lcom/badlogic/gdx/AbstractInput;->b:[Z

    iget v7, v6, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$KeyEvent;->c:I

    aput-boolean v2, v5, v7

    :cond_9
    :goto_3
    iget-object v5, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->q:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_a
    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->u:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_4
    if-ge v1, v3, :cond_14

    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->u:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;

    iget-wide v6, v4, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;->a:J

    iput-wide v6, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->a0:J

    iget v6, v4, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;->b:I

    if-eqz v6, :cond_10

    if-eq v6, v2, :cond_f

    if-eq v6, v5, :cond_e

    const/4 v7, 0x3

    if-eq v6, v7, :cond_d

    const/4 v7, 0x4

    if-eq v6, v7, :cond_c

    const/4 v7, 0x5

    if-eq v6, v7, :cond_b

    goto :goto_5

    :cond_b
    iget v6, v4, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;->c:I

    iget v7, v4, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;->d:I

    iget v8, v4, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;->h:I

    iget v9, v4, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;->g:I

    invoke-interface {v0, v6, v7, v8, v9}, Lcom/badlogic/gdx/InputProcessor;->touchCancelled(IIII)Z

    goto :goto_5

    :cond_c
    iget v6, v4, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;->c:I

    iget v7, v4, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;->d:I

    invoke-interface {v0, v6, v7}, Lcom/badlogic/gdx/InputProcessor;->mouseMoved(II)Z

    goto :goto_5

    :cond_d
    iget v6, v4, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;->e:I

    int-to-float v6, v6

    iget v7, v4, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;->f:I

    int-to-float v7, v7

    invoke-interface {v0, v6, v7}, Lcom/badlogic/gdx/InputProcessor;->scrolled(FF)Z

    goto :goto_5

    :cond_e
    iget v6, v4, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;->c:I

    iget v7, v4, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;->d:I

    iget v8, v4, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;->h:I

    invoke-interface {v0, v6, v7, v8}, Lcom/badlogic/gdx/InputProcessor;->touchDragged(III)Z

    goto :goto_5

    :cond_f
    iget v6, v4, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;->c:I

    iget v7, v4, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;->d:I

    iget v8, v4, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;->h:I

    iget v9, v4, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;->g:I

    invoke-interface {v0, v6, v7, v8, v9}, Lcom/badlogic/gdx/InputProcessor;->touchUp(IIII)Z

    goto :goto_5

    :cond_10
    iget v6, v4, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;->c:I

    iget v7, v4, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;->d:I

    iget v8, v4, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;->h:I

    iget v9, v4, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;->g:I

    invoke-interface {v0, v6, v7, v8, v9}, Lcom/badlogic/gdx/InputProcessor;->touchDown(IIII)Z

    iput-boolean v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->W:Z

    iget-object v6, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->E:[Z

    iget v7, v4, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;->g:I

    aput-boolean v2, v6, v7

    :goto_5
    iget-object v6, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->r:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v6, v4}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_11
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v0, :cond_13

    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->u:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;

    iget v5, v4, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;->b:I

    if-nez v5, :cond_12

    iput-boolean v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->W:Z

    :cond_12
    iget-object v5, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->r:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_13
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_7
    if-ge v1, v0, :cond_14

    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->q:Lcom/badlogic/gdx/utils/Pool;

    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->t:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_14
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_9

    :goto_8
    throw v0

    :goto_9
    goto :goto_8
.end method

.method public setCursorCatched(Z)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->J:Lcom/badlogic/gdx/Application;

    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getGraphics()Lcom/badlogic/gdx/Graphics;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-static {v0}, Lcom/badlogic/gdx/backends/android/j;->a(Landroid/view/View;)V

    new-instance p1, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$5;

    invoke-direct {p1, p0}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$5;-><init>(Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;)V

    invoke-static {v0, p1}, Lcom/badlogic/gdx/backends/android/k;->a(Landroid/view/View;Landroid/view/View$OnCapturedPointerListener;)V

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/badlogic/gdx/backends/android/l;->a(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setCursorPosition(II)V
    .locals 0

    return-void
.end method

.method public setInputProcessor(Lcom/badlogic/gdx/InputProcessor;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->X:Lcom/badlogic/gdx/InputProcessor;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setKeyboardAvailable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->Q:Z

    return-void
.end method

.method public setOnscreenKeyboardVisible(Z)V
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/Input$OnscreenKeyboardType;->Default:Lcom/badlogic/gdx/Input$OnscreenKeyboardType;

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->setOnscreenKeyboardVisible(ZLcom/badlogic/gdx/Input$OnscreenKeyboardType;)V

    return-void
.end method

.method public setOnscreenKeyboardVisible(ZLcom/badlogic/gdx/Input$OnscreenKeyboardType;)V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->I:Landroid/os/Handler;

    new-instance v1, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$4;-><init>(Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;ZLcom/badlogic/gdx/Input$OnscreenKeyboardType;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public vibrate(I)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->N:Lcom/badlogic/gdx/backends/android/AndroidHaptics;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/backends/android/AndroidHaptics;->vibrate(I)V

    return-void
.end method

.method public vibrate(IIZ)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->N:Lcom/badlogic/gdx/backends/android/AndroidHaptics;

    invoke-virtual {v0, p1, p2, p3}, Lcom/badlogic/gdx/backends/android/AndroidHaptics;->vibrate(IIZ)V

    return-void
.end method

.method public vibrate(IZ)V
    .locals 0

    iget-object p2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->N:Lcom/badlogic/gdx/backends/android/AndroidHaptics;

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/backends/android/AndroidHaptics;->vibrate(I)V

    return-void
.end method

.method public vibrate(Lcom/badlogic/gdx/Input$VibrationType;)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->N:Lcom/badlogic/gdx/backends/android/AndroidHaptics;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/backends/android/AndroidHaptics;->vibrate(Lcom/badlogic/gdx/Input$VibrationType;)V

    return-void
.end method
