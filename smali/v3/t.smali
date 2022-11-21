.class public final Lv3/t;
.super Lv3/h1;
.source "SourceFile"


# instance fields
.field public final q:Lp/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp/b<",
            "Lv3/b<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final r:Lv3/f;


# direct methods
.method public constructor <init>(Lv3/h;Lv3/f;Lt3/g;)V
    .locals 0

    invoke-direct {p0, p1, p3}, Lv3/h1;-><init>(Lv3/h;Lt3/g;)V

    new-instance p1, Lp/b;

    invoke-direct {p1}, Lp/b;-><init>()V

    iput-object p1, p0, Lv3/t;->q:Lp/b;

    iput-object p2, p0, Lv3/t;->r:Lv3/f;

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->a:Lv3/h;

    const-string p2, "ConnectionlessLifecycleHelper"

    invoke-interface {p1, p2, p0}, Lv3/h;->a(Ljava/lang/String;Lcom/google/android/gms/common/api/internal/LifecycleCallback;)V

    return-void
.end method

.method public static t(Landroid/app/Activity;Lv3/f;Lv3/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lv3/f;",
            "Lv3/b<",
            "*>;)V"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->c(Landroid/app/Activity;)Lv3/h;

    move-result-object p0

    const-class v0, Lv3/t;

    const-string v1, "ConnectionlessLifecycleHelper"

    invoke-interface {p0, v1, v0}, Lv3/h;->c(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    move-result-object v0

    check-cast v0, Lv3/t;

    if-nez v0, :cond_0

    new-instance v0, Lv3/t;

    invoke-static {}, Lt3/g;->m()Lt3/g;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lv3/t;-><init>(Lv3/h;Lv3/f;Lt3/g;)V

    :cond_0
    const-string p0, "ApiKey cannot be null"

    invoke-static {p2, p0}, Lx3/q;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, v0, Lv3/t;->q:Lp/b;

    invoke-virtual {p0, p2}, Lp/b;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v0}, Lv3/f;->q(Lv3/t;)V

    return-void
.end method


# virtual methods
.method public final h()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->h()V

    invoke-virtual {p0}, Lv3/t;->v()V

    return-void
.end method

.method public final j()V
    .locals 0

    invoke-super {p0}, Lv3/h1;->j()V

    invoke-virtual {p0}, Lv3/t;->v()V

    return-void
.end method

.method public final k()V
    .locals 1

    invoke-super {p0}, Lv3/h1;->k()V

    iget-object v0, p0, Lv3/t;->r:Lv3/f;

    invoke-virtual {v0, p0}, Lv3/f;->r(Lv3/t;)V

    return-void
.end method

.method public final o(Lt3/b;I)V
    .locals 1

    iget-object v0, p0, Lv3/t;->r:Lv3/f;

    invoke-virtual {v0, p1, p2}, Lv3/f;->y(Lt3/b;I)V

    return-void
.end method

.method public final p()V
    .locals 1

    iget-object v0, p0, Lv3/t;->r:Lv3/f;

    invoke-virtual {v0}, Lv3/f;->t()V

    return-void
.end method

.method public final u()Lp/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lp/b<",
            "Lv3/b<",
            "*>;>;"
        }
    .end annotation

    iget-object v0, p0, Lv3/t;->q:Lp/b;

    return-object v0
.end method

.method public final v()V
    .locals 1

    iget-object v0, p0, Lv3/t;->q:Lp/b;

    invoke-virtual {v0}, Lp/b;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lv3/t;->r:Lv3/f;

    invoke-virtual {v0, p0}, Lv3/f;->q(Lv3/t;)V

    :cond_0
    return-void
.end method
