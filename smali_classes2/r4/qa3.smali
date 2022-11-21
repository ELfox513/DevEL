.class public final Lr4/qa3;
.super Lr4/o93;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr4/o93<",
        "Lr4/rd3;",
        "Lr4/od3;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lr4/ra3;


# direct methods
.method public constructor <init>(Lr4/ra3;Ljava/lang/Class;)V
    .locals 0

    iput-object p1, p0, Lr4/qa3;->b:Lr4/ra3;

    invoke-direct {p0, p2}, Lr4/o93;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic b(Lr4/ao3;)V
    .locals 2

    check-cast p1, Lr4/rd3;

    new-instance v0, Lr4/ua3;

    invoke-direct {v0}, Lr4/ua3;-><init>()V

    invoke-virtual {v0}, Lr4/q93;->h()Lr4/o93;

    move-result-object v0

    invoke-virtual {p1}, Lr4/rd3;->C()Lr4/xd3;

    move-result-object v1

    check-cast v0, Lr4/ta3;

    invoke-virtual {v0, v1}, Lr4/ta3;->f(Lr4/xd3;)V

    new-instance v0, Lr4/wc3;

    invoke-direct {v0}, Lr4/wc3;-><init>()V

    invoke-virtual {v0}, Lr4/q93;->h()Lr4/o93;

    move-result-object v0

    invoke-virtual {p1}, Lr4/rd3;->D()Lr4/qg3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lr4/o93;->b(Lr4/ao3;)V

    invoke-virtual {p1}, Lr4/rd3;->C()Lr4/xd3;

    move-result-object p1

    invoke-virtual {p1}, Lr4/xd3;->D()I

    move-result p1

    invoke-static {p1}, Lr4/dk3;->a(I)V

    return-void
.end method

.method public final bridge synthetic c(Lr4/ll3;)Lr4/ao3;
    .locals 1

    invoke-static {}, Lr4/bm3;->a()Lr4/bm3;

    move-result-object v0

    invoke-static {p1, v0}, Lr4/rd3;->E(Lr4/ll3;Lr4/bm3;)Lr4/rd3;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic d(Lr4/ao3;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lr4/rd3;

    new-instance v0, Lr4/ua3;

    invoke-direct {v0}, Lr4/ua3;-><init>()V

    invoke-virtual {p1}, Lr4/rd3;->C()Lr4/xd3;

    move-result-object v0

    invoke-static {v0}, Lr4/ta3;->g(Lr4/xd3;)Lr4/ud3;

    move-result-object v0

    new-instance v1, Lr4/wc3;

    invoke-direct {v1}, Lr4/wc3;-><init>()V

    invoke-virtual {v1}, Lr4/q93;->h()Lr4/o93;

    move-result-object v1

    invoke-virtual {p1}, Lr4/rd3;->D()Lr4/qg3;

    move-result-object p1

    invoke-virtual {v1, p1}, Lr4/o93;->d(Lr4/ao3;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lr4/od3;->J()Lr4/nd3;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/nd3;->x(Lr4/ud3;)Lr4/nd3;

    check-cast p1, Lr4/ng3;

    invoke-virtual {v1, p1}, Lr4/nd3;->z(Lr4/ng3;)Lr4/nd3;

    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Lr4/nd3;->v(I)Lr4/nd3;

    invoke-virtual {v1}, Lr4/lm3;->o()Lr4/pm3;

    move-result-object p1

    check-cast p1, Lr4/od3;

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
            "Lr4/rd3;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/16 v1, 0x10

    const/16 v2, 0x10

    const/16 v3, 0x20

    const/16 v4, 0x10

    const/4 v5, 0x5

    const/4 v6, 0x1

    invoke-static/range {v1 .. v6}, Lr4/ra3;->k(IIIIII)Lr4/n93;

    move-result-object v1

    const-string v2, "AES128_CTR_HMAC_SHA256"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0x10

    const/16 v5, 0x20

    const/16 v6, 0x10

    const/4 v7, 0x5

    const/4 v8, 0x3

    invoke-static/range {v3 .. v8}, Lr4/ra3;->k(IIIIII)Lr4/n93;

    move-result-object v1

    const-string v2, "AES128_CTR_HMAC_SHA256_RAW"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0x20

    const/16 v6, 0x20

    const/4 v8, 0x1

    invoke-static/range {v3 .. v8}, Lr4/ra3;->k(IIIIII)Lr4/n93;

    move-result-object v1

    const-string v2, "AES256_CTR_HMAC_SHA256"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v8, 0x3

    invoke-static/range {v3 .. v8}, Lr4/ra3;->k(IIIIII)Lr4/n93;

    move-result-object v1

    const-string v2, "AES256_CTR_HMAC_SHA256_RAW"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
