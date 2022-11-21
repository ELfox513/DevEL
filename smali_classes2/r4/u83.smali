.class public final Lr4/u83;
.super Lr4/g83;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr4/g83<",
        "Lr4/h83;",
        ">;"
    }
.end annotation


# instance fields
.field public final d:Lr4/d73;

.field public final synthetic k:Lr4/x83;


# direct methods
.method public constructor <init>(Lr4/x83;Lr4/d73;)V
    .locals 0

    iput-object p1, p0, Lr4/u83;->k:Lr4/x83;

    invoke-direct {p0}, Lr4/g83;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lr4/u83;->d:Lr4/d73;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lr4/u83;->d:Lr4/d73;

    invoke-interface {v0}, Lr4/d73;->zza()Lr4/h83;

    move-result-object v0

    iget-object v1, p0, Lr4/u83;->d:Lr4/d73;

    const-string v2, "AsyncCallable.call returned null instead of a Future. Did you mean to return immediateFuture(null)? %s"

    invoke-static {v0, v2, v1}, Lr4/z03;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lr4/u83;->d:Lr4/d73;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()Z
    .locals 1

    iget-object v0, p0, Lr4/u83;->k:Lr4/x83;

    invoke-virtual {v0}, Lr4/p63;->isDone()Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic e(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lr4/h83;

    iget-object v0, p0, Lr4/u83;->k:Lr4/x83;

    invoke-virtual {v0, p1}, Lr4/p63;->w(Lr4/h83;)Z

    return-void
.end method

.method public final f(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lr4/u83;->k:Lr4/x83;

    invoke-virtual {v0, p1}, Lr4/p63;->v(Ljava/lang/Throwable;)Z

    return-void
.end method
