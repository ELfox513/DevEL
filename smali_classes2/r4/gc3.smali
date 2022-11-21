.class public final Lr4/gc3;
.super Lr4/p93;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr4/p93<",
        "Lr4/h93;",
        "Lr4/ag3;",
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
    .locals 10

    check-cast p1, Lr4/ag3;

    invoke-virtual {p1}, Lr4/ag3;->D()Lr4/uf3;

    move-result-object v0

    invoke-virtual {v0}, Lr4/uf3;->C()Lr4/gg3;

    move-result-object v1

    invoke-virtual {v1}, Lr4/gg3;->K()I

    move-result v2

    invoke-static {v2}, Lr4/oc3;->c(I)I

    move-result v2

    invoke-virtual {p1}, Lr4/ag3;->E()Lr4/ll3;

    move-result-object v3

    invoke-virtual {v3}, Lr4/ll3;->R()[B

    move-result-object v3

    invoke-virtual {p1}, Lr4/ag3;->I()Lr4/ll3;

    move-result-object p1

    invoke-virtual {p1}, Lr4/ll3;->R()[B

    move-result-object p1

    invoke-static {v2, v3, p1}, Lr4/hj3;->e(I[B[B)Ljava/security/interfaces/ECPublicKey;

    move-result-object v5

    new-instance v9, Lr4/pc3;

    invoke-virtual {v0}, Lr4/uf3;->D()Lr4/of3;

    move-result-object p1

    invoke-virtual {p1}, Lr4/of3;->C()Lr4/zg3;

    move-result-object p1

    invoke-direct {v9, p1}, Lr4/pc3;-><init>(Lr4/zg3;)V

    new-instance p1, Lr4/dj3;

    invoke-virtual {v1}, Lr4/gg3;->C()Lr4/ll3;

    move-result-object v2

    invoke-virtual {v2}, Lr4/ll3;->R()[B

    move-result-object v6

    invoke-virtual {v1}, Lr4/gg3;->L()I

    move-result v1

    invoke-static {v1}, Lr4/oc3;->b(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lr4/uf3;->M()I

    move-result v0

    invoke-static {v0}, Lr4/oc3;->d(I)I

    move-result v8

    move-object v4, p1

    invoke-direct/range {v4 .. v9}, Lr4/dj3;-><init>(Ljava/security/interfaces/ECPublicKey;[BLjava/lang/String;ILr4/bj3;)V

    return-object p1
.end method
