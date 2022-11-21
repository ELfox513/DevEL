.class public final Lr4/fc3;
.super Lr4/da3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr4/da3<",
        "Lr4/xf3;",
        "Lr4/ag3;",
        ">;"
    }
.end annotation


# static fields
.field public static final d:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lr4/fc3;->d:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lr4/p93;

    new-instance v1, Lr4/dc3;

    const-class v2, Lr4/g93;

    invoke-direct {v1, v2}, Lr4/dc3;-><init>(Ljava/lang/Class;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Lr4/xf3;

    const-class v2, Lr4/ag3;

    invoke-direct {p0, v1, v2, v0}, Lr4/da3;-><init>(Ljava/lang/Class;Ljava/lang/Class;[Lr4/p93;)V

    return-void
.end method

.method public static synthetic k()[B
    .locals 1

    sget-object v0, Lr4/fc3;->d:[B

    return-object v0
.end method

.method public static synthetic l(IIILr4/l93;[BI)Lr4/n93;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Lr4/l93;",
            "[BI)",
            "Lr4/n93<",
            "Lr4/rf3;",
            ">;"
        }
    .end annotation

    new-instance p0, Lr4/n93;

    invoke-static {}, Lr4/rf3;->E()Lr4/qf3;

    move-result-object p1

    invoke-static {}, Lr4/gg3;->D()Lr4/fg3;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lr4/fg3;->x(I)Lr4/fg3;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lr4/fg3;->z(I)Lr4/fg3;

    invoke-static {p4}, Lr4/ll3;->I([B)Lr4/ll3;

    move-result-object p4

    invoke-virtual {v0, p4}, Lr4/fg3;->v(Lr4/ll3;)Lr4/fg3;

    invoke-virtual {v0}, Lr4/lm3;->o()Lr4/pm3;

    move-result-object p4

    check-cast p4, Lr4/gg3;

    invoke-static {}, Lr4/zg3;->E()Lr4/yg3;

    move-result-object v0

    invoke-virtual {p3}, Lr4/l93;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lr4/yg3;->v(Ljava/lang/String;)Lr4/yg3;

    invoke-virtual {p3}, Lr4/l93;->b()[B

    move-result-object v3

    invoke-static {v3}, Lr4/ll3;->I([B)Lr4/ll3;

    move-result-object v3

    invoke-virtual {v0, v3}, Lr4/yg3;->x(Lr4/ll3;)Lr4/yg3;

    invoke-virtual {p3}, Lr4/l93;->d()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    if-eqz p3, :cond_1

    const/4 v3, 0x1

    if-eq p3, v3, :cond_2

    const/4 v1, 0x2

    if-eq p3, v1, :cond_0

    const/4 v1, 0x6

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    :cond_2
    :goto_0
    invoke-virtual {v0, v1}, Lr4/yg3;->z(I)Lr4/yg3;

    invoke-virtual {v0}, Lr4/lm3;->o()Lr4/pm3;

    move-result-object p3

    check-cast p3, Lr4/zg3;

    invoke-static {}, Lr4/of3;->D()Lr4/nf3;

    move-result-object v0

    invoke-virtual {v0, p3}, Lr4/nf3;->v(Lr4/zg3;)Lr4/nf3;

    invoke-virtual {v0}, Lr4/lm3;->o()Lr4/pm3;

    move-result-object p3

    check-cast p3, Lr4/of3;

    invoke-static {}, Lr4/uf3;->E()Lr4/tf3;

    move-result-object v0

    invoke-virtual {v0, p4}, Lr4/tf3;->v(Lr4/gg3;)Lr4/tf3;

    invoke-virtual {v0, p3}, Lr4/tf3;->x(Lr4/of3;)Lr4/tf3;

    invoke-virtual {v0, p2}, Lr4/tf3;->z(I)Lr4/tf3;

    invoke-virtual {v0}, Lr4/lm3;->o()Lr4/pm3;

    move-result-object p2

    check-cast p2, Lr4/uf3;

    invoke-virtual {p1, p2}, Lr4/qf3;->v(Lr4/uf3;)Lr4/qf3;

    invoke-virtual {p1}, Lr4/lm3;->o()Lr4/pm3;

    move-result-object p1

    check-cast p1, Lr4/rf3;

    invoke-direct {p0, p1, p5}, Lr4/n93;-><init>(Ljava/lang/Object;I)V

    return-object p0
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 1

    const-string v0, "type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey"

    return-object v0
.end method

.method public final bridge synthetic c(Lr4/ll3;)Lr4/ao3;
    .locals 1

    invoke-static {}, Lr4/bm3;->a()Lr4/bm3;

    move-result-object v0

    invoke-static {p1, v0}, Lr4/xf3;->I(Lr4/ll3;Lr4/bm3;)Lr4/xf3;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic d(Lr4/ao3;)V
    .locals 2

    check-cast p1, Lr4/xf3;

    invoke-virtual {p1}, Lr4/xf3;->E()Lr4/ll3;

    move-result-object v0

    invoke-virtual {v0}, Lr4/ll3;->G()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lr4/xf3;->C()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/dk3;->b(II)V

    invoke-virtual {p1}, Lr4/xf3;->D()Lr4/ag3;

    move-result-object p1

    invoke-virtual {p1}, Lr4/ag3;->D()Lr4/uf3;

    move-result-object p1

    invoke-static {p1}, Lr4/oc3;->a(Lr4/uf3;)V

    return-void

    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "invalid ECIES private key"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final h()Lr4/o93;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr4/o93<",
            "Lr4/rf3;",
            "Lr4/xf3;",
            ">;"
        }
    .end annotation

    new-instance v0, Lr4/ec3;

    const-class v1, Lr4/rf3;

    invoke-direct {v0, p0, v1}, Lr4/ec3;-><init>(Lr4/fc3;Ljava/lang/Class;)V

    return-object v0
.end method

.method public final i()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method
