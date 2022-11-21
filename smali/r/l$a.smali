.class public Lr/l$a;
.super Lr/l$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static e:Landroid/os/HandlerThread;

.field public static f:Landroid/os/Handler;


# instance fields
.field public a:I

.field public b:[Landroid/util/SparseIntArray;

.field public c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;>;"
        }
    .end annotation
.end field

.field public d:Landroid/view/Window$OnFrameMetricsAvailableListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Lr/l$b;-><init>()V

    const/16 v0, 0x9

    new-array v0, v0, [Landroid/util/SparseIntArray;

    iput-object v0, p0, Lr/l$a;->b:[Landroid/util/SparseIntArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lr/l$a;->c:Ljava/util/ArrayList;

    new-instance v0, Lr/l$a$a;

    invoke-direct {v0, p0}, Lr/l$a$a;-><init>(Lr/l$a;)V

    iput-object v0, p0, Lr/l$a;->d:Landroid/view/Window$OnFrameMetricsAvailableListener;

    iput p1, p0, Lr/l$a;->a:I

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .locals 4

    sget-object v0, Lr/l$a;->e:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "FrameMetricsAggregator"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lr/l$a;->e:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lr/l$a;->e:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lr/l$a;->f:Landroid/os/Handler;

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x8

    if-gt v0, v1, :cond_2

    iget-object v1, p0, Lr/l$a;->b:[Landroid/util/SparseIntArray;

    aget-object v2, v1, v0

    if-nez v2, :cond_1

    iget v2, p0, Lr/l$a;->a:I

    const/4 v3, 0x1

    shl-int/2addr v3, v0

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    aput-object v2, v1, v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lr/l$a;->d:Landroid/view/Window$OnFrameMetricsAvailableListener;

    sget-object v2, Lr/l$a;->f:Landroid/os/Handler;

    invoke-static {v0, v1, v2}, Lr/k;->a(Landroid/view/Window;Landroid/view/Window$OnFrameMetricsAvailableListener;Landroid/os/Handler;)V

    iget-object v0, p0, Lr/l$a;->c:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()[Landroid/util/SparseIntArray;
    .locals 2

    iget-object v0, p0, Lr/l$a;->b:[Landroid/util/SparseIntArray;

    const/16 v1, 0x9

    new-array v1, v1, [Landroid/util/SparseIntArray;

    iput-object v1, p0, Lr/l$a;->b:[Landroid/util/SparseIntArray;

    return-object v0
.end method

.method public c(Landroid/util/SparseIntArray;J)V
    .locals 4

    if-eqz p1, :cond_0

    const-wide/32 v0, 0x7a120

    add-long/2addr v0, p2

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    long-to-int v1, v0

    const-wide/16 v2, 0x0

    cmp-long v0, p2, v2

    if-ltz v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, v1, p2}, Landroid/util/SparseIntArray;->put(II)V

    :cond_0
    return-void
.end method
