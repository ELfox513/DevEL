.class public final Lr4/sc3;
.super Lr4/o93;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr4/o93<",
        "Lr4/id3;",
        "Lr4/fd3;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lr4/tc3;Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0, p2}, Lr4/o93;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic b(Lr4/ao3;)V
    .locals 1

    check-cast p1, Lr4/id3;

    invoke-virtual {p1}, Lr4/id3;->D()Lr4/ld3;

    move-result-object v0

    invoke-static {v0}, Lr4/tc3;->k(Lr4/ld3;)V

    invoke-virtual {p1}, Lr4/id3;->C()I

    move-result p1

    invoke-static {p1}, Lr4/tc3;->l(I)V

    return-void
.end method

.method public final bridge synthetic c(Lr4/ll3;)Lr4/ao3;
    .locals 1

    invoke-static {}, Lr4/bm3;->a()Lr4/bm3;

    move-result-object v0

    invoke-static {p1, v0}, Lr4/id3;->E(Lr4/ll3;Lr4/bm3;)Lr4/id3;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic d(Lr4/ao3;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lr4/id3;

    invoke-static {}, Lr4/fd3;->J()Lr4/ed3;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lr4/ed3;->v(I)Lr4/ed3;

    invoke-virtual {p1}, Lr4/id3;->C()I

    move-result v1

    invoke-static {v1}, Lr4/bk3;->a(I)[B

    move-result-object v1

    invoke-static {v1}, Lr4/ll3;->I([B)Lr4/ll3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lr4/ed3;->x(Lr4/ll3;)Lr4/ed3;

    invoke-virtual {p1}, Lr4/id3;->D()Lr4/ld3;

    move-result-object p1

    invoke-virtual {v0, p1}, Lr4/ed3;->z(Lr4/ld3;)Lr4/ed3;

    invoke-virtual {v0}, Lr4/lm3;->o()Lr4/pm3;

    move-result-object p1

    check-cast p1, Lr4/fd3;

    return-object p1
.end method

.method public final e()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lr4/n93<",
            "Lr4/id3;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Lr4/n93;

    invoke-static {}, Lr4/id3;->I()Lr4/hd3;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Lr4/hd3;->v(I)Lr4/hd3;

    invoke-static {}, Lr4/ld3;->D()Lr4/kd3;

    move-result-object v4

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Lr4/kd3;->v(I)Lr4/kd3;

    invoke-virtual {v4}, Lr4/lm3;->o()Lr4/pm3;

    move-result-object v4

    check-cast v4, Lr4/ld3;

    invoke-virtual {v2, v4}, Lr4/hd3;->x(Lr4/ld3;)Lr4/hd3;

    invoke-virtual {v2}, Lr4/lm3;->o()Lr4/pm3;

    move-result-object v2

    check-cast v2, Lr4/id3;

    const/4 v4, 0x1

    invoke-direct {v1, v2, v4}, Lr4/n93;-><init>(Ljava/lang/Object;I)V

    const-string v2, "AES_CMAC"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lr4/n93;

    invoke-static {}, Lr4/id3;->I()Lr4/hd3;

    move-result-object v2

    invoke-virtual {v2, v3}, Lr4/hd3;->v(I)Lr4/hd3;

    invoke-static {}, Lr4/ld3;->D()Lr4/kd3;

    move-result-object v6

    invoke-virtual {v6, v5}, Lr4/kd3;->v(I)Lr4/kd3;

    invoke-virtual {v6}, Lr4/lm3;->o()Lr4/pm3;

    move-result-object v6

    check-cast v6, Lr4/ld3;

    invoke-virtual {v2, v6}, Lr4/hd3;->x(Lr4/ld3;)Lr4/hd3;

    invoke-virtual {v2}, Lr4/lm3;->o()Lr4/pm3;

    move-result-object v2

    check-cast v2, Lr4/id3;

    invoke-direct {v1, v2, v4}, Lr4/n93;-><init>(Ljava/lang/Object;I)V

    const-string v2, "AES256_CMAC"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lr4/n93;

    invoke-static {}, Lr4/id3;->I()Lr4/hd3;

    move-result-object v2

    invoke-virtual {v2, v3}, Lr4/hd3;->v(I)Lr4/hd3;

    invoke-static {}, Lr4/ld3;->D()Lr4/kd3;

    move-result-object v3

    invoke-virtual {v3, v5}, Lr4/kd3;->v(I)Lr4/kd3;

    invoke-virtual {v3}, Lr4/lm3;->o()Lr4/pm3;

    move-result-object v3

    check-cast v3, Lr4/ld3;

    invoke-virtual {v2, v3}, Lr4/hd3;->x(Lr4/ld3;)Lr4/hd3;

    invoke-virtual {v2}, Lr4/lm3;->o()Lr4/pm3;

    move-result-object v2

    check-cast v2, Lr4/id3;

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lr4/n93;-><init>(Ljava/lang/Object;I)V

    const-string v2, "AES256_CMAC_RAW"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
