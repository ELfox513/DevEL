.class public final Lr4/qb3;
.super Lr4/o93;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr4/o93<",
        "Lr4/mi3;",
        "Lr4/ji3;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lr4/rb3;


# direct methods
.method public constructor <init>(Lr4/rb3;Ljava/lang/Class;)V
    .locals 0

    iput-object p1, p0, Lr4/qb3;->b:Lr4/rb3;

    invoke-direct {p0, p2}, Lr4/o93;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic b(Lr4/ao3;)V
    .locals 0

    check-cast p1, Lr4/mi3;

    return-void
.end method

.method public final bridge synthetic c(Lr4/ll3;)Lr4/ao3;
    .locals 1

    invoke-static {}, Lr4/bm3;->a()Lr4/bm3;

    move-result-object v0

    invoke-static {p1, v0}, Lr4/mi3;->C(Lr4/ll3;Lr4/bm3;)Lr4/mi3;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic d(Lr4/ao3;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lr4/mi3;

    invoke-static {}, Lr4/ji3;->I()Lr4/ii3;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lr4/ii3;->v(I)Lr4/ii3;

    const/16 v0, 0x20

    invoke-static {v0}, Lr4/bk3;->a(I)[B

    move-result-object v0

    invoke-static {v0}, Lr4/ll3;->I([B)Lr4/ll3;

    move-result-object v0

    invoke-virtual {p1, v0}, Lr4/ii3;->x(Lr4/ll3;)Lr4/ii3;

    invoke-virtual {p1}, Lr4/lm3;->o()Lr4/pm3;

    move-result-object p1

    check-cast p1, Lr4/ji3;

    return-object p1
.end method

.method public final e()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lr4/n93<",
            "Lr4/mi3;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Lr4/n93;

    invoke-static {}, Lr4/mi3;->D()Lr4/mi3;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lr4/n93;-><init>(Ljava/lang/Object;I)V

    const-string v2, "XCHACHA20_POLY1305"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lr4/n93;

    invoke-static {}, Lr4/mi3;->D()Lr4/mi3;

    move-result-object v2

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lr4/n93;-><init>(Ljava/lang/Object;I)V

    const-string v2, "XCHACHA20_POLY1305_RAW"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
