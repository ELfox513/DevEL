.class public Ll7/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll7/h$a;
    }
.end annotation


# direct methods
.method public static synthetic a(Ljava/lang/String;Ll7/h$a;Ls5/e;)Ll7/f;
    .locals 0

    invoke-static {p0, p1, p2}, Ll7/h;->d(Ljava/lang/String;Ll7/h$a;Ls5/e;)Ll7/f;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Ls5/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ls5/d<",
            "*>;"
        }
    .end annotation

    invoke-static {p0, p1}, Ll7/f;->a(Ljava/lang/String;Ljava/lang/String;)Ll7/f;

    move-result-object p0

    const-class p1, Ll7/f;

    invoke-static {p0, p1}, Ls5/d;->i(Ljava/lang/Object;Ljava/lang/Class;)Ls5/d;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/String;Ll7/h$a;)Ls5/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ll7/h$a<",
            "Landroid/content/Context;",
            ">;)",
            "Ls5/d<",
            "*>;"
        }
    .end annotation

    const-class v0, Ll7/f;

    invoke-static {v0}, Ls5/d;->j(Ljava/lang/Class;)Ls5/d$b;

    move-result-object v0

    const-class v1, Landroid/content/Context;

    invoke-static {v1}, Ls5/q;->i(Ljava/lang/Class;)Ls5/q;

    move-result-object v1

    invoke-virtual {v0, v1}, Ls5/d$b;->b(Ls5/q;)Ls5/d$b;

    move-result-object v0

    new-instance v1, Ll7/g;

    invoke-direct {v1, p0, p1}, Ll7/g;-><init>(Ljava/lang/String;Ll7/h$a;)V

    invoke-virtual {v0, v1}, Ls5/d$b;->e(Ls5/h;)Ls5/d$b;

    move-result-object p0

    invoke-virtual {p0}, Ls5/d$b;->c()Ls5/d;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Ljava/lang/String;Ll7/h$a;Ls5/e;)Ll7/f;
    .locals 1

    const-class v0, Landroid/content/Context;

    invoke-interface {p2, v0}, Ls5/e;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/Context;

    invoke-interface {p1, p2}, Ll7/h$a;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Ll7/f;->a(Ljava/lang/String;Ljava/lang/String;)Ll7/f;

    move-result-object p0

    return-object p0
.end method
