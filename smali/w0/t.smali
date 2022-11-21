.class public abstract Lw0/t;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AddedAbstractMethod"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static g(Landroid/content/Context;)Lw0/t;
    .locals 0

    invoke-static {p0}, Lx0/i;->n(Landroid/content/Context;)Lx0/i;

    move-result-object p0

    return-object p0
.end method

.method public static h(Landroid/content/Context;Landroidx/work/a;)V
    .locals 0

    invoke-static {p0, p1}, Lx0/i;->h(Landroid/content/Context;Landroidx/work/a;)V

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;Lw0/d;Ljava/util/List;)Lw0/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lw0/d;",
            "Ljava/util/List<",
            "Lw0/l;",
            ">;)",
            "Lw0/r;"
        }
    .end annotation
.end method

.method public final b(Ljava/lang/String;Lw0/d;Lw0/l;)Lw0/r;
    .locals 0

    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lw0/t;->a(Ljava/lang/String;Lw0/d;Ljava/util/List;)Lw0/r;

    move-result-object p1

    return-object p1
.end method

.method public abstract c(Ljava/lang/String;)Lw0/m;
.end method

.method public abstract d(Ljava/lang/String;)Lw0/m;
.end method

.method public abstract e(Ljava/util/List;)Lw0/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lw0/u;",
            ">;)",
            "Lw0/m;"
        }
    .end annotation
.end method

.method public final f(Lw0/u;)Lw0/m;
    .locals 0

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lw0/t;->e(Ljava/util/List;)Lw0/m;

    move-result-object p1

    return-object p1
.end method
