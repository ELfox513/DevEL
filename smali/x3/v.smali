.class public Lx3/v;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)Lx3/w;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    sget-object v0, Lx3/x;->b:Lx3/x;

    invoke-static {p0, v0}, Lx3/v;->b(Landroid/content/Context;Lx3/x;)Lx3/w;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;Lx3/x;)Lx3/w;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p1    # Lx3/x;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    new-instance v0, Lz3/d;

    invoke-direct {v0, p0, p1}, Lz3/d;-><init>(Landroid/content/Context;Lx3/x;)V

    return-object v0
.end method
