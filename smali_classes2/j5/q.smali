.class public final Lj5/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj5/d0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        "TContinuationResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lj5/d0<",
        "TTResult;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public final b:Lj5/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj5/a<",
            "TTResult;TTContinuationResult;>;"
        }
    .end annotation
.end field

.field public final c:Lj5/i0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj5/i0<",
            "TTContinuationResult;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lj5/a;Lj5/i0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lj5/a<",
            "TTResult;TTContinuationResult;>;",
            "Lj5/i0<",
            "TTContinuationResult;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj5/q;->a:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lj5/q;->b:Lj5/a;

    iput-object p3, p0, Lj5/q;->c:Lj5/i0;

    return-void
.end method

.method public static synthetic c(Lj5/q;)Lj5/i0;
    .locals 0

    iget-object p0, p0, Lj5/q;->c:Lj5/i0;

    return-object p0
.end method

.method public static synthetic d(Lj5/q;)Lj5/a;
    .locals 0

    iget-object p0, p0, Lj5/q;->b:Lj5/a;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final b(Lj5/i;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj5/i<",
            "TTResult;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lj5/q;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lj5/p;

    invoke-direct {v1, p0, p1}, Lj5/p;-><init>(Lj5/q;Lj5/i;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
