.class public final Lu3/i;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lu3/l;Lu3/f;)Lu3/h;
    .locals 2
    .param p0    # Lu3/l;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p1    # Lu3/f;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lu3/l;",
            ">(TR;",
            "Lu3/f;",
            ")",
            "Lu3/h<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "Result must not be null"

    invoke-static {p0, v0}, Lx3/q;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0}, Lu3/l;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->c1()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Status code must not be SUCCESS"

    invoke-static {v0, v1}, Lx3/q;->b(ZLjava/lang/Object;)V

    new-instance v0, Lu3/q;

    invoke-direct {v0, p1, p0}, Lu3/q;-><init>(Lu3/f;Lu3/l;)V

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->h(Lu3/l;)V

    return-object v0
.end method

.method public static b(Lu3/l;Lu3/f;)Lu3/g;
    .locals 1
    .param p0    # Lu3/l;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p1    # Lu3/f;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lu3/l;",
            ">(TR;",
            "Lu3/f;",
            ")",
            "Lu3/g<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "Result must not be null"

    invoke-static {p0, v0}, Lx3/q;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lu3/r;

    invoke-direct {v0, p1}, Lu3/r;-><init>(Lu3/f;)V

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->h(Lu3/l;)V

    new-instance p0, Lv3/l;

    invoke-direct {p0, v0}, Lv3/l;-><init>(Lu3/h;)V

    return-object p0
.end method

.method public static c(Lcom/google/android/gms/common/api/Status;Lu3/f;)Lu3/h;
    .locals 1
    .param p0    # Lcom/google/android/gms/common/api/Status;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p1    # Lu3/f;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Status;",
            "Lu3/f;",
            ")",
            "Lu3/h<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    const-string v0, "Result must not be null"

    invoke-static {p0, v0}, Lx3/q;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lv3/p;

    invoke-direct {v0, p1}, Lv3/p;-><init>(Lu3/f;)V

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->h(Lu3/l;)V

    return-object v0
.end method
