.class public La5/b;
.super Lu3/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu3/e<",
        "Lh4/d$a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lh4/d$a;)V
    .locals 2

    sget-object v0, Lh4/d;->g:Lu3/a;

    sget-object v1, Lu3/e$a;->c:Lu3/e$a;

    invoke-direct {p0, p1, v0, p2, v1}, Lu3/e;-><init>(Landroid/app/Activity;Lu3/a;Lu3/a$d;Lu3/e$a;)V

    return-void
.end method

.method public static y(Lv3/m;)Lv3/q;
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

    new-instance v1, La5/c;

    invoke-direct {v1, p0}, La5/c;-><init>(Lv3/m;)V

    invoke-virtual {v0, v1}, Lv3/q$a;->b(Lv3/m;)Lv3/q$a;

    move-result-object p0

    invoke-virtual {p0}, Lv3/q$a;->a()Lv3/q;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public g()Lx3/d$a;
    .locals 2

    invoke-super {p0}, Lu3/e;->g()Lx3/d$a;

    move-result-object v0

    invoke-virtual {p0}, Lu3/e;->n()Lu3/a$d;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lu3/e;->n()Lu3/a$d;

    move-result-object v1

    check-cast v1, Lh4/d$a;

    iget-object v1, v1, Lh4/d$a;->v:Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lu3/e;->n()Lu3/a$d;

    move-result-object v1

    check-cast v1, Lh4/d$a;

    iget-object v1, v1, Lh4/d$a;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lx3/d$a;->b(Ljava/lang/String;)Lx3/d$a;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public final x(Lv3/m;)Lj5/i;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResultT:",
            "Ljava/lang/Object;",
            ">(",
            "Lv3/m<",
            "Lk4/l;",
            "Lj5/j<",
            "TResultT;>;>;)",
            "Lj5/i<",
            "TResultT;>;"
        }
    .end annotation

    invoke-static {p1}, La5/b;->y(Lv3/m;)Lv3/q;

    move-result-object p1

    invoke-virtual {p0, p1}, Lu3/e;->l(Lv3/q;)Lj5/i;

    move-result-object p1

    return-object p1
.end method
