.class public final Lk7/m$b;
.super Lo7/y$a;
.source "SourceFile"

# interfaces
.implements Lo7/t0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk7/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo7/y$a<",
        "Lk7/m;",
        "Lk7/m$b;",
        ">;",
        "Lo7/t0;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lk7/m;->Q()Lk7/m;

    move-result-object v0

    invoke-direct {p0, v0}, Lo7/y$a;-><init>(Lo7/y;)V

    return-void
.end method

.method public synthetic constructor <init>(Lk7/m$a;)V
    .locals 0

    invoke-direct {p0}, Lk7/m$b;-><init>()V

    return-void
.end method


# virtual methods
.method public Q(Ljava/lang/Iterable;)Lk7/m$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lk7/k;",
            ">;)",
            "Lk7/m$b;"
        }
    .end annotation

    invoke-virtual {p0}, Lo7/y$a;->G()V

    iget-object v0, p0, Lo7/y$a;->b:Lo7/y;

    check-cast v0, Lk7/m;

    invoke-static {v0, p1}, Lk7/m;->X(Lk7/m;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public S(Ljava/lang/Iterable;)Lk7/m$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lk7/m;",
            ">;)",
            "Lk7/m$b;"
        }
    .end annotation

    invoke-virtual {p0}, Lo7/y$a;->G()V

    iget-object v0, p0, Lo7/y$a;->b:Lo7/y;

    check-cast v0, Lk7/m;

    invoke-static {v0, p1}, Lk7/m;->U(Lk7/m;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public T(Lk7/k;)Lk7/m$b;
    .locals 1

    invoke-virtual {p0}, Lo7/y$a;->G()V

    iget-object v0, p0, Lo7/y$a;->b:Lo7/y;

    check-cast v0, Lk7/m;

    invoke-static {v0, p1}, Lk7/m;->W(Lk7/m;Lk7/k;)V

    return-object p0
.end method

.method public U(Lk7/m;)Lk7/m$b;
    .locals 1

    invoke-virtual {p0}, Lo7/y$a;->G()V

    iget-object v0, p0, Lo7/y$a;->b:Lo7/y;

    check-cast v0, Lk7/m;

    invoke-static {v0, p1}, Lk7/m;->T(Lk7/m;Lk7/m;)V

    return-object p0
.end method

.method public V(Ljava/util/Map;)Lk7/m$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)",
            "Lk7/m$b;"
        }
    .end annotation

    invoke-virtual {p0}, Lo7/y$a;->G()V

    iget-object v0, p0, Lo7/y$a;->b:Lo7/y;

    check-cast v0, Lk7/m;

    invoke-static {v0}, Lk7/m;->S(Lk7/m;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public W(Ljava/util/Map;)Lk7/m$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lk7/m$b;"
        }
    .end annotation

    invoke-virtual {p0}, Lo7/y$a;->G()V

    iget-object v0, p0, Lo7/y$a;->b:Lo7/y;

    check-cast v0, Lk7/m;

    invoke-static {v0}, Lk7/m;->V(Lk7/m;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public X(Ljava/lang/String;J)Lk7/m$b;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lo7/y$a;->G()V

    iget-object v0, p0, Lo7/y$a;->b:Lo7/y;

    check-cast v0, Lk7/m;

    invoke-static {v0}, Lk7/m;->S(Lk7/m;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public Y(J)Lk7/m$b;
    .locals 1

    invoke-virtual {p0}, Lo7/y$a;->G()V

    iget-object v0, p0, Lo7/y$a;->b:Lo7/y;

    check-cast v0, Lk7/m;

    invoke-static {v0, p1, p2}, Lk7/m;->Y(Lk7/m;J)V

    return-object p0
.end method

.method public Z(J)Lk7/m$b;
    .locals 1

    invoke-virtual {p0}, Lo7/y$a;->G()V

    iget-object v0, p0, Lo7/y$a;->b:Lo7/y;

    check-cast v0, Lk7/m;

    invoke-static {v0, p1, p2}, Lk7/m;->Z(Lk7/m;J)V

    return-object p0
.end method

.method public a0(Ljava/lang/String;)Lk7/m$b;
    .locals 1

    invoke-virtual {p0}, Lo7/y$a;->G()V

    iget-object v0, p0, Lo7/y$a;->b:Lo7/y;

    check-cast v0, Lk7/m;

    invoke-static {v0, p1}, Lk7/m;->R(Lk7/m;Ljava/lang/String;)V

    return-object p0
.end method
