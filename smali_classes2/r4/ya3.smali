.class public final Lr4/ya3;
.super Lr4/q93;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr4/q93<",
        "Lr4/ee3;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lr4/p93;

    new-instance v1, Lr4/va3;

    const-class v2, Lr4/c93;

    invoke-direct {v1, v2}, Lr4/va3;-><init>(Ljava/lang/Class;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Lr4/ee3;

    invoke-direct {p0, v1, v0}, Lr4/q93;-><init>(Ljava/lang/Class;[Lr4/p93;)V

    return-void
.end method

.method public static synthetic k(III)Lr4/n93;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Lr4/n93<",
            "Lr4/he3;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lr4/he3;->I()Lr4/ge3;

    move-result-object p1

    invoke-virtual {p1, p0}, Lr4/ge3;->x(I)Lr4/ge3;

    invoke-static {}, Lr4/ke3;->D()Lr4/je3;

    move-result-object p0

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lr4/je3;->v(I)Lr4/je3;

    invoke-virtual {p0}, Lr4/lm3;->o()Lr4/pm3;

    move-result-object p0

    check-cast p0, Lr4/ke3;

    invoke-virtual {p1, p0}, Lr4/ge3;->v(Lr4/ke3;)Lr4/ge3;

    invoke-virtual {p1}, Lr4/lm3;->o()Lr4/pm3;

    move-result-object p0

    check-cast p0, Lr4/he3;

    new-instance p1, Lr4/n93;

    invoke-direct {p1, p0, p2}, Lr4/n93;-><init>(Ljava/lang/Object;I)V

    return-object p1
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 1

    const-string v0, "type.googleapis.com/google.crypto.tink.AesEaxKey"

    return-object v0
.end method

.method public final bridge synthetic c(Lr4/ll3;)Lr4/ao3;
    .locals 1

    invoke-static {}, Lr4/bm3;->a()Lr4/bm3;

    move-result-object v0

    invoke-static {p1, v0}, Lr4/ee3;->I(Lr4/ll3;Lr4/bm3;)Lr4/ee3;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic d(Lr4/ao3;)V
    .locals 2

    check-cast p1, Lr4/ee3;

    invoke-virtual {p1}, Lr4/ee3;->C()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/dk3;->b(II)V

    invoke-virtual {p1}, Lr4/ee3;->E()Lr4/ll3;

    move-result-object v0

    invoke-virtual {v0}, Lr4/ll3;->o()I

    move-result v0

    invoke-static {v0}, Lr4/dk3;->a(I)V

    invoke-virtual {p1}, Lr4/ee3;->D()Lr4/ke3;

    move-result-object v0

    invoke-virtual {v0}, Lr4/ke3;->C()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lr4/ee3;->D()Lr4/ke3;

    move-result-object p1

    invoke-virtual {p1}, Lr4/ke3;->C()I

    move-result p1

    const/16 v0, 0x10

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "invalid IV size; acceptable values have 12 or 16 bytes"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public final h()Lr4/o93;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr4/o93<",
            "Lr4/he3;",
            "Lr4/ee3;",
            ">;"
        }
    .end annotation

    new-instance v0, Lr4/wa3;

    const-class v1, Lr4/he3;

    invoke-direct {v0, p0, v1}, Lr4/wa3;-><init>(Lr4/ya3;Ljava/lang/Class;)V

    return-object v0
.end method

.method public final i()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method
