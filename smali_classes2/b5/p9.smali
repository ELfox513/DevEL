.class public final Lb5/p9;
.super Lb5/r9;
.source "SourceFile"


# direct methods
.method public synthetic constructor <init>(Lb5/o9;)V
    .locals 0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lb5/r9;-><init>(Lb5/q9;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;J)V
    .locals 0

    invoke-static {p1, p2, p3}, Lb5/rb;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb5/e9;

    invoke-interface {p1}, Lb5/e9;->a()V

    return-void
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "J)V"
        }
    .end annotation

    invoke-static {p1, p3, p4}, Lb5/rb;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb5/e9;

    invoke-static {p2, p3, p4}, Lb5/rb;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lb5/e9;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v1, :cond_1

    if-lez v2, :cond_1

    invoke-interface {v0}, Lb5/e9;->b()Z

    move-result v3

    if-nez v3, :cond_0

    add-int/2addr v2, v1

    invoke-interface {v0, v2}, Lb5/e9;->p0(I)Lb5/e9;

    move-result-object v0

    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    if-gtz v1, :cond_2

    goto :goto_0

    :cond_2
    move-object p2, v0

    :goto_0
    invoke-static {p1, p3, p4, p2}, Lb5/rb;->x(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method
