.class public final Lr4/wc3;
.super Lr4/q93;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr4/q93<",
        "Lr4/ng3;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lr4/p93;

    new-instance v1, Lr4/uc3;

    const-class v2, Lr4/u93;

    invoke-direct {v1, v2}, Lr4/uc3;-><init>(Ljava/lang/Class;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Lr4/ng3;

    invoke-direct {p0, v1, v0}, Lr4/q93;-><init>(Ljava/lang/Class;[Lr4/p93;)V

    return-void
.end method

.method public static synthetic k(Lr4/tg3;)V
    .locals 0

    invoke-static {p0}, Lr4/wc3;->n(Lr4/tg3;)V

    return-void
.end method

.method public static final l(Lr4/ng3;)V
    .locals 2

    invoke-virtual {p0}, Lr4/ng3;->C()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/dk3;->b(II)V

    invoke-virtual {p0}, Lr4/ng3;->E()Lr4/ll3;

    move-result-object v0

    invoke-virtual {v0}, Lr4/ll3;->o()I

    move-result v0

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lr4/ng3;->D()Lr4/tg3;

    move-result-object p0

    invoke-static {p0}, Lr4/wc3;->n(Lr4/tg3;)V

    return-void

    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "key too short"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic m(IIII)Lr4/n93;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)",
            "Lr4/n93<",
            "Lr4/qg3;",
            ">;"
        }
    .end annotation

    new-instance v0, Lr4/n93;

    invoke-static {}, Lr4/qg3;->I()Lr4/pg3;

    move-result-object v1

    invoke-static {}, Lr4/tg3;->D()Lr4/sg3;

    move-result-object v2

    invoke-virtual {v2, p2}, Lr4/sg3;->x(I)Lr4/sg3;

    invoke-virtual {v2, p1}, Lr4/sg3;->v(I)Lr4/sg3;

    invoke-virtual {v2}, Lr4/lm3;->o()Lr4/pm3;

    move-result-object p1

    check-cast p1, Lr4/tg3;

    invoke-virtual {v1, p1}, Lr4/pg3;->v(Lr4/tg3;)Lr4/pg3;

    invoke-virtual {v1, p0}, Lr4/pg3;->x(I)Lr4/pg3;

    invoke-virtual {v1}, Lr4/lm3;->o()Lr4/pm3;

    move-result-object p0

    check-cast p0, Lr4/qg3;

    invoke-direct {v0, p0, p3}, Lr4/n93;-><init>(Ljava/lang/Object;I)V

    return-object v0
.end method

.method public static n(Lr4/tg3;)V
    .locals 3

    invoke-virtual {p0}, Lr4/tg3;->C()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_a

    invoke-virtual {p0}, Lr4/tg3;->K()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    const/4 v1, 0x1

    const-string v2, "tag size too big"

    if-eq v0, v1, :cond_8

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lr4/tg3;->C()I

    move-result p0

    const/16 v0, 0x1c

    if-gt p0, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    invoke-direct {p0, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "unknown hash type"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-virtual {p0}, Lr4/tg3;->C()I

    move-result p0

    const/16 v0, 0x40

    if-gt p0, v0, :cond_3

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/security/GeneralSecurityException;

    invoke-direct {p0, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    invoke-virtual {p0}, Lr4/tg3;->C()I

    move-result p0

    const/16 v0, 0x20

    if-gt p0, v0, :cond_5

    goto :goto_0

    :cond_5
    new-instance p0, Ljava/security/GeneralSecurityException;

    invoke-direct {p0, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    invoke-virtual {p0}, Lr4/tg3;->C()I

    move-result p0

    const/16 v0, 0x30

    if-gt p0, v0, :cond_7

    goto :goto_0

    :cond_7
    new-instance p0, Ljava/security/GeneralSecurityException;

    invoke-direct {p0, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    invoke-virtual {p0}, Lr4/tg3;->C()I

    move-result p0

    const/16 v0, 0x14

    if-gt p0, v0, :cond_9

    :goto_0
    return-void

    :cond_9
    new-instance p0, Ljava/security/GeneralSecurityException;

    invoke-direct {p0, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "tag size too small"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 1

    const-string v0, "type.googleapis.com/google.crypto.tink.HmacKey"

    return-object v0
.end method

.method public final bridge synthetic c(Lr4/ll3;)Lr4/ao3;
    .locals 1

    invoke-static {}, Lr4/bm3;->a()Lr4/bm3;

    move-result-object v0

    invoke-static {p1, v0}, Lr4/ng3;->I(Lr4/ll3;Lr4/bm3;)Lr4/ng3;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic d(Lr4/ao3;)V
    .locals 0

    check-cast p1, Lr4/ng3;

    invoke-static {p1}, Lr4/wc3;->l(Lr4/ng3;)V

    return-void
.end method

.method public final h()Lr4/o93;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr4/o93<",
            "Lr4/qg3;",
            "Lr4/ng3;",
            ">;"
        }
    .end annotation

    new-instance v0, Lr4/vc3;

    const-class v1, Lr4/qg3;

    invoke-direct {v0, p0, v1}, Lr4/vc3;-><init>(Lr4/wc3;Ljava/lang/Class;)V

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
