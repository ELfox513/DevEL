.class public final Lr4/rv0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/xk2;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lr4/yt;

.field public final c:Ljava/lang/String;

.field public final d:Lr4/ow0;

.field public final e:Lr4/rv0;

.field public final f:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/yt;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/d92;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/h92;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/uk2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public synthetic constructor <init>(Lr4/ow0;Landroid/content/Context;Ljava/lang/String;Lr4/yt;Lr4/fw0;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, p0, Lr4/rv0;->e:Lr4/rv0;

    iput-object p1, p0, Lr4/rv0;->d:Lr4/ow0;

    iput-object p2, p0, Lr4/rv0;->a:Landroid/content/Context;

    iput-object p4, p0, Lr4/rv0;->b:Lr4/yt;

    iput-object p3, p0, Lr4/rv0;->c:Ljava/lang/String;

    invoke-static {p2}, Lr4/wr3;->b(Ljava/lang/Object;)Lr4/vr3;

    move-result-object v1

    iput-object v1, p0, Lr4/rv0;->f:Lr4/is3;

    invoke-static {p4}, Lr4/wr3;->b(Ljava/lang/Object;)Lr4/vr3;

    move-result-object v3

    iput-object v3, p0, Lr4/rv0;->g:Lr4/is3;

    invoke-static {p1}, Lr4/ow0;->H(Lr4/ow0;)Lr4/is3;

    move-result-object p2

    new-instance p3, Lr4/e92;

    invoke-direct {p3, p2}, Lr4/e92;-><init>(Lr4/is3;)V

    invoke-static {p3}, Lr4/tr3;->b(Lr4/is3;)Lr4/is3;

    move-result-object v5

    iput-object v5, p0, Lr4/rv0;->h:Lr4/is3;

    invoke-static {}, Lr4/j92;->b()Lr4/j92;

    move-result-object p2

    invoke-static {p2}, Lr4/tr3;->b(Lr4/is3;)Lr4/is3;

    move-result-object v6

    iput-object v6, p0, Lr4/rv0;->i:Lr4/is3;

    invoke-static {p1}, Lr4/ow0;->I(Lr4/ow0;)Lr4/is3;

    move-result-object v2

    invoke-static {p1}, Lr4/ow0;->V(Lr4/ow0;)Lr4/is3;

    move-result-object v4

    invoke-static {}, Lr4/jp2;->b()Lr4/jp2;

    move-result-object v7

    new-instance p1, Lr4/vk2;

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lr4/vk2;-><init>(Lr4/is3;Lr4/is3;Lr4/is3;Lr4/is3;Lr4/is3;Lr4/is3;Lr4/is3;)V

    invoke-static {p1}, Lr4/tr3;->b(Lr4/is3;)Lr4/is3;

    move-result-object p1

    iput-object p1, p0, Lr4/rv0;->j:Lr4/is3;

    return-void
.end method


# virtual methods
.method public final zza()Lr4/i82;
    .locals 7

    new-instance v6, Lr4/i82;

    iget-object v1, p0, Lr4/rv0;->a:Landroid/content/Context;

    iget-object v2, p0, Lr4/rv0;->b:Lr4/yt;

    iget-object v3, p0, Lr4/rv0;->c:Ljava/lang/String;

    iget-object v0, p0, Lr4/rv0;->j:Lr4/is3;

    invoke-interface {v0}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lr4/uk2;

    iget-object v0, p0, Lr4/rv0;->h:Lr4/is3;

    invoke-interface {v0}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lr4/d92;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lr4/i82;-><init>(Landroid/content/Context;Lr4/yt;Ljava/lang/String;Lr4/uk2;Lr4/d92;)V

    return-object v6
.end method
