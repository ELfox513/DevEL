.class public final Lv3/z0;
.super Lv3/m0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResultT:",
        "Ljava/lang/Object;",
        ">",
        "Lv3/m0;"
    }
.end annotation


# instance fields
.field public final b:Lv3/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv3/q<",
            "Lu3/a$b;",
            "TResultT;>;"
        }
    .end annotation
.end field

.field public final c:Lj5/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj5/j<",
            "TResultT;>;"
        }
    .end annotation
.end field

.field public final d:Lv3/o;


# direct methods
.method public constructor <init>(ILv3/q;Lj5/j;Lv3/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lv3/q<",
            "Lu3/a$b;",
            "TResultT;>;",
            "Lj5/j<",
            "TResultT;>;",
            "Lv3/o;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lv3/m0;-><init>(I)V

    iput-object p3, p0, Lv3/z0;->c:Lj5/j;

    iput-object p2, p0, Lv3/z0;->b:Lv3/q;

    iput-object p4, p0, Lv3/z0;->d:Lv3/o;

    const/4 p3, 0x2

    if-ne p1, p3, :cond_1

    invoke-virtual {p2}, Lv3/q;->c()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Best-effort write calls cannot pass methods that should auto-resolve missing features."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    iget-object v0, p0, Lv3/z0;->c:Lj5/j;

    iget-object v1, p0, Lv3/z0;->d:Lv3/o;

    invoke-interface {v1, p1}, Lv3/o;->a(Lcom/google/android/gms/common/api/Status;)Ljava/lang/Exception;

    move-result-object p1

    invoke-virtual {v0, p1}, Lj5/j;->d(Ljava/lang/Exception;)Z

    return-void
.end method

.method public final b(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lv3/z0;->c:Lj5/j;

    invoke-virtual {v0, p1}, Lj5/j;->d(Ljava/lang/Exception;)Z

    return-void
.end method

.method public final c(Lv3/s;Z)V
    .locals 1

    iget-object v0, p0, Lv3/z0;->c:Lj5/j;

    invoke-virtual {p1, v0, p2}, Lv3/s;->b(Lj5/j;Z)V

    return-void
.end method

.method public final d(Lv3/c0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv3/c0<",
            "*>;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lv3/z0;->b:Lv3/q;

    invoke-virtual {p1}, Lv3/c0;->s()Lu3/a$f;

    move-result-object p1

    iget-object v1, p0, Lv3/z0;->c:Lj5/j;

    invoke-virtual {v0, p1, v1}, Lv3/q;->b(Lu3/a$b;Lj5/j;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object v0, p0, Lv3/z0;->c:Lj5/j;

    invoke-virtual {v0, p1}, Lj5/j;->d(Ljava/lang/Exception;)Z

    return-void

    :catch_1
    move-exception p1

    invoke-static {p1}, Lv3/b1;->e(Landroid/os/RemoteException;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {p0, p1}, Lv3/z0;->a(Lcom/google/android/gms/common/api/Status;)V

    return-void

    :catch_2
    move-exception p1

    throw p1
.end method

.method public final f(Lv3/c0;)[Lt3/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv3/c0<",
            "*>;)[",
            "Lt3/d;"
        }
    .end annotation

    iget-object p1, p0, Lv3/z0;->b:Lv3/q;

    invoke-virtual {p1}, Lv3/q;->d()[Lt3/d;

    move-result-object p1

    return-object p1
.end method

.method public final g(Lv3/c0;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv3/c0<",
            "*>;)Z"
        }
    .end annotation

    iget-object p1, p0, Lv3/z0;->b:Lv3/q;

    invoke-virtual {p1}, Lv3/q;->c()Z

    move-result p1

    return p1
.end method
