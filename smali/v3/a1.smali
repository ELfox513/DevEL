.class public final Lv3/a1;
.super Lv3/x0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lv3/x0<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final c:Lv3/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv3/i<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lv3/i;Lj5/j;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv3/i<",
            "*>;",
            "Lj5/j<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x4

    invoke-direct {p0, v0, p2}, Lv3/x0;-><init>(ILj5/j;)V

    iput-object p1, p0, Lv3/a1;->c:Lv3/i;

    return-void
.end method


# virtual methods
.method public final bridge synthetic c(Lv3/s;Z)V
    .locals 0

    return-void
.end method

.method public final f(Lv3/c0;)[Lt3/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv3/c0<",
            "*>;)[",
            "Lt3/d;"
        }
    .end annotation

    invoke-virtual {p1}, Lv3/c0;->t()Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lv3/a1;->c:Lv3/i;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lv3/p0;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    throw v0
.end method

.method public final g(Lv3/c0;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv3/c0<",
            "*>;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Lv3/c0;->t()Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lv3/a1;->c:Lv3/i;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lv3/p0;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method public final h(Lv3/c0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv3/c0<",
            "*>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lv3/c0;->t()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lv3/a1;->c:Lv3/i;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv3/p0;

    if-nez v0, :cond_0

    iget-object p1, p0, Lv3/x0;->b:Lj5/j;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lj5/j;->e(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-virtual {p1}, Lv3/c0;->s()Lu3/a$f;

    const/4 p1, 0x0

    throw p1
.end method
