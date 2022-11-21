.class public Lx3/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/google/android/gms/common/api/Status;)Lu3/b;
    .locals 1
    .param p0    # Lcom/google/android/gms/common/api/Status;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/Status;->b1()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lu3/k;

    invoke-direct {v0, p0}, Lu3/k;-><init>(Lcom/google/android/gms/common/api/Status;)V

    return-object v0

    :cond_0
    new-instance v0, Lu3/b;

    invoke-direct {v0, p0}, Lu3/b;-><init>(Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method
