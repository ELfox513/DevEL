.class public final Lr4/yr3;
.super Lr4/pr3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lr4/pr3<",
        "TK;TV;TV;>;"
    }
.end annotation


# direct methods
.method public synthetic constructor <init>(ILr4/xr3;)V
    .locals 0

    invoke-direct {p0, p1}, Lr4/pr3;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;Lr4/is3;)Lr4/yr3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lr4/is3<",
            "TV;>;)",
            "Lr4/yr3<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lr4/pr3;->a(Ljava/lang/Object;Lr4/is3;)Lr4/pr3;

    return-object p0
.end method

.method public final c()Lr4/zr3;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr4/zr3<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lr4/zr3;

    iget-object v1, p0, Lr4/pr3;->a:Ljava/util/LinkedHashMap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lr4/zr3;-><init>(Ljava/util/Map;Lr4/xr3;)V

    return-object v0
.end method
