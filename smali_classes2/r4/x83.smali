.class public final Lr4/x83;
.super Lr4/n73;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/RunnableFuture;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lr4/n73<",
        "TV;>;",
        "Ljava/util/concurrent/RunnableFuture<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public volatile s:Lr4/g83;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/g83<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lr4/n73;-><init>()V

    new-instance v0, Lr4/w83;

    invoke-direct {v0, p0, p1}, Lr4/w83;-><init>(Lr4/x83;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lr4/x83;->s:Lr4/g83;

    return-void
.end method

.method public constructor <init>(Lr4/d73;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/d73<",
            "TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lr4/n73;-><init>()V

    new-instance v0, Lr4/u83;

    invoke-direct {v0, p0, p1}, Lr4/u83;-><init>(Lr4/x83;Lr4/d73;)V

    iput-object v0, p0, Lr4/x83;->s:Lr4/g83;

    return-void
.end method

.method public static F(Ljava/lang/Runnable;Ljava/lang/Object;)Lr4/x83;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TV;)",
            "Lr4/x83<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lr4/x83;

    invoke-static {p0, p1}, Ljava/util/concurrent/Executors;->callable(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Callable;

    move-result-object p0

    invoke-direct {v0, p0}, Lr4/x83;-><init>(Ljava/util/concurrent/Callable;)V

    return-object v0
.end method


# virtual methods
.method public final i()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lr4/x83;->s:Lr4/g83;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x7

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "task=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-super {p0}, Lr4/p63;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final j()V
    .locals 1

    invoke-virtual {p0}, Lr4/p63;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr4/x83;->s:Lr4/g83;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lr4/g83;->g()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lr4/x83;->s:Lr4/g83;

    return-void
.end method

.method public final run()V
    .locals 1

    iget-object v0, p0, Lr4/x83;->s:Lr4/g83;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lr4/g83;->run()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lr4/x83;->s:Lr4/g83;

    return-void
.end method
