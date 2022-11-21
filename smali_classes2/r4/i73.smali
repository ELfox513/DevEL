.class public final Lr4/i73;
.super Lr4/j73;
.source "SourceFile"


# instance fields
.field public final p:Ljava/util/concurrent/Callable;

.field public final synthetic q:Lr4/k73;


# direct methods
.method public constructor <init>(Lr4/k73;Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)V
    .locals 0

    iput-object p1, p0, Lr4/i73;->q:Lr4/k73;

    invoke-direct {p0, p1, p3}, Lr4/j73;-><init>(Lr4/k73;Ljava/util/concurrent/Executor;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lr4/i73;->p:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lr4/i73;->p:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lr4/i73;->p:Ljava/util/concurrent/Callable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final h(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lr4/i73;->q:Lr4/k73;

    invoke-virtual {v0, p1}, Lr4/p63;->u(Ljava/lang/Object;)Z

    return-void
.end method
