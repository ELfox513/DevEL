.class public Lv3/r;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lj5/j;)V
    .locals 1
    .param p0    # Lcom/google/android/gms/common/api/Status;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Lj5/j;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/common/api/Status;",
            "TTResult;",
            "Lj5/j<",
            "TTResult;>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/Status;->c1()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, p1}, Lj5/j;->c(Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance p1, Lu3/b;

    invoke-direct {p1, p0}, Lu3/b;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {p2, p1}, Lj5/j;->b(Ljava/lang/Exception;)V

    return-void
.end method
