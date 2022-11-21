.class public final Lr4/zv0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/vt1;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lr4/o60;

.field public final c:Lr4/ow0;

.field public final d:Lr4/zv0;

.field public final e:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/vt1;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/o60;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/qt1;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/st1;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public synthetic constructor <init>(Lr4/ow0;Landroid/content/Context;Lr4/o60;Lr4/fw0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, p0, Lr4/zv0;->d:Lr4/zv0;

    iput-object p1, p0, Lr4/zv0;->c:Lr4/ow0;

    iput-object p2, p0, Lr4/zv0;->a:Landroid/content/Context;

    iput-object p3, p0, Lr4/zv0;->b:Lr4/o60;

    invoke-static {p0}, Lr4/wr3;->b(Ljava/lang/Object;)Lr4/vr3;

    move-result-object p1

    iput-object p1, p0, Lr4/zv0;->e:Lr4/is3;

    invoke-static {p3}, Lr4/wr3;->b(Ljava/lang/Object;)Lr4/vr3;

    move-result-object p2

    iput-object p2, p0, Lr4/zv0;->f:Lr4/is3;

    new-instance p3, Lr4/rt1;

    invoke-direct {p3, p2}, Lr4/rt1;-><init>(Lr4/is3;)V

    iput-object p3, p0, Lr4/zv0;->g:Lr4/is3;

    new-instance p2, Lr4/tt1;

    invoke-direct {p2, p1, p3}, Lr4/tt1;-><init>(Lr4/is3;Lr4/is3;)V

    invoke-static {p2}, Lr4/tr3;->b(Lr4/is3;)Lr4/is3;

    move-result-object p1

    iput-object p1, p0, Lr4/zv0;->h:Lr4/is3;

    return-void
.end method

.method public static synthetic a(Lr4/zv0;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lr4/zv0;->a:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic c(Lr4/zv0;)Lr4/qt1;
    .locals 0

    iget-object p0, p0, Lr4/zv0;->b:Lr4/o60;

    invoke-static {p0}, Lr4/rt1;->c(Lr4/o60;)Lr4/qt1;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final b()Lr4/st1;
    .locals 1

    iget-object v0, p0, Lr4/zv0;->h:Lr4/is3;

    invoke-interface {v0}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr4/st1;

    return-object v0
.end method

.method public final e()Lr4/mt1;
    .locals 4

    new-instance v0, Lr4/wv0;

    iget-object v1, p0, Lr4/zv0;->c:Lr4/ow0;

    iget-object v2, p0, Lr4/zv0;->d:Lr4/zv0;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lr4/wv0;-><init>(Lr4/ow0;Lr4/zv0;Lr4/fw0;)V

    return-object v0
.end method
