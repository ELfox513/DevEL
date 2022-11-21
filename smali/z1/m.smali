.class public Lz1/m;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz1/m$a;
    }
.end annotation


# static fields
.field public static a:Z = true

.field public static b:Lw1/a0;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a()Lw1/a0;
    .locals 1

    sget-object v0, Lz1/m;->b:Lw1/a0;

    return-object v0
.end method

.method public static b()Z
    .locals 1

    sget-boolean v0, Lz1/m;->a:Z

    return v0
.end method

.method public static c(Lw1/u;IZZLw1/a0;)Lw1/u;
    .locals 7

    const-class v0, Lz1/m$a;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v1 .. v6}, Lz1/m;->d(Lw1/u;IZZLw1/a0;Ljava/util/EnumSet;)Lw1/u;

    move-result-object p0

    return-object p0
.end method

.method public static d(Lw1/u;IZZLw1/a0;Ljava/util/EnumSet;)Lw1/u;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw1/u;",
            "IZZ",
            "Lw1/a0;",
            "Ljava/util/EnumSet<",
            "Lz1/m$a;",
            ">;)",
            "Lw1/u;"
        }
    .end annotation

    sput-boolean p3, Lz1/m;->a:Z

    sput-object p4, Lz1/m;->b:Lw1/a0;

    invoke-static {p0, p1, p2}, Lz1/t;->a(Lw1/u;IZ)Lz1/v;

    move-result-object p3

    invoke-static {p3, p5}, Lz1/m;->f(Lz1/v;Ljava/util/EnumSet;)V

    const/4 p4, 0x0

    invoke-static {p3, p4}, La2/f;->e(Lz1/v;Z)Lw1/u;

    move-result-object p3

    invoke-virtual {p3}, Lw1/u;->b()Lw1/c;

    move-result-object p4

    invoke-virtual {p4}, Lw1/c;->K()I

    move-result p4

    sget-object v0, Lz1/m;->b:Lw1/a0;

    invoke-interface {v0}, Lw1/a0;->b()I

    move-result v0

    if-le p4, v0, :cond_0

    invoke-static {p0, p1, p2, p5}, Lz1/m;->e(Lw1/u;IZLjava/util/EnumSet;)Lw1/u;

    move-result-object p3

    :cond_0
    return-object p3
.end method

.method public static e(Lw1/u;IZLjava/util/EnumSet;)Lw1/u;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw1/u;",
            "IZ",
            "Ljava/util/EnumSet<",
            "Lz1/m$a;",
            ">;)",
            "Lw1/u;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lz1/t;->a(Lw1/u;IZ)Lz1/v;

    move-result-object p0

    invoke-virtual {p3}, Ljava/util/EnumSet;->clone()Ljava/util/EnumSet;

    move-result-object p1

    sget-object p2, Lz1/m$a;->k:Lz1/m$a;

    invoke-virtual {p1, p2}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    invoke-static {p0, p1}, Lz1/m;->f(Lz1/v;Ljava/util/EnumSet;)V

    const/4 p1, 0x1

    invoke-static {p0, p1}, La2/f;->e(Lz1/v;Z)Lw1/u;

    move-result-object p0

    return-object p0
.end method

.method public static f(Lz1/v;Ljava/util/EnumSet;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz1/v;",
            "Ljava/util/EnumSet<",
            "Lz1/m$a;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lz1/m$a;->a:Lz1/m$a;

    invoke-virtual {p1, v0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lz1/k;->d(Lz1/v;)V

    :cond_0
    sget-object v0, Lz1/m$a;->b:Lz1/m$a;

    invoke-virtual {p1, v0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lz1/q;->c(Lz1/v;)V

    invoke-static {p0}, Lz1/c;->d(Lz1/v;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    sget-object v2, Lz1/m$a;->d:Lz1/m$a;

    invoke-virtual {p1, v2}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p0}, Lz1/h;->e(Lz1/v;)V

    invoke-static {p0}, Lz1/c;->d(Lz1/v;)V

    const/4 v0, 0x0

    :cond_2
    sget-object v2, Lz1/m$a;->p:Lz1/m$a;

    invoke-virtual {p1, v2}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1, v2}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {p0}, Lz1/f;->k(Lz1/v;)V

    invoke-static {p0}, Lz1/c;->d(Lz1/v;)V

    const/4 v0, 0x0

    :cond_3
    sget-object v2, Lz1/m$a;->k:Lz1/m$a;

    invoke-virtual {p1, v2}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {p0}, Lz1/b;->c(Lz1/v;)V

    invoke-static {p0}, Lz1/c;->d(Lz1/v;)V

    goto :goto_1

    :cond_4
    move v1, v0

    :goto_1
    if-eqz v1, :cond_5

    invoke-static {p0}, Lz1/c;->d(Lz1/v;)V

    :cond_5
    invoke-static {p0}, Lz1/o;->b(Lz1/v;)V

    return-void
.end method
