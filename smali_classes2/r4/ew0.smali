.class public final Lr4/ew0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/sm2;


# instance fields
.field public final a:Lr4/ow0;

.field public final b:Lr4/ew0;

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
            "Lr4/yt;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/d92;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/qn2;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/pm2;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/l92;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public synthetic constructor <init>(Lr4/ow0;Landroid/content/Context;Ljava/lang/String;Lr4/yt;Lr4/fw0;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, p0, Lr4/ew0;->b:Lr4/ew0;

    iput-object p1, p0, Lr4/ew0;->a:Lr4/ow0;

    invoke-static {p2}, Lr4/wr3;->b(Ljava/lang/Object;)Lr4/vr3;

    move-result-object p2

    iput-object p2, p0, Lr4/ew0;->c:Lr4/is3;

    invoke-static {p4}, Lr4/wr3;->b(Ljava/lang/Object;)Lr4/vr3;

    move-result-object p4

    iput-object p4, p0, Lr4/ew0;->d:Lr4/is3;

    invoke-static {p3}, Lr4/wr3;->b(Ljava/lang/Object;)Lr4/vr3;

    move-result-object p3

    iput-object p3, p0, Lr4/ew0;->e:Lr4/is3;

    invoke-static {p1}, Lr4/ow0;->H(Lr4/ow0;)Lr4/is3;

    move-result-object p5

    new-instance v0, Lr4/e92;

    invoke-direct {v0, p5}, Lr4/e92;-><init>(Lr4/is3;)V

    invoke-static {v0}, Lr4/tr3;->b(Lr4/is3;)Lr4/is3;

    move-result-object p5

    iput-object p5, p0, Lr4/ew0;->f:Lr4/is3;

    invoke-static {p1}, Lr4/ow0;->u0(Lr4/ow0;)Lr4/is3;

    move-result-object v0

    new-instance v1, Lr4/rn2;

    invoke-direct {v1, v0}, Lr4/rn2;-><init>(Lr4/is3;)V

    invoke-static {v1}, Lr4/tr3;->b(Lr4/is3;)Lr4/is3;

    move-result-object v7

    iput-object v7, p0, Lr4/ew0;->g:Lr4/is3;

    invoke-static {p1}, Lr4/ow0;->I(Lr4/ow0;)Lr4/is3;

    move-result-object v2

    invoke-static {p1}, Lr4/ow0;->V(Lr4/ow0;)Lr4/is3;

    move-result-object v3

    invoke-static {}, Lr4/jp2;->b()Lr4/jp2;

    move-result-object v6

    new-instance p1, Lr4/qm2;

    move-object v0, p1

    move-object v1, p2

    move-object v4, p5

    move-object v5, v7

    invoke-direct/range {v0 .. v6}, Lr4/qm2;-><init>(Lr4/is3;Lr4/is3;Lr4/is3;Lr4/is3;Lr4/is3;Lr4/is3;)V

    invoke-static {p1}, Lr4/tr3;->b(Lr4/is3;)Lr4/is3;

    move-result-object v4

    iput-object v4, p0, Lr4/ew0;->h:Lr4/is3;

    new-instance p1, Lr4/m92;

    move-object v0, p1

    move-object v2, p4

    move-object v3, p3

    move-object v5, p5

    move-object v6, v7

    invoke-direct/range {v0 .. v6}, Lr4/m92;-><init>(Lr4/is3;Lr4/is3;Lr4/is3;Lr4/is3;Lr4/is3;Lr4/is3;)V

    invoke-static {p1}, Lr4/tr3;->b(Lr4/is3;)Lr4/is3;

    move-result-object p1

    iput-object p1, p0, Lr4/ew0;->i:Lr4/is3;

    return-void
.end method


# virtual methods
.method public final zza()Lr4/l92;
    .locals 1

    iget-object v0, p0, Lr4/ew0;->i:Lr4/is3;

    invoke-interface {v0}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr4/l92;

    return-object v0
.end method
