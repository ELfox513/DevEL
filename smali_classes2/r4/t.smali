.class public final Lr4/t;
.super Lr4/s;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lr4/s;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static v(Ljava/lang/String;Landroid/content/Context;Z)Lr4/t;
    .locals 1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lr4/s;->o(Landroid/content/Context;Z)V

    new-instance v0, Lr4/t;

    invoke-direct {v0, p1, p0, p2}, Lr4/t;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static w(Ljava/lang/String;Landroid/content/Context;ZI)Lr4/t;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1, p2}, Lr4/s;->o(Landroid/content/Context;Z)V

    new-instance p3, Lr4/t;

    invoke-direct {p3, p1, p0, p2}, Lr4/t;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    return-object p3
.end method


# virtual methods
.method public final r(Lr4/v0;Landroid/content/Context;Lr4/za4;Lr4/sa4;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/v0;",
            "Landroid/content/Context;",
            "Lr4/za4;",
            "Lr4/sa4;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    invoke-virtual {p1}, Lr4/v0;->e()Ljava/util/concurrent/ExecutorService;

    move-result-object p4

    const/4 v0, 0x0

    if-eqz p4, :cond_1

    iget-boolean p4, p0, Lr4/s;->F:Z

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lr4/v0;->u()I

    move-result v6

    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    invoke-super {p0, p1, p2, p3, v0}, Lr4/s;->r(Lr4/v0;Landroid/content/Context;Lr4/za4;Lr4/sa4;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p4, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance p2, Lr4/l1;

    const/16 v7, 0x18

    const-string v3, "NSYe0Ak7CUXd9zFZA3bczJ8pTgBK/kfUu9ICpHR+lQrTNc8+V7Owo49e2WIp0407"

    const-string v4, "Ux7t0A/7z2bV/IDvLZJgV4tTxr0Vvc1KngWKlG2Szwg="

    move-object v1, p2

    move-object v2, p1

    move-object v5, p3

    invoke-direct/range {v1 .. v7}, Lr4/l1;-><init>(Lr4/v0;Ljava/lang/String;Ljava/lang/String;Lr4/za4;II)V

    invoke-interface {p4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p4

    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3, v0}, Lr4/s;->r(Lr4/v0;Landroid/content/Context;Lr4/za4;Lr4/sa4;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
