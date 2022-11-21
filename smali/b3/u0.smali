.class public final Lb3/u0;
.super Lr4/q84;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr4/q84<",
        "Lr4/l84;",
        ">;"
    }
.end annotation


# instance fields
.field public final x:Lr4/vm0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/vm0<",
            "Lr4/l84;",
            ">;"
        }
    .end annotation
.end field

.field public final y:Lr4/bm0;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;Lr4/vm0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lr4/vm0<",
            "Lr4/l84;",
            ">;)V"
        }
    .end annotation

    new-instance p2, Lb3/t0;

    invoke-direct {p2, p3}, Lb3/t0;-><init>(Lr4/vm0;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lr4/q84;-><init>(ILjava/lang/String;Lr4/u84;)V

    iput-object p3, p0, Lb3/u0;->x:Lr4/vm0;

    new-instance p2, Lr4/bm0;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Lr4/bm0;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lb3/u0;->y:Lr4/bm0;

    const-string v0, "GET"

    invoke-virtual {p2, p1, v0, p3, p3}, Lr4/bm0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[B)V

    return-void
.end method


# virtual methods
.method public final H(Lr4/l84;)Lr4/w84;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/l84;",
            ")",
            "Lr4/w84<",
            "Lr4/l84;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lr4/n94;->a(Lr4/l84;)Lr4/y74;

    move-result-object v0

    invoke-static {p1, v0}, Lr4/w84;->a(Ljava/lang/Object;Lr4/y74;)Lr4/w84;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic I(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lr4/l84;

    iget-object v0, p0, Lb3/u0;->y:Lr4/bm0;

    iget-object v1, p1, Lr4/l84;->c:Ljava/util/Map;

    iget v2, p1, Lr4/l84;->a:I

    invoke-virtual {v0, v1, v2}, Lr4/bm0;->d(Ljava/util/Map;I)V

    iget-object v0, p0, Lb3/u0;->y:Lr4/bm0;

    iget-object v1, p1, Lr4/l84;->b:[B

    invoke-static {}, Lr4/bm0;->j()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lr4/bm0;->f([B)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lb3/u0;->x:Lr4/vm0;

    invoke-virtual {v0, p1}, Lr4/vm0;->e(Ljava/lang/Object;)Z

    return-void
.end method
