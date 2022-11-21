.class public Ld0/t1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld0/t1$a;,
        Ld0/t1$n;,
        Ld0/t1$m;,
        Ld0/t1$e;,
        Ld0/t1$d;,
        Ld0/t1$c;,
        Ld0/t1$f;,
        Ld0/t1$b;,
        Ld0/t1$k;,
        Ld0/t1$j;,
        Ld0/t1$i;,
        Ld0/t1$h;,
        Ld0/t1$g;,
        Ld0/t1$l;
    }
.end annotation


# static fields
.field public static final b:Ld0/t1;


# instance fields
.field public final a:Ld0/t1$l;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    sget-object v0, Ld0/t1$k;->r:Ld0/t1;

    sput-object v0, Ld0/t1;->b:Ld0/t1;

    goto :goto_0

    :cond_0
    sget-object v0, Ld0/t1$l;->b:Ld0/t1;

    sput-object v0, Ld0/t1;->b:Ld0/t1;

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/view/WindowInsets;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    new-instance v0, Ld0/t1$k;

    invoke-direct {v0, p0, p1}, Ld0/t1$k;-><init>(Ld0/t1;Landroid/view/WindowInsets;)V

    iput-object v0, p0, Ld0/t1;->a:Ld0/t1$l;

    goto :goto_0

    :cond_0
    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    new-instance v0, Ld0/t1$j;

    invoke-direct {v0, p0, p1}, Ld0/t1$j;-><init>(Ld0/t1;Landroid/view/WindowInsets;)V

    iput-object v0, p0, Ld0/t1;->a:Ld0/t1$l;

    goto :goto_0

    :cond_1
    const/16 v1, 0x1c

    if-lt v0, v1, :cond_2

    new-instance v0, Ld0/t1$i;

    invoke-direct {v0, p0, p1}, Ld0/t1$i;-><init>(Ld0/t1;Landroid/view/WindowInsets;)V

    iput-object v0, p0, Ld0/t1;->a:Ld0/t1$l;

    goto :goto_0

    :cond_2
    const/16 v1, 0x15

    if-lt v0, v1, :cond_3

    new-instance v0, Ld0/t1$h;

    invoke-direct {v0, p0, p1}, Ld0/t1$h;-><init>(Ld0/t1;Landroid/view/WindowInsets;)V

    iput-object v0, p0, Ld0/t1;->a:Ld0/t1$l;

    goto :goto_0

    :cond_3
    const/16 v1, 0x14

    if-lt v0, v1, :cond_4

    new-instance v0, Ld0/t1$g;

    invoke-direct {v0, p0, p1}, Ld0/t1$g;-><init>(Ld0/t1;Landroid/view/WindowInsets;)V

    iput-object v0, p0, Ld0/t1;->a:Ld0/t1$l;

    goto :goto_0

    :cond_4
    new-instance p1, Ld0/t1$l;

    invoke-direct {p1, p0}, Ld0/t1$l;-><init>(Ld0/t1;)V

    iput-object p1, p0, Ld0/t1;->a:Ld0/t1$l;

    :goto_0
    return-void
.end method

