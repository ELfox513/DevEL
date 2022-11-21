.class public final Lk7/f$b;
.super Lo7/y$a;
.source "SourceFile"

# interfaces
.implements Lo7/t0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk7/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo7/y$a<",
        "Lk7/f;",
        "Lk7/f$b;",
        ">;",
        "Lo7/t0;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lk7/f;->Q()Lk7/f;

    move-result-object v0

    invoke-direct {p0, v0}, Lo7/y$a;-><init>(Lo7/y;)V

    return-void
.end method

.method public synthetic constructor <init>(Lk7/f$a;)V
    .locals 0

    invoke-direct {p0}, Lk7/f$b;-><init>()V

    return-void
.end method


# virtual methods
.method public Q(I)Lk7/f$b;
    .locals 1

    invoke-virtual {p0}, Lo7/y$a;->G()V

    iget-object v0, p0, Lo7/y$a;->b:Lo7/y;

    check-cast v0, Lk7/f;

    invoke-static {v0, p1}, Lk7/f;->U(Lk7/f;I)V

    return-object p0
.end method

.method public S(I)Lk7/f$b;
    .locals 1

    invoke-virtual {p0}, Lo7/y$a;->G()V

    iget-object v0, p0, Lo7/y$a;->b:Lo7/y;

    check-cast v0, Lk7/f;

    invoke-static {v0, p1}, Lk7/f;->S(Lk7/f;I)V

    return-object p0
.end method

.method public T(I)Lk7/f$b;
    .locals 1

    invoke-virtual {p0}, Lo7/y$a;->G()V

    iget-object v0, p0, Lo7/y$a;->b:Lo7/y;

    check-cast v0, Lk7/f;

    invoke-static {v0, p1}, Lk7/f;->T(Lk7/f;I)V

    return-object p0
.end method

.method public U(Ljava/lang/String;)Lk7/f$b;
    .locals 1

    invoke-virtual {p0}, Lo7/y$a;->G()V

    iget-object v0, p0, Lo7/y$a;->b:Lo7/y;

    check-cast v0, Lk7/f;

    invoke-static {v0, p1}, Lk7/f;->R(Lk7/f;Ljava/lang/String;)V

    return-object p0
.end method
