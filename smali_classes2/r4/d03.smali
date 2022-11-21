.class public final synthetic Lr4/d03;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj5/d;


# instance fields
.field public final a:Lr4/p83;


# direct methods
.method public constructor <init>(Lr4/p83;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/d03;->a:Lr4/p83;

    return-void
.end method


# virtual methods
.method public final a(Lj5/i;)V
    .locals 2

    iget-object v0, p0, Lr4/d03;->a:Lr4/p83;

    invoke-virtual {p1}, Lj5/i;->n()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lr4/p63;->cancel(Z)Z

    return-void

    :cond_0
    invoke-virtual {p1}, Lj5/i;->p()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lj5/i;->l()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lr4/p83;->u(Ljava/lang/Object;)Z

    return-void

    :cond_1
    invoke-virtual {p1}, Lj5/i;->k()Ljava/lang/Exception;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {v0, p1}, Lr4/p83;->v(Ljava/lang/Throwable;)Z

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method
