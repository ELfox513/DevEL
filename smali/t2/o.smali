.class public Lt2/o;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Ly2/c;)V
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p1    # Ly2/c;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    invoke-static {}, Lr4/zx;->d()Lr4/zx;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Lr4/zx;->e(Landroid/content/Context;Ljava/lang/String;Ly2/c;)V

    return-void
.end method

.method public static b(Lt2/t;)V
    .locals 1
    .param p0    # Lt2/t;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    invoke-static {}, Lr4/zx;->d()Lr4/zx;

    move-result-object v0

    invoke-virtual {v0, p0}, Lr4/zx;->j(Lt2/t;)V

    return-void
.end method
