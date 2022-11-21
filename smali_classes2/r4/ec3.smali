.class public final Lr4/ec3;
.super Lr4/o93;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr4/o93<",
        "Lr4/rf3;",
        "Lr4/xf3;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lr4/fc3;


# direct methods
.method public constructor <init>(Lr4/fc3;Ljava/lang/Class;)V
    .locals 0

    iput-object p1, p0, Lr4/ec3;->b:Lr4/fc3;

    invoke-direct {p0, p2}, Lr4/o93;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic b(Lr4/ao3;)V
    .locals 0

    check-cast p1, Lr4/rf3;

    invoke-virtual {p1}, Lr4/rf3;->C()Lr4/uf3;

    move-result-object p1

    invoke-static {p1}, Lr4/oc3;->a(Lr4/uf3;)V

    return-void
.end method

.method public final bridge synthetic c(Lr4/ll3;)Lr4/ao3;
    .locals 1

    invoke-static {}, Lr4/bm3;->a()Lr4/bm3;

    move-result-object v0

    invoke-static {p1, v0}, Lr4/rf3;->D(Lr4/ll3;Lr4/bm3;)Lr4/rf3;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic d(Lr4/ao3;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Lr4/rf3;

    invoke-virtual {p1}, Lr4/rf3;->C()Lr4/uf3;

    move-result-object v0

    invoke-virtual {v0}, Lr4/uf3;->C()Lr4/gg3;

    move-result-object v0

    invoke-virtual {v0}, Lr4/gg3;->K()I

    move-result v0

    invoke-static {v0}, Lr4/oc3;->c(I)I

    move-result v0

    invoke-static {v0}, Lr4/hj3;->d(I)Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    invoke-static {v0}, Lr4/hj3;->c(Ljava/security/spec/ECParameterSpec;)Ljava/security/KeyPair;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v1

    check-cast v1, Ljava/security/interfaces/ECPublicKey;

    invoke-virtual {v0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/ECPrivateKey;

    invoke-interface {v1}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v1

    invoke-static {}, Lr4/ag3;->K()Lr4/zf3;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lr4/zf3;->v(I)Lr4/zf3;

    invoke-virtual {p1}, Lr4/rf3;->C()Lr4/uf3;

    move-result-object p1

    invoke-virtual {v2, p1}, Lr4/zf3;->x(Lr4/uf3;)Lr4/zf3;

    invoke-virtual {v1}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    invoke-static {p1}, Lr4/ll3;->I([B)Lr4/ll3;

    move-result-object p1

    invoke-virtual {v2, p1}, Lr4/zf3;->z(Lr4/ll3;)Lr4/zf3;

    invoke-virtual {v1}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    invoke-static {p1}, Lr4/ll3;->I([B)Lr4/ll3;

    move-result-object p1

    invoke-virtual {v2, p1}, Lr4/zf3;->A(Lr4/ll3;)Lr4/zf3;

    invoke-virtual {v2}, Lr4/lm3;->o()Lr4/pm3;

    move-result-object p1

    check-cast p1, Lr4/ag3;

    invoke-static {}, Lr4/xf3;->J()Lr4/wf3;

    move-result-object v1

    invoke-virtual {v1, v3}, Lr4/wf3;->v(I)Lr4/wf3;

    invoke-virtual {v1, p1}, Lr4/wf3;->x(Lr4/ag3;)Lr4/wf3;

    invoke-interface {v0}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    invoke-static {p1}, Lr4/ll3;->I([B)Lr4/ll3;

    move-result-object p1

    invoke-virtual {v1, p1}, Lr4/wf3;->z(Lr4/ll3;)Lr4/wf3;

    invoke-virtual {v1}, Lr4/lm3;->o()Lr4/pm3;

    move-result-object p1

    check-cast p1, Lr4/xf3;

    return-object p1
.end method

.method public final e()Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lr4/n93<",
            "Lr4/rf3;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "AES128_GCM"

    invoke-static {v1}, Lr4/m93;->a(Ljava/lang/String;)Lr4/l93;

    move-result-object v5

    invoke-static {}, Lr4/fc3;->k()[B

    move-result-object v6

    const/4 v2, 0x4

    const/4 v3, 0x5

    const/4 v4, 0x3

    const/4 v7, 0x1

    invoke-static/range {v2 .. v7}, Lr4/fc3;->l(IIILr4/l93;[BI)Lr4/n93;

    move-result-object v2

    const-string v3, "ECIES_P256_HKDF_HMAC_SHA256_AES128_GCM"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lr4/m93;->a(Ljava/lang/String;)Lr4/l93;

    move-result-object v7

    invoke-static {}, Lr4/fc3;->k()[B

    move-result-object v8

    const/4 v4, 0x4

    const/4 v5, 0x5

    const/4 v6, 0x3

    const/4 v9, 0x3

    invoke-static/range {v4 .. v9}, Lr4/fc3;->l(IIILr4/l93;[BI)Lr4/n93;

    move-result-object v2

    const-string v3, "ECIES_P256_HKDF_HMAC_SHA256_AES128_GCM_RAW"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lr4/m93;->a(Ljava/lang/String;)Lr4/l93;

    move-result-object v7

    invoke-static {}, Lr4/fc3;->k()[B

    move-result-object v8

    const/4 v6, 0x4

    const/4 v9, 0x1

    invoke-static/range {v4 .. v9}, Lr4/fc3;->l(IIILr4/l93;[BI)Lr4/n93;

    move-result-object v2

    const-string v3, "ECIES_P256_COMPRESSED_HKDF_HMAC_SHA256_AES128_GCM"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lr4/m93;->a(Ljava/lang/String;)Lr4/l93;

    move-result-object v7

    invoke-static {}, Lr4/fc3;->k()[B

    move-result-object v8

    const/4 v9, 0x3

    invoke-static/range {v4 .. v9}, Lr4/fc3;->l(IIILr4/l93;[BI)Lr4/n93;

    move-result-object v2

    const-string v3, "ECIES_P256_COMPRESSED_HKDF_HMAC_SHA256_AES128_GCM_RAW"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lr4/m93;->a(Ljava/lang/String;)Lr4/l93;

    move-result-object v7

    invoke-static {}, Lr4/fc3;->k()[B

    move-result-object v8

    invoke-static/range {v4 .. v9}, Lr4/fc3;->l(IIILr4/l93;[BI)Lr4/n93;

    move-result-object v1

    const-string v2, "ECIES_P256_HKDF_HMAC_SHA256_AES128_GCM_COMPRESSED_WITHOUT_PREFIX"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "AES128_CTR_HMAC_SHA256"

    invoke-static {v1}, Lr4/m93;->a(Ljava/lang/String;)Lr4/l93;

    move-result-object v5

    invoke-static {}, Lr4/fc3;->k()[B

    move-result-object v6

    const/4 v2, 0x4

    const/4 v3, 0x5

    const/4 v4, 0x3

    const/4 v7, 0x1

    invoke-static/range {v2 .. v7}, Lr4/fc3;->l(IIILr4/l93;[BI)Lr4/n93;

    move-result-object v2

    const-string v3, "ECIES_P256_HKDF_HMAC_SHA256_AES128_CTR_HMAC_SHA256"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lr4/m93;->a(Ljava/lang/String;)Lr4/l93;

    move-result-object v7

    invoke-static {}, Lr4/fc3;->k()[B

    move-result-object v8

    const/4 v4, 0x4

    const/4 v5, 0x5

    const/4 v6, 0x3

    invoke-static/range {v4 .. v9}, Lr4/fc3;->l(IIILr4/l93;[BI)Lr4/n93;

    move-result-object v2

    const-string v3, "ECIES_P256_HKDF_HMAC_SHA256_AES128_CTR_HMAC_SHA256_RAW"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lr4/m93;->a(Ljava/lang/String;)Lr4/l93;

    move-result-object v7

    invoke-static {}, Lr4/fc3;->k()[B

    move-result-object v8

    const/4 v6, 0x4

    const/4 v9, 0x1

    invoke-static/range {v4 .. v9}, Lr4/fc3;->l(IIILr4/l93;[BI)Lr4/n93;

    move-result-object v2

    const-string v3, "ECIES_P256_COMPRESSED_HKDF_HMAC_SHA256_AES128_CTR_HMAC_SHA256"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lr4/m93;->a(Ljava/lang/String;)Lr4/l93;

    move-result-object v7

    invoke-static {}, Lr4/fc3;->k()[B

    move-result-object v8

    const/4 v9, 0x3

    invoke-static/range {v4 .. v9}, Lr4/fc3;->l(IIILr4/l93;[BI)Lr4/n93;

    move-result-object v1

    const-string v2, "ECIES_P256_COMPRESSED_HKDF_HMAC_SHA256_AES128_CTR_HMAC_SHA256_RAW"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
