.class public final Lr4/ab3;
.super Lr4/o93;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr4/o93<",
        "Lr4/qe3;",
        "Lr4/ne3;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lr4/bb3;


# direct methods
.method public constructor <init>(Lr4/bb3;Ljava/lang/Class;)V
    .locals 0

    iput-object p1, p0, Lr4/ab3;->b:Lr4/bb3;

    invoke-direct {p0, p2}, Lr4/o93;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic b(Lr4/ao3;)V
    .locals 0

    check-cast p1, Lr4/qe3;

    invoke-virtual {p1}, Lr4/qe3;->C()I

    move-result p1

    invoke-static {p1}, Lr4/dk3;->a(I)V

    return-void
.end method

.method public final bridge synthetic c(Lr4/ll3;)Lr4/ao3;
    .locals 1

    invoke-static {}, Lr4/bm3;->a()Lr4/bm3;

    move-result-object v0

    invoke-static {p1, v0}, Lr4/qe3;->D(Lr4/ll3;Lr4/bm3;)Lr4/qe3;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic d(Lr4/ao3;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lr4/qe3;

    invoke-static {}, Lr4/ne3;->I()Lr4/me3;

    move-result-object v0

    invoke-virtual {p1}, Lr4/qe3;->C()I

    move-result p1

    invoke-static {p1}, Lr4/bk3;->a(I)[B

    move-result-object p1

    invoke-static {p1}, Lr4/ll3;->I([B)Lr4/ll3;

    move-result-object p1

    invoke-virtual {v0, p1}, Lr4/me3;->x(Lr4/ll3;)Lr4/me3;

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lr4/me3;->v(I)Lr4/me3;

    invoke-virtual {v0}, Lr4/lm3;->o()Lr4/pm3;

    move-result-object p1

    check-cast p1, Lr4/ne3;

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
            "Lr4/qe3;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/16 v1, 0x10

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lr4/bb3;->k(II)Lr4/n93;

    move-result-object v3

    const-string v4, "AES128_GCM"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x3

    invoke-static {v1, v3}, Lr4/bb3;->k(II)Lr4/n93;

    move-result-object v1

    const-string v4, "AES128_GCM_RAW"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x20

    invoke-static {v1, v2}, Lr4/bb3;->k(II)Lr4/n93;

    move-result-object v2

    const-string v4, "AES256_GCM"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1, v3}, Lr4/bb3;->k(II)Lr4/n93;

    move-result-object v1

    const-string v2, "AES256_GCM_RAW"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
