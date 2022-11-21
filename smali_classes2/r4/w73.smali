.class public final Lr4/w73;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Z

.field public final b:Lr4/o33;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/o33<",
            "Lr4/h83<",
            "+TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public synthetic constructor <init>(ZLr4/o33;Lr4/x73;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lr4/o33<",
            "Lr4/h83<",
            "+TV;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lr4/w73;->a:Z

    iput-object p2, p0, Lr4/w73;->b:Lr4/o33;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lr4/h83;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TC;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lr4/h83<",
            "TC;>;"
        }
    .end annotation

    new-instance v0, Lr4/k73;

    iget-object v1, p0, Lr4/w73;->b:Lr4/o33;

    iget-boolean v2, p0, Lr4/w73;->a:Z

    invoke-direct {v0, v1, v2, p2, p1}, Lr4/k73;-><init>(Lr4/j33;ZLjava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)V

    return-object v0
.end method
