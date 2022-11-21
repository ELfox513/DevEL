.class public final Lr4/yh1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/vr3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/vr3<",
        "Lr4/l31<",
        "Lr4/h11;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final a:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/bu0;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/s61;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/bd1;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/mh1;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/aa1;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lr4/is3;Lr4/is3;Lr4/is3;Lr4/is3;Lr4/is3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/is3<",
            "Lr4/bu0;",
            ">;",
            "Lr4/is3<",
            "Lr4/s61;",
            ">;",
            "Lr4/is3<",
            "Lr4/bd1;",
            ">;",
            "Lr4/is3<",
            "Lr4/mh1;",
            ">;",
            "Lr4/is3<",
            "Lr4/aa1;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/yh1;->a:Lr4/is3;

    iput-object p2, p0, Lr4/yh1;->b:Lr4/is3;

    iput-object p3, p0, Lr4/yh1;->c:Lr4/is3;

    iput-object p4, p0, Lr4/yh1;->d:Lr4/is3;

    iput-object p5, p0, Lr4/yh1;->e:Lr4/is3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lr4/yh1;->a:Lr4/is3;

    invoke-interface {v0}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr4/bu0;

    iget-object v1, p0, Lr4/yh1;->b:Lr4/is3;

    check-cast v1, Lr4/a71;

    invoke-virtual {v1}, Lr4/a71;->b()Lr4/s61;

    move-result-object v1

    iget-object v2, p0, Lr4/yh1;->c:Lr4/is3;

    check-cast v2, Lr4/vd1;

    invoke-virtual {v2}, Lr4/vd1;->b()Lr4/bd1;

    move-result-object v2

    iget-object v3, p0, Lr4/yh1;->d:Lr4/is3;

    check-cast v3, Lr4/oh1;

    invoke-virtual {v3}, Lr4/oh1;->b()Lr4/mh1;

    move-result-object v3

    iget-object v4, p0, Lr4/yh1;->e:Lr4/is3;

    check-cast v4, Lr4/g11;

    invoke-virtual {v4}, Lr4/g11;->b()Lr4/aa1;

    move-result-object v4

    invoke-virtual {v0}, Lr4/bu0;->n()Lr4/e21;

    move-result-object v0

    invoke-virtual {v1}, Lr4/s61;->h()Lr4/u61;

    move-result-object v1

    invoke-interface {v0, v1}, Lr4/e21;->s(Lr4/u61;)Lr4/e21;

    invoke-interface {v0, v2}, Lr4/e21;->t(Lr4/bd1;)Lr4/e21;

    invoke-interface {v0, v3}, Lr4/e21;->k(Lr4/mh1;)Lr4/e21;

    new-instance v1, Lr4/j72;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lr4/j72;-><init>(Lr4/n00;)V

    invoke-interface {v0, v1}, Lr4/e21;->o(Lr4/j72;)Lr4/e21;

    new-instance v1, Lr4/c31;

    invoke-direct {v1, v4}, Lr4/c31;-><init>(Lr4/aa1;)V

    invoke-interface {v0, v1}, Lr4/e21;->g(Lr4/c31;)Lr4/e21;

    new-instance v1, Lr4/e11;

    invoke-direct {v1, v2}, Lr4/e11;-><init>(Landroid/view/ViewGroup;)V

    invoke-interface {v0, v1}, Lr4/e21;->h(Lr4/e11;)Lr4/e21;

    invoke-interface {v0}, Lr4/e21;->zza()Lr4/f21;

    move-result-object v0

    invoke-virtual {v0}, Lr4/f21;->c()Lr4/l31;

    move-result-object v0

    invoke-static {v0}, Lr4/ds3;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
