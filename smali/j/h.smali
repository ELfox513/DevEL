.class public Lj/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/widget/CompoundButton;

.field public b:Landroid/content/res/ColorStateList;

.field public c:Landroid/graphics/PorterDuff$Mode;

.field public d:Z

.field public e:Z

.field public f:Z


# direct methods
.method public constructor <init>(Landroid/widget/CompoundButton;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lj/h;->b:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lj/h;->c:Landroid/graphics/PorterDuff$Mode;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lj/h;->d:Z

    iput-boolean v0, p0, Lj/h;->e:Z

    iput-object p1, p0, Lj/h;->a:Landroid/widget/CompoundButton;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lj/h;->a:Landroid/widget/CompoundButton;

    invoke-static {v0}, Lf0/f;->a(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-boolean v1, p0, Lj/h;->d:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lj/h;->e:Z

    if-eqz v1, :cond_4

    :cond_0
    invoke-static {v0}, Lw/j;->p(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-boolean v1, p0, Lj/h;->d:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lj/h;->b:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Lw/j;->n(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_1
    iget-boolean v1, p0, Lj/h;->e:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lj/h;->c:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1}, Lw/j;->o(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lj/h;->a:Landroid/widget/CompoundButton;

    invoke-virtual {v1}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_3
    iget-object v1, p0, Lj/h;->a:Landroid/widget/CompoundButton;

    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    return-void
.end method

.method public b(I)I
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lj/h;->a:Landroid/widget/CompoundButton;

    invoke-static {v0}, Lf0/f;->a(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    add-int/2addr p1, v0

    :cond_0
    return p1
.end method

.method public c()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lj/h;->b:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public d()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Lj/h;->c:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public e(Landroid/util/AttributeSet;I)V
    .locals 9

    iget-object v0, p0, Lj/h;->a:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v3, Lc/j;->R0:[I

    const/4 v8, 0x0

    invoke-static {v0, p1, v3, p2, v8}, Lj/t1;->u(Landroid/content/Context;Landroid/util/AttributeSet;[III)Lj/t1;

    move-result-object v0

    iget-object v1, p0, Lj/h;->a:Landroid/widget/CompoundButton;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Lj/t1;->q()Landroid/content/res/TypedArray;

    move-result-object v5

    const/4 v7, 0x0

    move-object v4, p1

    move v6, p2

    invoke-static/range {v1 .. v7}, Ld0/s0;->F(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    :try_start_0
    sget p1, Lc/j;->T0:I

    invoke-virtual {v0, p1}, Lj/t1;->r(I)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {v0, p1, v8}, Lj/t1;->m(II)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    :try_start_1
    iget-object p2, p0, Lj/h;->a:Landroid/widget/CompoundButton;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Le/b;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x1

    goto :goto_0

    :catch_0
    nop

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    :try_start_2
    sget p1, Lc/j;->S0:I

    invoke-virtual {v0, p1}, Lj/t1;->r(I)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {v0, p1, v8}, Lj/t1;->m(II)I

    move-result p1

    if-eqz p1, :cond_1

    iget-object p2, p0, Lj/h;->a:Landroid/widget/CompoundButton;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Le/b;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    sget p1, Lc/j;->U0:I

    invoke-virtual {v0, p1}, Lj/t1;->r(I)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lj/h;->a:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p1}, Lj/t1;->c(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-static {p2, p1}, Lf0/f;->b(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V

    :cond_2
    sget p1, Lc/j;->V0:I

    invoke-virtual {v0, p1}, Lj/t1;->r(I)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lj/h;->a:Landroid/widget/CompoundButton;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lj/t1;->j(II)I

    move-result p1

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lj/u0;->d(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p1

    invoke-static {p2, p1}, Lf0/f;->c(Landroid/widget/CompoundButton;Landroid/graphics/PorterDuff$Mode;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    invoke-virtual {v0}, Lj/t1;->v()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lj/t1;->v()V

    throw p1
.end method

.method public f()V
    .locals 1

    iget-boolean v0, p0, Lj/h;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lj/h;->f:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lj/h;->f:Z

    invoke-virtual {p0}, Lj/h;->a()V

    return-void
.end method

.method public g(Landroid/content/res/ColorStateList;)V
    .locals 0

    iput-object p1, p0, Lj/h;->b:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lj/h;->d:Z

    invoke-virtual {p0}, Lj/h;->a()V

    return-void
.end method

.method public h(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    iput-object p1, p0, Lj/h;->c:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lj/h;->e:Z

    invoke-virtual {p0}, Lj/h;->a()V

    return-void
.end method
