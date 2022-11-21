.class public final Lr4/vc3;
.super Lr4/o93;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr4/o93<",
        "Lr4/qg3;",
        "Lr4/ng3;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lr4/wc3;


# direct methods
.method public constructor <init>(Lr4/wc3;Ljava/lang/Class;)V
    .locals 0

    iput-object p1, p0, Lr4/vc3;->b:Lr4/wc3;

    invoke-direct {p0, p2}, Lr4/o93;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic b(Lr4/ao3;)V
    .locals 2

    check-cast p1, Lr4/qg3;

    invoke-virtual {p1}, Lr4/qg3;->D()I

    move-result v0

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Lr4/qg3;->C()Lr4/tg3;

    move-result-object p1

    invoke-static {p1}, Lr4/wc3;->k(Lr4/tg3;)V

    return-void

    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "key too short"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final bridge synthetic c(Lr4/ll3;)Lr4/ao3;
    .locals 1

    invoke-static {}, Lr4/bm3;->a()Lr4/bm3;

    move-result-object v0

    invoke-static {p1, v0}, Lr4/qg3;->E(Lr4/ll3;Lr4/bm3;)Lr4/qg3;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic d(Lr4/ao3;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lr4/qg3;

    invoke-static {}, Lr4/ng3;->J()Lr4/mg3;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lr4/mg3;->v(I)Lr4/mg3;

    invoke-virtual {p1}, Lr4/qg3;->C()Lr4/tg3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lr4/mg3;->x(Lr4/tg3;)Lr4/mg3;

    invoke-virtual {p1}, Lr4/qg3;->D()I

    move-result p1

    invoke-static {p1}, Lr4/bk3;->a(I)[B

    move-result-object p1

    invoke-static {p1}, Lr4/ll3;->I([B)Lr4/ll3;

    move-result-object p1

    invoke-virtual {v0, p1}, Lr4/mg3;->z(Lr4/ll3;)Lr4/mg3;

    invoke-virtual {v0}, Lr4/lm3;->o()Lr4/pm3;

    move-result-object p1

    check-cast p1, Lr4/ng3;

    return-object p1
.end method

.method public final e()Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lr4/n93<",
            "Lr4/qg3;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/16 v1, 0x20

    const/16 v2, 0x10

    const/4 v3, 0x5

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Lr4/wc3;->m(IIII)Lr4/n93;

    move-result-object v5

    const-string v6, "HMAC_SHA256_128BITTAG"

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x3

    invoke-static {v1, v2, v3, v5}, Lr4/wc3;->m(IIII)Lr4/n93;

    move-result-object v6

    const-string v7, "HMAC_SHA256_128BITTAG_RAW"

    invoke-interface {v0, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1, v1, v3, v4}, Lr4/wc3;->m(IIII)Lr4/n93;

    move-result-object v6

    const-string v7, "HMAC_SHA256_256BITTAG"

    invoke-interface {v0, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1, v1, v3, v5}, Lr4/wc3;->m(IIII)Lr4/n93;

    move-result-object v3

    const-string v6, "HMAC_SHA256_256BITTAG_RAW"

    invoke-interface {v0, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0x40

    const/4 v6, 0x6

    invoke-static {v3, v2, v6, v4}, Lr4/wc3;->m(IIII)Lr4/n93;

    move-result-object v7

    const-string v8, "HMAC_SHA512_128BITTAG"

    invoke-interface {v0, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3, v2, v6, v5}, Lr4/wc3;->m(IIII)Lr4/n93;

    move-result-object v2

    const-string v7, "HMAC_SHA512_128BITTAG_RAW"

    invoke-interface {v0, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3, v1, v6, v4}, Lr4/wc3;->m(IIII)Lr4/n93;

    move-result-object v2

    const-string v7, "HMAC_SHA512_256BITTAG"

    invoke-interface {v0, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3, v1, v6, v5}, Lr4/wc3;->m(IIII)Lr4/n93;

    move-result-object v1

    const-string v2, "HMAC_SHA512_256BITTAG_RAW"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3, v3, v6, v4}, Lr4/wc3;->m(IIII)Lr4/n93;

    move-result-object v1

    const-string v2, "HMAC_SHA512_512BITTAG"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3, v3, v6, v5}, Lr4/wc3;->m(IIII)Lr4/n93;

    move-result-object v1

    const-string v2, "HMAC_SHA512_512BITTAG_RAW"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