.method public constructor <init>(Ld0/t1;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_5

    iget-object p1, p1, Ld0/t1;->a:Ld0/t1$l;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    instance-of v1, p1, Ld0/t1$k;

    if-eqz v1, :cond_0

    new-instance v0, Ld0/t1$k;

    move-object v1, p1

    check-cast v1, Ld0/t1$k;

    invoke-direct {v0, p0, v1}, Ld0/t1$k;-><init>(Ld0/t1;Ld0/t1$k;)V

    iput-object v0, p0, Ld0/t1;->a:Ld0/t1$l;

    goto :goto_0

    :cond_0
    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    instance-of v1, p1, Ld0/t1$j;

    if-eqz v1, :cond_1

    new-instance v0, Ld0/t1$j;

    move-object v1, p1

    check-cast v1, Ld0/t1$j;

    invoke-direct {v0, p0, v1}, Ld0/t1$j;-><init>(Ld0/t1;Ld0/t1$j;)V

    iput-object v0, p0, Ld0/t1;->a:Ld0/t1$l;

    goto :goto_0

    :cond_1
    const/16 v1, 0x1c

    if-lt v0, v1, :cond_2

    instance-of v1, p1, Ld0/t1$i;

    if-eqz v1, :cond_2

    new-instance v0, Ld0/t1$i;

    move-object v1, p1

    check-cast v1, Ld0/t1$i;

    invoke-direct {v0, p0, v1}, Ld0/t1$i;-><init>(Ld0/t1;Ld0/t1$i;)V

    iput-object v0, p0, Ld0/t1;->a:Ld0/t1$l;

    goto :goto_0

    :cond_2
    const/16 v1, 0x15

    if-lt v0, v1, :cond_3

    instance-of v1, p1, Ld0/t1$h;

    if-eqz v1, :cond_3

    new-instance v0, Ld0/t1$h;

    move-object v1, p1

    check-cast v1, Ld0/t1$h;

    invoke-direct {v0, p0, v1}, Ld0/t1$h;-><init>(Ld0/t1;Ld0/t1$h;)V

    iput-object v0, p0, Ld0/t1;->a:Ld0/t1$l;

    goto :goto_0

    :cond_3
    const/16 v1, 0x14

    if-lt v0, v1, :cond_4

    instance-of v0, p1, Ld0/t1$g;

    if-eqz v0, :cond_4

    new-instance v0, Ld0/t1$g;

    move-object v1, p1

    check-cast v1, Ld0/t1$g;

    invoke-direct {v0, p0, v1}, Ld0/t1$g;-><init>(Ld0/t1;Ld0/t1$g;)V

    iput-object v0, p0, Ld0/t1;->a:Ld0/t1$l;

    goto :goto_0

    :cond_4
    new-instance v0, Ld0/t1$l;

    invoke-direct {v0, p0}, Ld0/t1$l;-><init>(Ld0/t1;)V

    iput-object v0, p0, Ld0/t1;->a:Ld0/t1$l;

    :goto_0
    invoke-virtual {p1, p0}, Ld0/t1$l;->e(Ld0/t1;)V

    goto :goto_1

    :cond_5
    new-instance p1, Ld0/t1$l;

    invoke-direct {p1, p0}, Ld0/t1$l;-><init>(Ld0/t1;)V

    iput-object p1, p0, Ld0/t1;->a:Ld0/t1$l;

    :goto_1
    return-void
.end method

.method public static m(Lv/b;IIII)Lv/b;
    .locals 5

    iget v0, p0, Lv/b;->a:I

    sub-int/2addr v0, p1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v2, p0, Lv/b;->b:I

    sub-int/2addr v2, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v3, p0, Lv/b;->c:I

    sub-int/2addr v3, p3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v4, p0, Lv/b;->d:I

    sub-int/2addr v4, p4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-ne v0, p1, :cond_0

    if-ne v2, p2, :cond_0

    if-ne v3, p3, :cond_0

    if-ne v1, p4, :cond_0

    return-object p0

    :cond_0
    invoke-static {v0, v2, v3, v1}, Lv/b;->b(IIII)Lv/b;

    move-result-object p0

    return-object p0
.end method

.method public static t(Landroid/view/WindowInsets;)Ld0/t1;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ld0/t1;->u(Landroid/view/WindowInsets;Landroid/view/View;)Ld0/t1;

    move-result-object p0

    return-object p0
.end method

.method public static u(Landroid/view/WindowInsets;Landroid/view/View;)Ld0/t1;
    .locals 1

    new-instance v0, Ld0/t1;

    invoke-static {p0}, Lc0/g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowInsets;

    invoke-direct {v0, p0}, Ld0/t1;-><init>(Landroid/view/WindowInsets;)V

    if-eqz p1, :cond_0

    invoke-static {p1}, Landroidx/activity/c;->a(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Ld0/s0;->p(Landroid/view/View;)Ld0/t1;

    move-result-object p0

    invoke-virtual {v0, p0}, Ld0/t1;->q(Ld0/t1;)V

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0}, Ld0/t1;->d(Landroid/view/View;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a()Ld0/t1;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Ld0/t1;->a:Ld0/t1$l;

    invoke-virtual {v0}, Ld0/t1$l;->a()Ld0/t1;

    move-result-object v0

    return-object v0
.end method

.method public b()Ld0/t1;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Ld0/t1;->a:Ld0/t1$l;

    invoke-virtual {v0}, Ld0/t1$l;->b()Ld0/t1;

    move-result-object v0

    return-object v0
.end method

.method public c()Ld0/t1;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Ld0/t1;->a:Ld0/t1$l;

    invoke-virtual {v0}, Ld0/t1$l;->c()Ld0/t1;

    move-result-object v0

    return-object v0
.end method

.method public d(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Ld0/t1;->a:Ld0/t1$l;

    invoke-virtual {v0, p1}, Ld0/t1$l;->d(Landroid/view/View;)V

    return-void
.end method

.method public e()Ld0/c;
    .locals 1

    iget-object v0, p0, Ld0/t1;->a:Ld0/t1$l;

    invoke-virtual {v0}, Ld0/t1$l;->f()Ld0/c;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Ld0/t1;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Ld0/t1;

    iget-object v0, p0, Ld0/t1;->a:Ld0/t1$l;

    iget-object p1, p1, Ld0/t1;->a:Ld0/t1$l;

    invoke-static {v0, p1}, Lc0/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public f(I)Lv/b;
    .locals 1

    iget-object v0, p0, Ld0/t1;->a:Ld0/t1$l;

    invoke-virtual {v0, p1}, Ld0/t1$l;->g(I)Lv/b;

    move-result-object p1

    return-object p1
.end method

.method public g()Lv/b;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Ld0/t1;->a:Ld0/t1$l;

    invoke-virtual {v0}, Ld0/t1$l;->i()Lv/b;

    move-result-object v0

    return-object v0
.end method

.method public h()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Ld0/t1;->a:Ld0/t1$l;

    invoke-virtual {v0}, Ld0/t1$l;->k()Lv/b;

    move-result-object v0

    iget v0, v0, Lv/b;->d:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Ld0/t1;->a:Ld0/t1$l;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ld0/t1$l;->hashCode()I

    move-result v0

    :goto_0
    return v0
.end method

.method public i()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Ld0/t1;->a:Ld0/t1$l;

    invoke-virtual {v0}, Ld0/t1$l;->k()Lv/b;

    move-result-object v0

    iget v0, v0, Lv/b;->a:I

    return v0
.end method

.method public j()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Ld0/t1;->a:Ld0/t1$l;

    invoke-virtual {v0}, Ld0/t1$l;->k()Lv/b;

    move-result-object v0

    iget v0, v0, Lv/b;->c:I

    return v0
.end method

.method public k()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Ld0/t1;->a:Ld0/t1$l;

    invoke-virtual {v0}, Ld0/t1$l;->k()Lv/b;

    move-result-object v0

    iget v0, v0, Lv/b;->b:I

    return v0
.end method

.method public l(IIII)Ld0/t1;
    .locals 1

    iget-object v0, p0, Ld0/t1;->a:Ld0/t1$l;

    invoke-virtual {v0, p1, p2, p3, p4}, Ld0/t1$l;->m(IIII)Ld0/t1;

    move-result-object p1

    return-object p1
.end method

.method public n(IIII)Ld0/t1;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ld0/t1$b;

    invoke-direct {v0, p0}, Ld0/t1$b;-><init>(Ld0/t1;)V

    invoke-static {p1, p2, p3, p4}, Lv/b;->b(IIII)Lv/b;

    move-result-object p1

    invoke-virtual {v0, p1}, Ld0/t1$b;->c(Lv/b;)Ld0/t1$b;

    move-result-object p1

    invoke-virtual {p1}, Ld0/t1$b;->a()Ld0/t1;

    move-result-object p1

    return-object p1
.end method

.method public o([Lv/b;)V
    .locals 1

    iget-object v0, p0, Ld0/t1;->a:Ld0/t1$l;

    invoke-virtual {v0, p1}, Ld0/t1$l;->p([Lv/b;)V

    return-void
.end method

.method public p(Lv/b;)V
    .locals 1

    iget-object v0, p0, Ld0/t1;->a:Ld0/t1$l;

    invoke-virtual {v0, p1}, Ld0/t1$l;->q(Lv/b;)V

    return-void
.end method

.method public q(Ld0/t1;)V
    .locals 1

    iget-object v0, p0, Ld0/t1;->a:Ld0/t1$l;

    invoke-virtual {v0, p1}, Ld0/t1$l;->r(Ld0/t1;)V

    return-void
.end method

.method public r(Lv/b;)V
    .locals 1

    iget-object v0, p0, Ld0/t1;->a:Ld0/t1$l;

    invoke-virtual {v0, p1}, Ld0/t1$l;->s(Lv/b;)V

    return-void
.end method

.method public s()Landroid/view/WindowInsets;
    .locals 2

    iget-object v0, p0, Ld0/t1;->a:Ld0/t1$l;

    instance-of v1, v0, Ld0/t1$g;

    if-eqz v1, :cond_0

    check-cast v0, Ld0/t1$g;

    iget-object v0, v0, Ld0/t1$g;->c:Landroid/view/WindowInsets;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
