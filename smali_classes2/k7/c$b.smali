.class public final Lk7/c$b;
.super Lo7/y$a;
.source "SourceFile"

# interfaces
.implements Lo7/t0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk7/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo7/y$a<",
        "Lk7/c;",
        "Lk7/c$b;",
        ">;",
        "Lo7/t0;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lk7/c;->Q()Lk7/c;

    move-result-object v0

    invoke-direct {p0, v0}, Lo7/y$a;-><init>(Lo7/y;)V

    return-void
.end method

.method public synthetic constructor <init>(Lk7/c$a;)V
    .locals 0

    invoke-direct {p0}, Lk7/c$b;-><init>()V

    return-void
.end method


# virtual methods
.method public Q()Z
    .locals 1

    iget-object v0, p0, Lo7/y$a;->b:Lo7/y;

    check-cast v0, Lk7/c;

    invoke-virtual {v0}, Lk7/c;->a0()Z

    move-result v0

    return v0
.end method

.method public S(Ljava/util/Map;)Lk7/c$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lk7/c$b;"
        }
    .end annotation

    invoke-virtual {p0}, Lo7/y$a;->G()V

    iget-object v0, p0, Lo7/y$a;->b:Lo7/y;

    check-cast v0, Lk7/c;

    invoke-static {v0}, Lk7/c;->T(Lk7/c;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public T(Lk7/a$b;)Lk7/c$b;
    .locals 1

    invoke-virtual {p0}, Lo7/y$a;->G()V

    iget-object v0, p0, Lo7/y$a;->b:Lo7/y;

    check-cast v0, Lk7/c;

    invoke-virtual {p1}, Lo7/y$a;->D()Lo7/y;

    move-result-object p1

    check-cast p1, Lk7/a;

    invoke-static {v0, p1}, Lk7/c;->V(Lk7/c;Lk7/a;)V

    return-object p0
.end method

.method public U(Ljava/lang/String;)Lk7/c$b;
    .locals 1

    invoke-virtual {p0}, Lo7/y$a;->G()V

    iget-object v0, p0, Lo7/y$a;->b:Lo7/y;

    check-cast v0, Lk7/c;

    invoke-static {v0, p1}, Lk7/c;->U(Lk7/c;Ljava/lang/String;)V

    return-object p0
.end method

.method public V(Lk7/d;)Lk7/c$b;
    .locals 1

    invoke-virtual {p0}, Lo7/y$a;->G()V

    iget-object v0, p0, Lo7/y$a;->b:Lo7/y;

    check-cast v0, Lk7/c;

    invoke-static {v0, p1}, Lk7/c;->S(Lk7/c;Lk7/d;)V

    return-object p0
.end method

.method public W(Ljava/lang/String;)Lk7/c$b;
    .locals 1

    invoke-virtual {p0}, Lo7/y$a;->G()V

    iget-object v0, p0, Lo7/y$a;->b:Lo7/y;

    check-cast v0, Lk7/c;

    invoke-static {v0, p1}, Lk7/c;->R(Lk7/c;Ljava/lang/String;)V

    return-object p0
.end method
