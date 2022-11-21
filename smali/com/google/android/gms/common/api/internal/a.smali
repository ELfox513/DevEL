.class public abstract Lcom/google/android/gms/common/api/internal/a;
.super Lcom/google/android/gms/common/api/internal/BasePendingResult;
.source "SourceFile"

# interfaces
.implements Lv3/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lu3/l;",
        "A::",
        "Lu3/a$b;",
        ">",
        "Lcom/google/android/gms/common/api/internal/BasePendingResult<",
        "TR;>;",
        "Lv3/d<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final p:Lu3/a$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu3/a$c<",
            "TA;>;"
        }
    .end annotation
.end field

.field public final q:Lu3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu3/a<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lu3/a;Lu3/f;)V
    .locals 1
    .param p1    # Lu3/a;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Lu3/f;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu3/a<",
            "*>;",
            "Lu3/f;",
            ")V"
        }
    .end annotation

    const-string v0, "GoogleApiClient must not be null"

    invoke-static {p2, v0}, Lx3/q;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lu3/f;

    invoke-direct {p0, p2}, Lcom/google/android/gms/common/api/internal/BasePendingResult;-><init>(Lu3/f;)V

    const-string p2, "Api must not be null"

    invoke-static {p1, p2}, Lx3/q;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lu3/a;->b()Lu3/a$c;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/a;->p:Lu3/a$c;

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/a;->q:Lu3/a;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/Status;)V
    .locals 2
    .param p1    # Lcom/google/android/gms/common/api/Status;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->c1()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Failed result must not be success"

    invoke-static {v0, v1}, Lx3/q;->b(ZLjava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->e(Lcom/google/android/gms/common/api/Status;)Lu3/l;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->h(Lu3/l;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/a;->o(Lu3/l;)V

    return-void
.end method

.method public bridge synthetic b(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    check-cast p1, Lu3/l;

    invoke-super {p0, p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->h(Lu3/l;)V

    return-void
.end method

.method public abstract n(Lu3/a$b;)V
    .param p1    # Lu3/a$b;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)V"
        }
    .end annotation
.end method

.method public o(Lu3/l;)V
    .locals 0
    .param p1    # Lu3/l;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    return-void
.end method

.method public final p(Lu3/a$b;)V
    .locals 0
    .param p1    # Lu3/a$b;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/a;->n(Lu3/a$b;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/a;->q(Landroid/os/RemoteException;)V

    return-void

    :catch_1
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/a;->q(Landroid/os/RemoteException;)V

    throw p1
.end method

.method public final q(Landroid/os/RemoteException;)V
    .locals 3

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/internal/a;->a(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method
