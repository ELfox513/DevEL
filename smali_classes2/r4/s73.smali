.class public abstract Lr4/s73;
.super Lr4/q73;
.source "SourceFile"

# interfaces
.implements Lr4/h83;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lr4/q73<",
        "TV;>;",
        "Lr4/h83<",
        "TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lr4/q73;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 1

    invoke-virtual {p0}, Lr4/s73;->j()Lr4/h83;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lr4/h83;->c(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public abstract j()Lr4/h83;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr4/h83<",
            "+TV;>;"
        }
    .end annotation
.end method
