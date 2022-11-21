.class public final Lr4/ra3;
.super Lr4/q93;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr4/q93<",
        "Lr4/od3;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lr4/p93;

    new-instance v1, Lr4/pa3;

    const-class v2, Lr4/c93;

    invoke-direct {v1, v2}, Lr4/pa3;-><init>(Ljava/lang/Class;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Lr4/od3;

    invoke-direct {p0, v1, v0}, Lr4/q93;-><init>(Ljava/lang/Class;[Lr4/p93;)V

    return-void
.end method

.method public static synthetic k(IIIIII)Lr4/n93;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIII)",
            "Lr4/n93<",
            "Lr4/rd3;",
            ">;"
        }
    .end annotation

    new-instance p1, Lr4/n93;

    invoke-static {}, Lr4/xd3;->I()Lr4/wd3;

    move-result-object p2

    invoke-static {}, Lr4/be3;->D()Lr4/zd3;

    move-result-object p4

    const/16 v0, 0x10

    invoke-virtual {p4, v0}, Lr4/zd3;->v(I)Lr4/zd3;

    invoke-virtual {p4}, Lr4/lm3;->o()Lr4/pm3;

    move-result-object p4

    check-cast p4, Lr4/be3;

    invoke-virtual {p2, p4}, Lr4/wd3;->v(Lr4/be3;)Lr4/wd3;

    invoke-virtual {p2, p0}, Lr4/wd3;->x(I)Lr4/wd3;

    invoke-virtual {p2}, Lr4/lm3;->o()Lr4/pm3;

    move-result-object p0

    check-cast p0, Lr4/xd3;

    invoke-static {}, Lr4/qg3;->I()Lr4/pg3;

    move-result-object p2

    invoke-static {}, Lr4/tg3;->D()Lr4/sg3;

    move-result-object p4

    const/4 v0, 0x5

    invoke-virtual {p4, v0}, Lr4/sg3;->x(I)Lr4/sg3;

    invoke-virtual {p4, p3}, Lr4/sg3;->v(I)Lr4/sg3;

    invoke-virtual {p4}, Lr4/lm3;->o()Lr4/pm3;

    move-result-object p3

    check-cast p3, Lr4/tg3;

    invoke-virtual {p2, p3}, Lr4/pg3;->v(Lr4/tg3;)Lr4/pg3;

    const/16 p3, 0x20

    invoke-virtual {p2, p3}, Lr4/pg3;->x(I)Lr4/pg3;

    invoke-virtual {p2}, Lr4/lm3;->o()Lr4/pm3;

    move-result-object p2

    check-cast p2, Lr4/qg3;

    invoke-static {}, Lr4/rd3;->I()Lr4/qd3;

    move-result-object p3

    invoke-virtual {p3, p0}, Lr4/qd3;->v(Lr4/xd3;)Lr4/qd3;

    invoke-virtual {p3, p2}, Lr4/qd3;->x(Lr4/qg3;)Lr4/qd3;

    invoke-virtual {p3}, Lr4/lm3;->o()Lr4/pm3;

    move-result-object p0

    check-cast p0, Lr4/rd3;

    invoke-direct {p1, p0, p5}, Lr4/n93;-><init>(Ljava/lang/Object;I)V

    return-object p1
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 1

    const-string v0, "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey"

    return-object v0
.end method

.method public final bridge synthetic c(Lr4/ll3;)Lr4/ao3;
    .locals 1

    invoke-static {}, Lr4/bm3;->a()Lr4/bm3;

    move-result-object v0

    invoke-static {p1, v0}, Lr4/od3;->I(Lr4/ll3;Lr4/bm3;)Lr4/od3;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic d(Lr4/ao3;)V
    .locals 2

    check-cast p1, Lr4/od3;

    invoke-virtual {p1}, Lr4/od3;->C()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/dk3;->b(II)V

    new-instance v0, Lr4/ua3;

    invoke-direct {v0}, Lr4/ua3;-><init>()V

    invoke-virtual {p1}, Lr4/od3;->D()Lr4/ud3;

    move-result-object v0

    invoke-static {v0}, Lr4/ua3;->l(Lr4/ud3;)V

    new-instance v0, Lr4/wc3;

    invoke-direct {v0}, Lr4/wc3;-><init>()V

    invoke-virtual {p1}, Lr4/od3;->E()Lr4/ng3;

    move-result-object p1

    invoke-static {p1}, Lr4/wc3;->l(Lr4/ng3;)V

    return-void
.end method

.method public final h()Lr4/o93;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr4/o93<",
            "Lr4/rd3;",
            "Lr4/od3;",
            ">;"
        }
    .end annotation

    new-instance v0, Lr4/qa3;

    const-class v1, Lr4/rd3;

    invoke-direct {v0, p0, v1}, Lr4/qa3;-><init>(Lr4/ra3;Ljava/lang/Class;)V

    return-object v0
.end method

.method public final i()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public final j()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
