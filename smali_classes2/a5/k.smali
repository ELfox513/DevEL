.class public final La5/k;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lv3/m;)Lv3/q;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResultT:",
            "Ljava/lang/Object;",
            ">(",
            "Lv3/m<",
            "Lk4/l;",
            "Lj5/j<",
            "TResultT;>;>;)",
            "Lv3/q<",
            "Lk4/l;",
            "TResultT;>;"
        }
    .end annotation

    invoke-static {}, Lv3/q;->a()Lv3/q$a;

    move-result-object v0

    new-instance v1, La5/j;

    invoke-direct {v1, p0}, La5/j;-><init>(Lv3/m;)V

    invoke-virtual {v0, v1}, Lv3/q$a;->b(Lv3/m;)Lv3/q$a;

    move-result-object p0

    invoke-virtual {p0}, Lv3/q$a;->a()Lv3/q;

    move-result-object p0

    return-object p0
.end method
