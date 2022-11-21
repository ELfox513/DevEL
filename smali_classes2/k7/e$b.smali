.class public final Lk7/e$b;
.super Lo7/y$a;
.source "SourceFile"

# interfaces
.implements Lo7/t0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk7/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo7/y$a<",
        "Lk7/e;",
        "Lk7/e$b;",
        ">;",
        "Lo7/t0;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lk7/e;->Q()Lk7/e;

    move-result-object v0

    invoke-direct {p0, v0}, Lo7/y$a;-><init>(Lo7/y;)V

    return-void
.end method

.method public synthetic constructor <init>(Lk7/e$a;)V
    .locals 0

    invoke-direct {p0}, Lk7/e$b;-><init>()V

    return-void
.end method


# virtual methods
.method public Q(J)Lk7/e$b;
    .locals 1

    invoke-virtual {p0}, Lo7/y$a;->G()V

    iget-object v0, p0, Lo7/y$a;->b:Lo7/y;

    check-cast v0, Lk7/e;

    invoke-static {v0, p1, p2}, Lk7/e;->R(Lk7/e;J)V

    return-object p0
.end method

.method public S(J)Lk7/e$b;
    .locals 1

    invoke-virtual {p0}, Lo7/y$a;->G()V

    iget-object v0, p0, Lo7/y$a;->b:Lo7/y;

    check-cast v0, Lk7/e;

    invoke-static {v0, p1, p2}, Lk7/e;->T(Lk7/e;J)V

    return-object p0
.end method

.method public T(J)Lk7/e$b;
    .locals 1

    invoke-virtual {p0}, Lo7/y$a;->G()V

    iget-object v0, p0, Lo7/y$a;->b:Lo7/y;

    check-cast v0, Lk7/e;

    invoke-static {v0, p1, p2}, Lk7/e;->S(Lk7/e;J)V

    return-object p0
.end method
