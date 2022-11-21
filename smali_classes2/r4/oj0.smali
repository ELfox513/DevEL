.class public final Lr4/oj0;
.super Lr4/jk0;
.source "SourceFile"


# instance fields
.field public final b:Lc4/f;

.field public final c:Lr4/oj0;

.field public final d:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lb3/y1;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/ik0;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/fj0;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lc4/f;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/ij0;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/kj0;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/ok0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lc4/f;Lb3/y1;Lr4/ik0;Lr4/nj0;)V
    .locals 0

    invoke-direct {p0}, Lr4/jk0;-><init>()V

    iput-object p0, p0, Lr4/oj0;->c:Lr4/oj0;

    iput-object p2, p0, Lr4/oj0;->b:Lc4/f;

    invoke-static {p1}, Lr4/wr3;->b(Ljava/lang/Object;)Lr4/vr3;

    move-result-object p1

    iput-object p1, p0, Lr4/oj0;->d:Lr4/is3;

    invoke-static {p3}, Lr4/wr3;->b(Ljava/lang/Object;)Lr4/vr3;

    move-result-object p3

    iput-object p3, p0, Lr4/oj0;->e:Lr4/is3;

    invoke-static {p4}, Lr4/wr3;->b(Ljava/lang/Object;)Lr4/vr3;

    move-result-object p4

    iput-object p4, p0, Lr4/oj0;->f:Lr4/is3;

    new-instance p5, Lr4/hj0;

    invoke-direct {p5, p1, p3, p4}, Lr4/hj0;-><init>(Lr4/is3;Lr4/is3;Lr4/is3;)V

    invoke-static {p5}, Lr4/tr3;->b(Lr4/is3;)Lr4/is3;

    move-result-object p5

    iput-object p5, p0, Lr4/oj0;->g:Lr4/is3;

    invoke-static {p2}, Lr4/wr3;->b(Ljava/lang/Object;)Lr4/vr3;

    move-result-object p2

    iput-object p2, p0, Lr4/oj0;->h:Lr4/is3;

    new-instance p5, Lr4/jj0;

    invoke-direct {p5, p2, p3, p4}, Lr4/jj0;-><init>(Lr4/is3;Lr4/is3;Lr4/is3;)V

    invoke-static {p5}, Lr4/tr3;->b(Lr4/is3;)Lr4/is3;

    move-result-object p3

    iput-object p3, p0, Lr4/oj0;->i:Lr4/is3;

    new-instance p4, Lr4/lj0;

    invoke-direct {p4, p2, p3}, Lr4/lj0;-><init>(Lr4/is3;Lr4/is3;)V

    iput-object p4, p0, Lr4/oj0;->j:Lr4/is3;

    new-instance p2, Lr4/pk0;

    invoke-direct {p2, p1, p4}, Lr4/pk0;-><init>(Lr4/is3;Lr4/is3;)V

    invoke-static {p2}, Lr4/tr3;->b(Lr4/is3;)Lr4/is3;

    move-result-object p1

    iput-object p1, p0, Lr4/oj0;->k:Lr4/is3;

    return-void
.end method


# virtual methods
.method public final a()Lr4/fj0;
    .locals 1

    iget-object v0, p0, Lr4/oj0;->g:Lr4/is3;

    invoke-interface {v0}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr4/fj0;

    return-object v0
.end method

.method public final b()Lr4/kj0;
    .locals 3

    new-instance v0, Lr4/kj0;

    iget-object v1, p0, Lr4/oj0;->b:Lc4/f;

    iget-object v2, p0, Lr4/oj0;->i:Lr4/is3;

    invoke-interface {v2}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr4/ij0;

    invoke-direct {v0, v1, v2}, Lr4/kj0;-><init>(Lc4/f;Lr4/ij0;)V

    return-object v0
.end method

.method public final c()Lr4/ok0;
    .locals 1

    iget-object v0, p0, Lr4/oj0;->k:Lr4/is3;

    invoke-interface {v0}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr4/ok0;

    return-object v0
.end method
