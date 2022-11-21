.class public final Lv3/t0;
.super Li5/d;
.source "SourceFile"

# interfaces
.implements Lu3/f$a;
.implements Lu3/f$b;


# static fields
.field public static final s:Lu3/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu3/a$a<",
            "+",
            "Lh5/f;",
            "Lh5/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/os/Handler;

.field public final d:Lu3/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu3/a$a<",
            "+",
            "Lh5/f;",
            "Lh5/a;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field public final p:Lx3/d;

.field public q:Lh5/f;

.field public r:Lv3/s0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lh5/e;->c:Lu3/a$a;

    sput-object v0, Lv3/t0;->s:Lu3/a$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lx3/d;)V
    .locals 1

    sget-object v0, Lv3/t0;->s:Lu3/a$a;

    invoke-direct {p0}, Li5/d;-><init>()V

    iput-object p1, p0, Lv3/t0;->a:Landroid/content/Context;

    iput-object p2, p0, Lv3/t0;->b:Landroid/os/Handler;

    const-string p1, "ClientSettings must not be null"

    invoke-static {p3, p1}, Lx3/q;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lx3/d;

    iput-object p1, p0, Lv3/t0;->p:Lx3/d;

    invoke-virtual {p3}, Lx3/d;->h()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lv3/t0;->k:Ljava/util/Set;

    iput-object v0, p0, Lv3/t0;->d:Lu3/a$a;

    return-void
.end method

.method public static synthetic e3(Lv3/t0;)Lv3/s0;
    .locals 0

    iget-object p0, p0, Lv3/t0;->r:Lv3/s0;

    return-object p0
.end method

.method public static synthetic p6(Lv3/t0;Li5/l;)V
    .locals 3

    invoke-virtual {p1}, Li5/l;->X0()Lt3/b;

    move-result-object v0

    invoke-virtual {v0}, Lt3/b;->b1()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Li5/l;->Y0()Lx3/p0;

    move-result-object p1

    invoke-static {p1}, Lx3/q;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lx3/p0;

    invoke-virtual {p1}, Lx3/p0;->Y0()Lt3/b;

    move-result-object v0

    invoke-virtual {v0}, Lt3/b;->b1()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x30

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Sign-in succeeded with resolve account failure: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    const-string v2, "SignInCoordinator"

    invoke-static {v2, p1, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    iget-object p1, p0, Lv3/t0;->r:Lv3/s0;

    invoke-interface {p1, v0}, Lv3/s0;->c(Lt3/b;)V

    :goto_0
    iget-object p0, p0, Lv3/t0;->q:Lh5/f;

    invoke-interface {p0}, Lu3/a$f;->e()V

    return-void

    :cond_1
    iget-object v0, p0, Lv3/t0;->r:Lv3/s0;

    invoke-virtual {p1}, Lx3/p0;->X0()Lx3/j;

    move-result-object p1

    iget-object v1, p0, Lv3/t0;->k:Ljava/util/Set;

    invoke-interface {v0, p1, v1}, Lv3/s0;->b(Lx3/j;Ljava/util/Set;)V

    goto :goto_0
.end method


# virtual methods
.method public final A2()V
    .locals 1

    iget-object v0, p0, Lv3/t0;->q:Lh5/f;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lu3/a$f;->e()V

    :cond_0
    return-void
.end method

.method public final b2(Lv3/s0;)V
    .locals 9

    iget-object v0, p0, Lv3/t0;->q:Lh5/f;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lu3/a$f;->e()V

    :cond_0
    iget-object v0, p0, Lv3/t0;->p:Lx3/d;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lx3/d;->m(Ljava/lang/Integer;)V

    iget-object v2, p0, Lv3/t0;->d:Lu3/a$a;

    iget-object v3, p0, Lv3/t0;->a:Landroid/content/Context;

    iget-object v0, p0, Lv3/t0;->b:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    iget-object v5, p0, Lv3/t0;->p:Lx3/d;

    invoke-virtual {v5}, Lx3/d;->k()Lh5/a;

    move-result-object v6

    move-object v7, p0

    move-object v8, p0

    invoke-virtual/range {v2 .. v8}, Lu3/a$a;->a(Landroid/content/Context;Landroid/os/Looper;Lx3/d;Ljava/lang/Object;Lu3/f$a;Lu3/f$b;)Lu3/a$f;

    move-result-object v0

    iput-object v0, p0, Lv3/t0;->q:Lh5/f;

    iput-object p1, p0, Lv3/t0;->r:Lv3/s0;

    iget-object p1, p0, Lv3/t0;->k:Ljava/util/Set;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lv3/t0;->q:Lh5/f;

    invoke-interface {p1}, Lh5/f;->j()V

    return-void

    :cond_2
    :goto_0
    iget-object p1, p0, Lv3/t0;->b:Landroid/os/Handler;

    new-instance v0, Lv3/q0;

    invoke-direct {v0, p0}, Lv3/q0;-><init>(Lv3/t0;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final b5(Li5/l;)V
    .locals 2

    iget-object v0, p0, Lv3/t0;->b:Landroid/os/Handler;

    new-instance v1, Lv3/r0;

    invoke-direct {v1, p0, p1}, Lv3/r0;-><init>(Lv3/t0;Li5/l;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final j0(I)V
    .locals 0

    iget-object p1, p0, Lv3/t0;->q:Lh5/f;

    invoke-interface {p1}, Lu3/a$f;->e()V

    return-void
.end method

.method public final o0(Landroid/os/Bundle;)V
    .locals 0

    iget-object p1, p0, Lv3/t0;->q:Lh5/f;

    invoke-interface {p1, p0}, Lh5/f;->g(Li5/f;)V

    return-void
.end method

.method public final t0(Lt3/b;)V
    .locals 1

    iget-object v0, p0, Lv3/t0;->r:Lv3/s0;

    invoke-interface {v0, p1}, Lv3/s0;->c(Lt3/b;)V

    return-void
.end method
