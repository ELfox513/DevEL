.class public final Lr4/w83;
.super Lr4/g83;
.source "SourceFile"


# instance fields
.field public final d:Ljava/util/concurrent/Callable;

.field public final synthetic k:Lr4/x83;


# direct methods
.method public constructor <init>(Lr4/x83;Ljava/util/concurrent/Callable;)V
    .locals 0

    iput-object p1, p0, Lr4/w83;->k:Lr4/x83;

    invoke-direct {p0}, Lr4/g83;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lr4/w83;->d:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lr4/w83;->d:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lr4/w83;->d:Ljava/util/concurrent/Callable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()Z
    .locals 1

    iget-object v0, p0, Lr4/w83;->k:Lr4/x83;

    invoke-virtual {v0}, Lr4/p63;->isDone()Z

    move-result v0

    return v0
.end method

.method public final e(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lr4/w83;->k:Lr4/x83;

    invoke-virtual {v0, p1}, Lr4/p63;->u(Ljava/lang/Object;)Z

    return-void
.end method

.method public final f(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lr4/w83;->k:Lr4/x83;

    invoke-virtual {v0, p1}, Lr4/p63;->v(Ljava/lang/Throwable;)Z

    return-void
.end method
