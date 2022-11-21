.class public final Lr4/wa3;
.super Lr4/o93;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr4/o93<",
        "Lr4/he3;",
        "Lr4/ee3;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lr4/ya3;


# direct methods
.method public constructor <init>(Lr4/ya3;Ljava/lang/Class;)V
    .locals 0

    iput-object p1, p0, Lr4/wa3;->b:Lr4/ya3;

    invoke-direct {p0, p2}, Lr4/o93;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic b(Lr4/ao3;)V
    .locals 2

    check-cast p1, Lr4/he3;

    invoke-virtual {p1}, Lr4/he3;->D()I

    move-result v0

    invoke-static {v0}, Lr4/dk3;->a(I)V

    invoke-virtual {p1}, Lr4/he3;->C()Lr4/ke3;

    move-result-object v0

    invoke-virtual {v0}, Lr4/ke3;->C()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lr4/he3;->C()Lr4/ke3;

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

.method public final bridge synthetic c(Lr4/ll3;)Lr4/ao3;
    .locals 1

    invoke-static {}, Lr4/bm3;->a()Lr4/bm3;

    move-result-object v0

    invoke-static {p1, v0}, Lr4/he3;->E(Lr4/ll3;Lr4/bm3;)Lr4/he3;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic d(Lr4/ao3;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lr4/he3;

    invoke-static {}, Lr4/ee3;->J()Lr4/de3;

    move-result-object v0

    invoke-virtual {p1}, Lr4/he3;->D()I

    move-result v1

    invoke-static {v1}, Lr4/bk3;->a(I)[B

    move-result-object v1

    invoke-static {v1}, Lr4/ll3;->I([B)Lr4/ll3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lr4/de3;->z(Lr4/ll3;)Lr4/de3;

    invoke-virtual {p1}, Lr4/he3;->C()Lr4/ke3;

    move-result-object p1

    invoke-virtual {v0, p1}, Lr4/de3;->x(Lr4/ke3;)Lr4/de3;

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lr4/de3;->v(I)Lr4/de3;

    invoke-virtual {v0}, Lr4/lm3;->o()Lr4/pm3;

    move-result-object p1

    check-cast p1, Lr4/ee3;

    return-object p1
.end method

.method public final e()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lr4/n93<",
            "Lr4/he3;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/16 v1, 0x10

    const/4 v2, 0x1

    invoke-static {v1, v1, v2}, Lr4/ya3;->k(III)Lr4/n93;

    move-result-object v3

    const-string v4, "AES128_EAX"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x3

    invoke-static {v1, v1, v3}, Lr4/ya3;->k(III)Lr4/n93;

    move-result-object v4

    const-string v5, "AES128_EAX_RAW"

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v4, 0x20

    invoke-static {v4, v1, v2}, Lr4/ya3;->k(III)Lr4/n93;

    move-result-object v2

    const-string v5, "AES256_EAX"

    invoke-interface {v0, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v4, v1, v3}, Lr4/ya3;->k(III)Lr4/n93;

    move-result-object v1

    const-string v2, "AES256_EAX_RAW"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
