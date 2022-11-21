.class public final Lr4/yx;
.super Lr4/m70;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lr4/zx;


# direct methods
.method public synthetic constructor <init>(Lr4/zx;Lr4/xx;)V
    .locals 0

    iput-object p1, p0, Lr4/yx;->a:Lr4/zx;

    invoke-direct {p0}, Lr4/m70;-><init>()V

    return-void
.end method


# virtual methods
.method public final c5(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lr4/g70;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lr4/yx;->a:Lr4/zx;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/zx;->b(Lr4/zx;Z)Z

    iget-object v0, p0, Lr4/yx;->a:Lr4/zx;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lr4/zx;->c(Lr4/zx;Z)Z

    iget-object v0, p0, Lr4/yx;->a:Lr4/zx;

    invoke-static {v0, p1}, Lr4/zx;->h(Lr4/zx;Ljava/util/List;)Ly2/b;

    move-result-object p1

    invoke-static {}, Lr4/zx;->d()Lr4/zx;

    move-result-object v0

    invoke-static {v0}, Lr4/zx;->a(Lr4/zx;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ly2/c;

    invoke-interface {v3, p1}, Ly2/c;->onInitializationComplete(Ly2/b;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lr4/zx;->d()Lr4/zx;

    move-result-object p1

    invoke-static {p1}, Lr4/zx;->a(Lr4/zx;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
