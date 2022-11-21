.class public final Lr4/f73;
.super Lr4/h73;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lr4/h73<",
        "TV;",
        "Ljava/util/List<",
        "TV;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lr4/j33;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/j33<",
            "+",
            "Lr4/h83<",
            "+TV;>;>;Z)V"
        }
    .end annotation

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lr4/h73;-><init>(Lr4/j33;Z)V

    invoke-virtual {p0}, Lr4/x63;->T()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic X(Ljava/util/List;)Ljava/lang/Object;
    .locals 2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Lr4/h43;->a(I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr4/g73;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lr4/g73;->a:Ljava/lang/Object;

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
