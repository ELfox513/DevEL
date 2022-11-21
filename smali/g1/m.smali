.class public Lg1/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final r:Ljava/lang/String;


# instance fields
.field public final a:Lh1/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh1/d<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Landroid/content/Context;

.field public final d:Lf1/p;

.field public final k:Landroidx/work/ListenableWorker;

.field public final p:Lw0/f;

.field public final q:Li1/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "WorkForegroundRunnable"

    invoke-static {v0}, Lw0/j;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lg1/m;->r:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lf1/p;Landroidx/work/ListenableWorker;Lw0/f;Li1/a;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "LambdaLast"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lh1/d;->u()Lh1/d;

    move-result-object v0

    iput-object v0, p0, Lg1/m;->a:Lh1/d;

    iput-object p1, p0, Lg1/m;->b:Landroid/content/Context;

    iput-object p2, p0, Lg1/m;->d:Lf1/p;

    iput-object p3, p0, Lg1/m;->k:Landroidx/work/ListenableWorker;

    iput-object p4, p0, Lg1/m;->p:Lw0/f;

    iput-object p5, p0, Lg1/m;->q:Li1/a;

    return-void
.end method


# virtual methods
.method public a()Ll5/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ll5/a<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lg1/m;->a:Lh1/d;

    return-object v0
.end method

.method public run()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnsafeExperimentalUsageError"
        }
    .end annotation

    iget-object v0, p0, Lg1/m;->d:Lf1/p;

    iget-boolean v0, v0, Lf1/p;->q:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lz/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lh1/d;->u()Lh1/d;

    move-result-object v0

    iget-object v1, p0, Lg1/m;->q:Li1/a;

    invoke-interface {v1}, Li1/a;->a()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lg1/m$a;

    invoke-direct {v2, p0, v0}, Lg1/m$a;-><init>(Lg1/m;Lh1/d;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    new-instance v1, Lg1/m$b;

    invoke-direct {v1, p0, v0}, Lg1/m$b;-><init>(Lg1/m;Lh1/d;)V

    iget-object v2, p0, Lg1/m;->q:Li1/a;

    invoke-interface {v2}, Li1/a;->a()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lh1/a;->d(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lg1/m;->a:Lh1/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lh1/d;->q(Ljava/lang/Object;)Z

    return-void
.end method
