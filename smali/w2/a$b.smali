.class public final Lw2/a$b;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw2/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lw2/a;",
            ">;"
        }
    .end annotation
.end field

.field public b:J

.field public d:Ljava/util/concurrent/CountDownLatch;

.field public k:Z


# direct methods
.method public constructor <init>(Lw2/a;J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lw2/a$b;->a:Ljava/lang/ref/WeakReference;

    iput-wide p2, p0, Lw2/a$b;->b:J

    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lw2/a$b;->d:Ljava/util/concurrent/CountDownLatch;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lw2/a$b;->k:Z

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lw2/a$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw2/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lw2/a;->a()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lw2/a$b;->k:Z

    :cond_0
    return-void
.end method

.method public final run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lw2/a$b;->d:Ljava/util/concurrent/CountDownLatch;

    iget-wide v1, p0, Lw2/a$b;->b:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lw2/a$b;->a()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    invoke-virtual {p0}, Lw2/a$b;->a()V

    return-void
.end method
