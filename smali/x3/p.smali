.class public Lx3/p;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lx3/p$a;
    }
.end annotation


# static fields
.field public static final a:Lx3/m0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lx3/j0;

    invoke-direct {v0}, Lx3/j0;-><init>()V

    sput-object v0, Lx3/p;->a:Lx3/m0;

    return-void
.end method

.method public static a(Lu3/h;Lx3/p$a;)Lj5/i;
    .locals 3
    .param p0    # Lu3/h;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p1    # Lx3/p$a;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lu3/l;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lu3/h<",
            "TR;>;",
            "Lx3/p$a<",
            "TR;TT;>;)",
            "Lj5/i<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lx3/p;->a:Lx3/m0;

    new-instance v1, Lj5/j;

    invoke-direct {v1}, Lj5/j;-><init>()V

    new-instance v2, Lx3/k0;

    invoke-direct {v2, p0, v1, p1, v0}, Lx3/k0;-><init>(Lu3/h;Lj5/j;Lx3/p$a;Lx3/m0;)V

    invoke-virtual {p0, v2}, Lu3/h;->c(Lu3/h$a;)V

    invoke-virtual {v1}, Lj5/j;->a()Lj5/i;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lu3/h;)Lj5/i;
    .locals 1
    .param p0    # Lu3/h;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lu3/l;",
            ">(",
            "Lu3/h<",
            "TR;>;)",
            "Lj5/i<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lx3/l0;

    invoke-direct {v0}, Lx3/l0;-><init>()V

    invoke-static {p0, v0}, Lx3/p;->a(Lu3/h;Lx3/p$a;)Lj5/i;

    move-result-object p0

    return-object p0
.end method
