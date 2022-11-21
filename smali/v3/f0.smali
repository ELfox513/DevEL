.class public final Lv3/f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx3/c$c;
.implements Lv3/s0;


# instance fields
.field public final a:Lu3/a$f;

.field public final b:Lv3/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv3/b<",
            "*>;"
        }
    .end annotation
.end field

.field public c:Lx3/j;

.field public d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field public e:Z

.field public final synthetic f:Lv3/f;


# direct methods
.method public constructor <init>(Lv3/f;Lu3/a$f;Lv3/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu3/a$f;",
            "Lv3/b<",
            "*>;)V"
        }
    .end annotation

    iput-object p1, p0, Lv3/f0;->f:Lv3/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lv3/f0;->c:Lx3/j;

    iput-object p1, p0, Lv3/f0;->d:Ljava/util/Set;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lv3/f0;->e:Z

    iput-object p2, p0, Lv3/f0;->a:Lu3/a$f;

    iput-object p3, p0, Lv3/f0;->b:Lv3/b;

    return-void
.end method

.method public static synthetic d(Lv3/f0;)Lv3/b;
    .locals 0

    iget-object p0, p0, Lv3/f0;->b:Lv3/b;

    return-object p0
.end method

.method public static synthetic e(Lv3/f0;Z)Z
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lv3/f0;->e:Z

    return p1
.end method

.method public static synthetic f(Lv3/f0;)Lu3/a$f;
    .locals 0

    iget-object p0, p0, Lv3/f0;->a:Lu3/a$f;

    return-object p0
.end method

.method public static synthetic g(Lv3/f0;)V
    .locals 0

    invoke-virtual {p0}, Lv3/f0;->h()V

    return-void
.end method


# virtual methods
.method public final a(Lt3/b;)V
    .locals 2

    iget-object v0, p0, Lv3/f0;->f:Lv3/f;

    invoke-static {v0}, Lv3/f;->A(Lv3/f;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lv3/e0;

    invoke-direct {v1, p0, p1}, Lv3/e0;-><init>(Lv3/f0;Lt3/b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final b(Lx3/j;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx3/j;",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lv3/f0;->c:Lx3/j;

    iput-object p2, p0, Lv3/f0;->d:Ljava/util/Set;

    invoke-virtual {p0}, Lv3/f0;->h()V

    return-void

    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    const-string p2, "GoogleApiManager"

    const-string v0, "Received null response from onSignInSuccess"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p1, Lt3/b;

    const/4 p2, 0x4

    invoke-direct {p1, p2}, Lt3/b;-><init>(I)V

    invoke-virtual {p0, p1}, Lv3/f0;->c(Lt3/b;)V

    return-void
.end method

.method public final c(Lt3/b;)V
    .locals 2

    iget-object v0, p0, Lv3/f0;->f:Lv3/f;

    invoke-static {v0}, Lv3/f;->h(Lv3/f;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lv3/f0;->b:Lv3/b;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv3/c0;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lv3/c0;->o(Lt3/b;)V

    :cond_0
    return-void
.end method

.method public final h()V
    .locals 3

    iget-boolean v0, p0, Lv3/f0;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lv3/f0;->c:Lx3/j;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lv3/f0;->a:Lu3/a$f;

    iget-object v2, p0, Lv3/f0;->d:Ljava/util/Set;

    invoke-interface {v1, v0, v2}, Lu3/a$f;->o(Lx3/j;Ljava/util/Set;)V

    :cond_0
    return-void
.end method
