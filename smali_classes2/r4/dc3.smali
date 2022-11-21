.class public final Lr4/dc3;
.super Lr4/p93;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr4/p93<",
        "Lr4/g93;",
        "Lr4/xf3;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0, p1}, Lr4/p93;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    check-cast p1, Lr4/xf3;

    invoke-virtual {p1}, Lr4/xf3;->D()Lr4/ag3;

    move-result-object v0

    invoke-virtual {v0}, Lr4/ag3;->D()Lr4/uf3;

    move-result-object v0

    invoke-virtual {v0}, Lr4/uf3;->C()Lr4/gg3;

    move-result-object v1

    invoke-virtual {v1}, Lr4/gg3;->K()I

    move-result v2

    invoke-static {v2}, Lr4/oc3;->c(I)I

    move-result v2

    invoke-virtual {p1}, Lr4/xf3;->E()Lr4/ll3;

    move-result-object p1

    invoke-virtual {p1}, Lr4/ll3;->R()[B

    move-result-object p1

    invoke-static {v2}, Lr4/hj3;->d(I)Ljava/security/spec/ECParameterSpec;

    move-result-object v2

    new-instance v3, Ljava/math/BigInteger;

    const/4 v4, 0x1

    invoke-direct {v3, v4, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance p1, Ljava/security/spec/ECPrivateKeySpec;

    invoke-direct {p1, v3, v2}, Ljava/security/spec/ECPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;)V

    sget-object v2, Lr4/kj3;->k:Lr4/kj3;

    const-string v3, "EC"

    invoke-virtual {v2, v3}, Lr4/kj3;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/KeyFactory;

    invoke-virtual {v2, p1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Ljava/security/interfaces/ECPrivateKey;

    new-instance v7, Lr4/pc3;

    invoke-virtual {v0}, Lr4/uf3;->D()Lr4/of3;

    move-result-object p1

    invoke-virtual {p1}, Lr4/of3;->C()Lr4/zg3;

    move-result-object p1

    invoke-direct {v7, p1}, Lr4/pc3;-><init>(Lr4/zg3;)V

    new-instance p1, Lr4/cj3;

    invoke-virtual {v1}, Lr4/gg3;->C()Lr4/ll3;

    move-result-object v2

    invoke-virtual {v2}, Lr4/ll3;->R()[B

    move-result-object v4

    invoke-virtual {v1}, Lr4/gg3;->L()I

    move-result v1

    invoke-static {v1}, Lr4/oc3;->b(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lr4/uf3;->M()I

    move-result v0

    invoke-static {v0}, Lr4/oc3;->d(I)I

    move-result v6

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lr4/cj3;-><init>(Ljava/security/interfaces/ECPrivateKey;[BLjava/lang/String;ILr4/bj3;)V

    return-object p1
.end method
