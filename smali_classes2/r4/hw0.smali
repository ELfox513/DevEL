.class public final Lr4/hw0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/ho2;


# instance fields
.field public final a:Lr4/ow0;

.field public final b:Lr4/hw0;

.field public final c:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/am2<",
            "Lr4/ap1;",
            "Lr4/uo1;",
            ">;>;"
        }
    .end annotation
.end field

.field public final e:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/qn2;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/cp2;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/ao2;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/ko2;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/eo2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public synthetic constructor <init>(Lr4/ow0;Landroid/content/Context;Ljava/lang/String;Lr4/fw0;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, p0, Lr4/hw0;->b:Lr4/hw0;

    iput-object p1, p0, Lr4/hw0;->a:Lr4/ow0;

    invoke-static {p2}, Lr4/wr3;->b(Ljava/lang/Object;)Lr4/vr3;

    move-result-object p2

    iput-object p2, p0, Lr4/hw0;->c:Lr4/is3;

    invoke-static {p1}, Lr4/ow0;->u0(Lr4/ow0;)Lr4/is3;

    move-result-object p4

    invoke-static {p1}, Lr4/ow0;->v0(Lr4/ow0;)Lr4/is3;

    move-result-object v0

    new-instance v4, Lr4/fm2;

    invoke-direct {v4, p2, p4, v0}, Lr4/fm2;-><init>(Lr4/is3;Lr4/is3;Lr4/is3;)V

    iput-object v4, p0, Lr4/hw0;->d:Lr4/is3;

    invoke-static {p1}, Lr4/ow0;->u0(Lr4/ow0;)Lr4/is3;

    move-result-object p4

    new-instance v0, Lr4/rn2;

    invoke-direct {v0, p4}, Lr4/rn2;-><init>(Lr4/is3;)V

    invoke-static {v0}, Lr4/tr3;->b(Lr4/is3;)Lr4/is3;

    move-result-object p4

    iput-object p4, p0, Lr4/hw0;->e:Lr4/is3;

    invoke-static {}, Lr4/ep2;->b()Lr4/ep2;

    move-result-object v0

    invoke-static {v0}, Lr4/tr3;->b(Lr4/is3;)Lr4/is3;

    move-result-object v8

    iput-object v8, p0, Lr4/hw0;->f:Lr4/is3;

    invoke-static {p1}, Lr4/ow0;->I(Lr4/ow0;)Lr4/is3;

    move-result-object v2

    invoke-static {p1}, Lr4/ow0;->V(Lr4/ow0;)Lr4/is3;

    move-result-object v3

    invoke-static {}, Lr4/jp2;->b()Lr4/jp2;

    move-result-object v6

    new-instance p1, Lr4/bo2;

    move-object v0, p1

    move-object v1, p2

    move-object v5, p4

    move-object v7, v8

    invoke-direct/range {v0 .. v7}, Lr4/bo2;-><init>(Lr4/is3;Lr4/is3;Lr4/is3;Lr4/is3;Lr4/is3;Lr4/is3;Lr4/is3;)V

    invoke-static {p1}, Lr4/tr3;->b(Lr4/is3;)Lr4/is3;

    move-result-object v2

    iput-object v2, p0, Lr4/hw0;->g:Lr4/is3;

    new-instance p1, Lr4/lo2;

    invoke-direct {p1, v2, p4, v8}, Lr4/lo2;-><init>(Lr4/is3;Lr4/is3;Lr4/is3;)V

    invoke-static {p1}, Lr4/tr3;->b(Lr4/is3;)Lr4/is3;

    move-result-object p1

    iput-object p1, p0, Lr4/hw0;->h:Lr4/is3;

    invoke-static {p3}, Lr4/wr3;->c(Ljava/lang/Object;)Lr4/vr3;

    move-result-object v1

    iput-object v1, p0, Lr4/hw0;->i:Lr4/is3;

    new-instance p1, Lr4/fo2;

    move-object v0, p1

    move-object v3, p2

    move-object v4, p4

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Lr4/fo2;-><init>(Lr4/is3;Lr4/is3;Lr4/is3;Lr4/is3;Lr4/is3;)V

    invoke-static {p1}, Lr4/tr3;->b(Lr4/is3;)Lr4/is3;

    move-result-object p1

    iput-object p1, p0, Lr4/hw0;->j:Lr4/is3;

    return-void
.end method


# virtual methods
.method public final a()Lr4/eo2;
    .locals 1

    iget-object v0, p0, Lr4/hw0;->j:Lr4/is3;

    invoke-interface {v0}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr4/eo2;

    return-object v0
.end method

.method public final zza()Lr4/ko2;
    .locals 1

    iget-object v0, p0, Lr4/hw0;->h:Lr4/is3;

    invoke-interface {v0}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr4/ko2;

    return-object v0
.end method
