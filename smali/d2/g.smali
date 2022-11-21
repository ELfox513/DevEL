.class public final Ld2/g;
.super Ld3/v;
.source "SourceFile"


# instance fields
.field public final s:Lv2/h;


# direct methods
.method public constructor <init>(Lv2/h;)V
    .locals 1

    invoke-direct {p0}, Ld3/v;-><init>()V

    iput-object p1, p0, Ld2/g;->s:Lv2/h;

    invoke-virtual {p1}, Lv2/h;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ld3/v;->w(Ljava/lang/String;)V

    invoke-virtual {p1}, Lv2/h;->f()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Ld3/v;->y(Ljava/util/List;)V

    invoke-virtual {p1}, Lv2/h;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ld3/v;->u(Ljava/lang/String;)V

    invoke-virtual {p1}, Lv2/h;->e()Lv2/d;

    move-result-object v0

    invoke-virtual {p0, v0}, Ld3/v;->x(Lv2/d;)V

    invoke-virtual {p1}, Lv2/h;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ld3/v;->v(Ljava/lang/String;)V

    invoke-virtual {p1}, Lv2/h;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ld3/v;->t(Ljava/lang/String;)V

    invoke-virtual {p1}, Lv2/h;->h()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0, v0}, Ld3/v;->C(Ljava/lang/Double;)V

    invoke-virtual {p1}, Lv2/h;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ld3/v;->D(Ljava/lang/String;)V

    invoke-virtual {p1}, Lv2/h;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ld3/v;->B(Ljava/lang/String;)V

    invoke-virtual {p1}, Lv2/h;->k()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Ld3/v;->H(Ljava/lang/Object;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ld3/v;->A(Z)V

    invoke-virtual {p0, v0}, Ld3/v;->z(Z)V

    invoke-virtual {p1}, Lv2/h;->j()Lt2/v;

    move-result-object p1

    invoke-virtual {p0, p1}, Ld3/v;->G(Lt2/v;)V

    return-void
.end method


# virtual methods
.method public final E(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    instance-of p2, p1, Lv2/n;

    const/4 p3, 0x0

    if-nez p2, :cond_1

    sget-object p2, Lv2/l;->a:Ljava/util/WeakHashMap;

    invoke-virtual {p2, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lv2/l;

    if-nez p1, :cond_0

    return-void

    :cond_0
    throw p3

    :cond_1
    check-cast p1, Lv2/n;

    throw p3
.end method
