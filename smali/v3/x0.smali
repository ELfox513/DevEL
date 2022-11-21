.class public abstract Lv3/x0;
.super Lv3/m0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lv3/m0;"
    }
.end annotation


# instance fields
.field public final b:Lj5/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj5/j<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILj5/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lj5/j<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lv3/m0;-><init>(I)V

    iput-object p2, p0, Lv3/x0;->b:Lj5/j;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    iget-object v0, p0, Lv3/x0;->b:Lj5/j;

    new-instance v1, Lu3/b;

    invoke-direct {v1, p1}, Lu3/b;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0, v1}, Lj5/j;->d(Ljava/lang/Exception;)Z

    return-void
.end method

.method public final b(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lv3/x0;->b:Lj5/j;

    invoke-virtual {v0, p1}, Lj5/j;->d(Ljava/lang/Exception;)Z

    return-void
.end method

.method public final d(Lv3/c0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv3/c0<",
            "*>;)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Lv3/x0;->h(Lv3/c0;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object v0, p0, Lv3/x0;->b:Lj5/j;

    invoke-virtual {v0, p1}, Lj5/j;->d(Ljava/lang/Exception;)Z

    return-void

    :catch_1
    move-exception p1

    invoke-static {p1}, Lv3/b1;->e(Landroid/os/RemoteException;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {p0, p1}, Lv3/x0;->a(Lcom/google/android/gms/common/api/Status;)V

    return-void

    :catch_2
    move-exception p1

    invoke-static {p1}, Lv3/b1;->e(Landroid/os/RemoteException;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {p0, v0}, Lv3/x0;->a(Lcom/google/android/gms/common/api/Status;)V

    throw p1
.end method

.method public abstract h(Lv3/c0;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv3/c0<",
            "*>;)V"
        }
    .end annotation
.end method
