.class public final Lk7/k$c;
.super Lo7/y$a;
.source "SourceFile"

# interfaces
.implements Lo7/t0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk7/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo7/y$a<",
        "Lk7/k;",
        "Lk7/k$c;",
        ">;",
        "Lo7/t0;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lk7/k;->Q()Lk7/k;

    move-result-object v0

    invoke-direct {p0, v0}, Lo7/y$a;-><init>(Lo7/y;)V

    return-void
.end method

.method public synthetic constructor <init>(Lk7/k$a;)V
    .locals 0

    invoke-direct {p0}, Lk7/k$c;-><init>()V

    return-void
.end method


# virtual methods
.method public Q(Lk7/l;)Lk7/k$c;
    .locals 1

    invoke-virtual {p0}, Lo7/y$a;->G()V

    iget-object v0, p0, Lo7/y$a;->b:Lo7/y;

    check-cast v0, Lk7/k;

    invoke-static {v0, p1}, Lk7/k;->S(Lk7/k;Lk7/l;)V

    return-object p0
.end method

.method public S(Ljava/lang/String;)Lk7/k$c;
    .locals 1

    invoke-virtual {p0}, Lo7/y$a;->G()V

    iget-object v0, p0, Lo7/y$a;->b:Lo7/y;

    check-cast v0, Lk7/k;

    invoke-static {v0, p1}, Lk7/k;->R(Lk7/k;Ljava/lang/String;)V

    return-object p0
.end method
