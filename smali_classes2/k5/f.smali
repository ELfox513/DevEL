.class public final Lk5/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk5/f$a;,
        Lk5/f$b;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;)Lk5/c;
    .locals 0
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    invoke-static {p0}, Ly4/o1;->a(Landroid/content/Context;)Ly4/o1;

    move-result-object p0

    invoke-virtual {p0}, Ly4/o1;->b()Ly4/v1;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;Lk5/f$b;Lk5/f$a;)V
    .locals 0
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p1    # Lk5/f$b;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Lk5/f$a;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    invoke-static {p0}, Ly4/o1;->a(Landroid/content/Context;)Ly4/o1;

    move-result-object p0

    invoke-virtual {p0}, Ly4/o1;->c()Ly4/c0;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Ly4/c0;->a(Lk5/f$b;Lk5/f$a;)V

    return-void
.end method
