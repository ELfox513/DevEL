.class public final Lk7/a$b;
.super Lo7/y$a;
.source "SourceFile"

# interfaces
.implements Lo7/t0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk7/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo7/y$a<",
        "Lk7/a;",
        "Lk7/a$b;",
        ">;",
        "Lo7/t0;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lk7/a;->Q()Lk7/a;

    move-result-object v0

    invoke-direct {p0, v0}, Lo7/y$a;-><init>(Lo7/y;)V

    return-void
.end method

.method public synthetic constructor <init>(Lk7/a$a;)V
    .locals 0

    invoke-direct {p0}, Lk7/a$b;-><init>()V

    return-void
.end method


# virtual methods
.method public Q(Ljava/lang/String;)Lk7/a$b;
    .locals 1

    invoke-virtual {p0}, Lo7/y$a;->G()V

    iget-object v0, p0, Lo7/y$a;->b:Lo7/y;

    check-cast v0, Lk7/a;

    invoke-static {v0, p1}, Lk7/a;->R(Lk7/a;Ljava/lang/String;)V

    return-object p0
.end method

.method public S(Ljava/lang/String;)Lk7/a$b;
    .locals 1

    invoke-virtual {p0}, Lo7/y$a;->G()V

    iget-object v0, p0, Lo7/y$a;->b:Lo7/y;

    check-cast v0, Lk7/a;

    invoke-static {v0, p1}, Lk7/a;->S(Lk7/a;Ljava/lang/String;)V

    return-object p0
.end method

.method public T(Ljava/lang/String;)Lk7/a$b;
    .locals 1

    invoke-virtual {p0}, Lo7/y$a;->G()V

    iget-object v0, p0, Lo7/y$a;->b:Lo7/y;

    check-cast v0, Lk7/a;

    invoke-static {v0, p1}, Lk7/a;->T(Lk7/a;Ljava/lang/String;)V

    return-object p0
.end method
