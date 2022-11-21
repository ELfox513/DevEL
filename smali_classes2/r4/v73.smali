.class public final Lr4/v73;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "TV;>;"
        }
    .end annotation
.end field

.field public final b:Lr4/t73;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/t73<",
            "-TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Future;Lr4/t73;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "TV;>;",
            "Lr4/t73<",
            "-TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/v73;->a:Ljava/util/concurrent/Future;

    iput-object p2, p0, Lr4/v73;->b:Lr4/t73;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lr4/v73;->a:Ljava/util/concurrent/Future;

    instance-of v1, v0, Lr4/a93;

    if-eqz v1, :cond_1

    check-cast v0, Lr4/a93;

    invoke-static {v0}, Lr4/b93;->a(Lr4/a93;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lr4/v73;->b:Lr4/t73;

    invoke-interface {v1, v0}, Lr4/t73;->a(Ljava/lang/Throwable;)V

    return-void

    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lr4/v73;->a:Ljava/util/concurrent/Future;

    invoke-static {v0}, Lr4/y73;->q(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lr4/v73;->b:Lr4/t73;

    invoke-interface {v1, v0}, Lr4/t73;->b(Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    iget-object v1, p0, Lr4/v73;->b:Lr4/t73;

    invoke-interface {v1, v0}, Lr4/t73;->a(Ljava/lang/Throwable;)V

    return-void

    :catch_2
    move-exception v0

    iget-object v1, p0, Lr4/v73;->b:Lr4/t73;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v1, v0}, Lr4/t73;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lr4/u03;->a(Ljava/lang/Object;)Lr4/t03;

    move-result-object v0

    iget-object v1, p0, Lr4/v73;->b:Lr4/t73;

    invoke-virtual {v0, v1}, Lr4/t03;->a(Ljava/lang/Object;)Lr4/t03;

    invoke-virtual {v0}, Lr4/t03;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
