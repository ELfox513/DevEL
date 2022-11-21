.class public final Lr4/cs3;
.super Lr4/qr3;
.source "SourceFile"

# interfaces
.implements Lr4/or3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lr4/qr3<",
        "TK;TV;",
        "Lr4/is3<",
        "TV;>;>;",
        "Lr4/or3<",
        "Ljava/util/Map<",
        "TK;",
        "Lr4/is3<",
        "TV;>;>;>;"
    }
.end annotation


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map;Lr4/as3;)V
    .locals 0

    invoke-direct {p0, p1}, Lr4/qr3;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method public static c(I)Lr4/bs3;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lr4/bs3<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance p0, Lr4/bs3;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lr4/bs3;-><init>(ILr4/as3;)V

    return-object p0
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lr4/qr3;->b()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;",
            "Lr4/is3<",
            "TV;>;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lr4/qr3;->b()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
