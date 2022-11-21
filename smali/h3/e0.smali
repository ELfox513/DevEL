.class public final Lh3/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/t73;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/t73<",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lr4/nf0;

.field public final synthetic b:Lh3/g0;


# direct methods
.method public constructor <init>(Lh3/g0;Lr4/nf0;)V
    .locals 0

    iput-object p1, p0, Lh3/e0;->b:Lh3/g0;

    iput-object p2, p0, Lh3/e0;->a:Lr4/nf0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lh3/e0;->a:Lr4/nf0;

    const-string v1, "Internal error: "

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-interface {v0, p1}, Lr4/nf0;->s(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, ""

    invoke-static {v0, p1}, Lr4/cm0;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final bridge synthetic b(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Landroid/net/Uri;

    :try_start_0
    iget-object v0, p0, Lh3/e0;->b:Lh3/g0;

    invoke-static {v0}, Lh3/g0;->B7(Lh3/g0;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    iget-object v0, p0, Lh3/e0;->a:Lr4/nf0;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lr4/nf0;->c6(Ljava/util/List;)V

    iget-object v0, p0, Lh3/e0;->b:Lh3/g0;

    invoke-static {v0}, Lh3/g0;->w7(Lh3/g0;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh3/e0;->b:Lh3/g0;

    invoke-static {v0}, Lh3/g0;->F7(Lh3/g0;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-static {v0, p1, v1, v2}, Lh3/g0;->H7(Lh3/g0;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iget-object v0, p0, Lh3/e0;->b:Lh3/g0;

    invoke-static {v0}, Lh3/g0;->u7(Lh3/g0;)Lr4/pu2;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lr4/pu2;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    const-string v0, ""

    invoke-static {v0, p1}, Lr4/cm0;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
