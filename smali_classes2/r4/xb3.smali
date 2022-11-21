.class public final Lr4/xb3;
.super Lr4/o93;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr4/o93<",
        "Lr4/df3;",
        "Lr4/ze3;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lr4/zb3;


# direct methods
.method public constructor <init>(Lr4/zb3;Ljava/lang/Class;)V
    .locals 0

    iput-object p1, p0, Lr4/xb3;->b:Lr4/zb3;

    invoke-direct {p0, p2}, Lr4/o93;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic b(Lr4/ao3;)V
    .locals 3

    check-cast p1, Lr4/df3;

    invoke-virtual {p1}, Lr4/df3;->C()I

    move-result v0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    invoke-virtual {p1}, Lr4/df3;->C()I

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x3d

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "invalid key size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ". Valid keys must have 64 bytes."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final bridge synthetic c(Lr4/ll3;)Lr4/ao3;
    .locals 1

    invoke-static {}, Lr4/bm3;->a()Lr4/bm3;

    move-result-object v0

    invoke-static {p1, v0}, Lr4/df3;->D(Lr4/ll3;Lr4/bm3;)Lr4/df3;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic d(Lr4/ao3;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lr4/df3;

    invoke-static {}, Lr4/ze3;->I()Lr4/ye3;

    move-result-object v0

    invoke-virtual {p1}, Lr4/df3;->C()I

    move-result p1

    invoke-static {p1}, Lr4/bk3;->a(I)[B

    move-result-object p1

    invoke-static {p1}, Lr4/ll3;->I([B)Lr4/ll3;

    move-result-object p1

    invoke-virtual {v0, p1}, Lr4/ye3;->x(Lr4/ll3;)Lr4/ye3;

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lr4/ye3;->v(I)Lr4/ye3;

    invoke-virtual {v0}, Lr4/lm3;->o()Lr4/pm3;

    move-result-object p1

    check-cast p1, Lr4/ze3;

    return-object p1
.end method

.method public final e()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lr4/n93<",
            "Lr4/df3;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Lr4/n93;

    invoke-static {}, Lr4/df3;->E()Lr4/cf3;

    move-result-object v2

    const/16 v3, 0x40

    invoke-virtual {v2, v3}, Lr4/cf3;->v(I)Lr4/cf3;

    invoke-virtual {v2}, Lr4/lm3;->o()Lr4/pm3;

    move-result-object v2

    check-cast v2, Lr4/df3;

    const/4 v4, 0x1

    invoke-direct {v1, v2, v4}, Lr4/n93;-><init>(Ljava/lang/Object;I)V

    const-string v2, "AES256_SIV"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lr4/n93;

    invoke-static {}, Lr4/df3;->E()Lr4/cf3;

    move-result-object v2

    invoke-virtual {v2, v3}, Lr4/cf3;->v(I)Lr4/cf3;

    invoke-virtual {v2}, Lr4/lm3;->o()Lr4/pm3;

    move-result-object v2

    check-cast v2, Lr4/df3;

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lr4/n93;-><init>(Ljava/lang/Object;I)V

    const-string v2, "AES256_SIV_RAW"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
