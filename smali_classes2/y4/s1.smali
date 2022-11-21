.class public final Ly4/s1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly4/s1;->a:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Ly4/s1;->a:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public final varargs b(Ljava/lang/String;Ljava/lang/String;[Ly4/r1;)V
    .locals 2

    iget-object v0, p0, Ly4/s1;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Ly4/p1;

    invoke-direct {v1, p1, p2, p3}, Ly4/p1;-><init>(Ljava/lang/String;Ljava/lang/String;[Ly4/r1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
