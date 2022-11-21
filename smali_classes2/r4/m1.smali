.class public final Lr4/m1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final a:Lr4/v0;

.field public final b:Lr4/za4;


# direct methods
.method public constructor <init>(Lr4/v0;Lr4/za4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/m1;->a:Lr4/v0;

    iput-object p2, p0, Lr4/m1;->b:Lr4/za4;

    return-void
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lr4/m1;->a:Lr4/v0;

    invoke-virtual {v0}, Lr4/v0;->o()Ljava/util/concurrent/Future;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr4/m1;->a:Lr4/v0;

    invoke-virtual {v0}, Lr4/v0;->o()Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lr4/m1;->a:Lr4/v0;

    invoke-virtual {v0}, Lr4/v0;->n()Lr4/pb4;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v1, p0, Lr4/m1;->b:Lr4/za4;

    monitor-enter v1
    :try_end_0
    .catch Lr4/bn3; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Lr4/m1;->b:Lr4/za4;

    invoke-virtual {v0}, Lr4/uk3;->t()[B

    move-result-object v0

    invoke-static {}, Lr4/bm3;->a()Lr4/bm3;

    move-result-object v3

    const/4 v4, 0x0

    array-length v5, v0

    invoke-virtual {v2, v0, v4, v5, v3}, Lr4/lm3;->u([BIILr4/bm3;)Lr4/lm3;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Lr4/bn3; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
