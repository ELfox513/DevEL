.class public final Lk7/g$b;
.super Lo7/y$a;
.source "SourceFile"

# interfaces
.implements Lo7/t0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk7/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo7/y$a<",
        "Lk7/g;",
        "Lk7/g$b;",
        ">;",
        "Lo7/t0;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lk7/g;->Q()Lk7/g;

    move-result-object v0

    invoke-direct {p0, v0}, Lo7/y$a;-><init>(Lo7/y;)V

    return-void
.end method

.method public synthetic constructor <init>(Lk7/g$a;)V
    .locals 0

    invoke-direct {p0}, Lk7/g$b;-><init>()V

    return-void
.end method


# virtual methods
.method public Q(Lk7/b;)Lk7/g$b;
    .locals 1

    invoke-virtual {p0}, Lo7/y$a;->G()V

    iget-object v0, p0, Lo7/y$a;->b:Lo7/y;

    check-cast v0, Lk7/g;

    invoke-static {v0, p1}, Lk7/g;->S(Lk7/g;Lk7/b;)V

    return-object p0
.end method

.method public S(Lk7/e;)Lk7/g$b;
    .locals 1

    invoke-virtual {p0}, Lo7/y$a;->G()V

    iget-object v0, p0, Lo7/y$a;->b:Lo7/y;

    check-cast v0, Lk7/g;

    invoke-static {v0, p1}, Lk7/g;->U(Lk7/g;Lk7/e;)V

    return-object p0
.end method

.method public T(Lk7/f;)Lk7/g$b;
    .locals 1

    invoke-virtual {p0}, Lo7/y$a;->G()V

    iget-object v0, p0, Lo7/y$a;->b:Lo7/y;

    check-cast v0, Lk7/g;

    invoke-static {v0, p1}, Lk7/g;->T(Lk7/g;Lk7/f;)V

    return-object p0
.end method

.method public U(Ljava/lang/String;)Lk7/g$b;
    .locals 1

    invoke-virtual {p0}, Lo7/y$a;->G()V

    iget-object v0, p0, Lo7/y$a;->b:Lo7/y;

    check-cast v0, Lk7/g;

    invoke-static {v0, p1}, Lk7/g;->R(Lk7/g;Ljava/lang/String;)V

    return-object p0
.end method
