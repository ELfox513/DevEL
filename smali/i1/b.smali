.class public Li1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li1/a;


# instance fields
.field public final a:Lg1/i;

.field public final b:Landroid/os/Handler;

.field public final c:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Li1/b;->b:Landroid/os/Handler;

    new-instance v0, Li1/b$a;

    invoke-direct {v0, p0}, Li1/b$a;-><init>(Li1/b;)V

    iput-object v0, p0, Li1/b;->c:Ljava/util/concurrent/Executor;

    new-instance v0, Lg1/i;

    invoke-direct {v0, p1}, Lg1/i;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Li1/b;->a:Lg1/i;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Li1/b;->c:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public b(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Li1/b;->a:Lg1/i;

    invoke-virtual {v0, p1}, Lg1/i;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c()Lg1/i;
    .locals 1

    iget-object v0, p0, Li1/b;->a:Lg1/i;

    return-object v0
.end method

.method public d(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Li1/b;->b:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
