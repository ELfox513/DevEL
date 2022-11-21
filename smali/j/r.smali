.class public Lj/r;
.super Landroid/widget/RadioButton;
.source "SourceFile"

# interfaces
.implements Lf0/h0;
.implements Ld0/z;


# instance fields
.field public final a:Lj/h;

.field public final b:Lj/d;

.field public final d:Lj/j0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Lc/a;->E:I

    invoke-direct {p0, p1, p2, v0}, Lj/r;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-static {p1}, Lj/q1;->b(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p0, p1}, Lj/o1;->a(Landroid/view/View;Landroid/content/Context;)V

    new-instance p1, Lj/h;

    invoke-direct {p1, p0}, Lj/h;-><init>(Landroid/widget/CompoundButton;)V

    iput-object p1, p0, Lj/r;->a:Lj/h;

    invoke-virtual {p1, p2, p3}, Lj/h;->e(Landroid/util/AttributeSet;I)V

    new-instance p1, Lj/d;

    invoke-direct {p1, p0}, Lj/d;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lj/r;->b:Lj/d;

    invoke-virtual {p1, p2, p3}, Lj/d;->e(Landroid/util/AttributeSet;I)V

    new-instance p1, Lj/j0;

    invoke-direct {p1, p0}, Lj/j0;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Lj/r;->d:Lj/j0;

    invoke-virtual {p1, p2, p3}, Lj/j0;->m(Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public drawableStateChanged()V
    .locals 1

    invoke-super {p0}, Landroid/widget/RadioButton;->drawableStateChanged()V

    iget-object v0, p0, Lj/r;->b:Lj/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lj/d;->b()V

    :cond_0
    iget-object v0, p0, Lj/r;->d:Lj/j0;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lj/j0;->b()V

    :cond_1
    return-void
.end method

.method public getCompoundPaddingLeft()I
    .locals 2

    invoke-super {p0}, Landroid/widget/RadioButton;->getCompoundPaddingLeft()I

    move-result v0

    iget-object v1, p0, Lj/r;->a:Lj/h;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lj/h;->b(I)I

    move-result v0

    :cond_0
    return v0
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lj/r;->b:Lj/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lj/d;->c()Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Lj/r;->b:Lj/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lj/d;->d()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSupportButtonTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lj/r;->a:Lj/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lj/h;->c()Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSupportButtonTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Lj/r;->a:Lj/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lj/h;->d()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/RadioButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lj/r;->b:Lj/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lj/d;->f(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/RadioButton;->setBackgroundResource(I)V

    iget-object v0, p0, Lj/r;->b:Lj/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lj/d;->g(I)V

    :cond_0
    return-void
.end method

.method public setButtonDrawable(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Le/b;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lj/r;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/RadioButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lj/r;->a:Lj/h;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lj/h;->f()V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lj/r;->b:Lj/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lj/d;->i(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, Lj/r;->b:Lj/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lj/d;->j(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public setSupportButtonTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lj/r;->a:Lj/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lj/h;->g(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setSupportButtonTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, Lj/r;->a:Lj/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lj/h;->h(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method
