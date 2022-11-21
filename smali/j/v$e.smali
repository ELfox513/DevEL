.class public Lj/v$e;
.super Lj/b1;
.source "SourceFile"

# interfaces
.implements Lj/v$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field public U:Ljava/lang/CharSequence;

.field public V:Landroid/widget/ListAdapter;

.field public final W:Landroid/graphics/Rect;

.field public X:I

.field public final synthetic Y:Lj/v;


# direct methods
.method public constructor <init>(Lj/v;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    iput-object p1, p0, Lj/v$e;->Y:Lj/v;

    invoke-direct {p0, p2, p3, p4}, Lj/b1;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lj/v$e;->W:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lj/b1;->y(Landroid/view/View;)V

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Lj/b1;->E(Z)V

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lj/b1;->J(I)V

    new-instance p2, Lj/v$e$a;

    invoke-direct {p2, p0, p1}, Lj/v$e$a;-><init>(Lj/v$e;Lj/v;)V

    invoke-virtual {p0, p2}, Lj/b1;->G(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public static synthetic M(Lj/v$e;)V
    .locals 0

    invoke-super {p0}, Lj/b1;->show()V

    return-void
.end method


# virtual methods
.method public N()V
    .locals 8

    invoke-virtual {p0}, Lj/b1;->g()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lj/v$e;->Y:Lj/v;

    iget-object v1, v1, Lj/v;->s:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Lj/v$e;->Y:Lj/v;

    invoke-static {v0}, Lj/z1;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj/v$e;->Y:Lj/v;

    iget-object v0, v0, Lj/v;->s:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lj/v$e;->Y:Lj/v;

    iget-object v0, v0, Lj/v;->s:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    :goto_0
    move v1, v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lj/v$e;->Y:Lj/v;

    iget-object v0, v0, Lj/v;->s:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    :goto_1
    iget-object v0, p0, Lj/v$e;->Y:Lj/v;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    iget-object v2, p0, Lj/v$e;->Y:Lj/v;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    iget-object v3, p0, Lj/v$e;->Y:Lj/v;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    iget-object v4, p0, Lj/v$e;->Y:Lj/v;

    iget v5, v4, Lj/v;->r:I

    const/4 v6, -0x2

    if-ne v5, v6, :cond_3

    iget-object v5, p0, Lj/v$e;->V:Landroid/widget/ListAdapter;

    check-cast v5, Landroid/widget/SpinnerAdapter;

    invoke-virtual {p0}, Lj/b1;->g()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lj/v;->a(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    move-result v4

    iget-object v5, p0, Lj/v$e;->Y:Lj/v;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v6, p0, Lj/v$e;->Y:Lj/v;

    iget-object v6, v6, Lj/v;->s:Landroid/graphics/Rect;

    iget v7, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v7

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    if-le v4, v5, :cond_2

    move v4, v5

    :cond_2
    sub-int v5, v3, v0

    sub-int/2addr v5, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {p0, v4}, Lj/b1;->A(I)V

    goto :goto_2

    :cond_3
    const/4 v4, -0x1

    if-ne v5, v4, :cond_4

    sub-int v4, v3, v0

    sub-int/2addr v4, v2

    invoke-virtual {p0, v4}, Lj/b1;->A(I)V

    goto :goto_2

    :cond_4
    invoke-virtual {p0, v5}, Lj/b1;->A(I)V

    :goto_2
    iget-object v4, p0, Lj/v$e;->Y:Lj/v;

    invoke-static {v4}, Lj/z1;->b(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_5

    sub-int/2addr v3, v2

    invoke-virtual {p0}, Lj/b1;->u()I

    move-result v0

    sub-int/2addr v3, v0

    invoke-virtual {p0}, Lj/v$e;->O()I

    move-result v0

    sub-int/2addr v3, v0

    add-int/2addr v1, v3

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Lj/v$e;->O()I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v1, v0

    :goto_3
    invoke-virtual {p0, v1}, Lj/b1;->d(I)V

    return-void
.end method

.method public O()I
    .locals 1

    iget v0, p0, Lj/v$e;->X:I

    return v0
.end method

.method public P(Landroid/view/View;)Z
    .locals 1

    invoke-static {p1}, Ld0/s0;->v(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj/v$e;->W:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public e()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lj/v$e;->U:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public h(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lj/v$e;->U:Ljava/lang/CharSequence;

    return-void
.end method

.method public l(I)V
    .locals 0

    iput p1, p0, Lj/v$e;->X:I

    return-void
.end method

.method public m(II)V
    .locals 4

    invoke-virtual {p0}, Lj/b1;->a()Z

    move-result v0

    invoke-virtual {p0}, Lj/v$e;->N()V

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lj/b1;->D(I)V

    invoke-super {p0}, Lj/b1;->show()V

    invoke-virtual {p0}, Lj/b1;->i()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_0

    invoke-static {v1, p1}, Lj/w;->a(Landroid/widget/ListView;I)V

    invoke-static {v1, p2}, Lj/x;->a(Landroid/widget/ListView;I)V

    :cond_0
    iget-object p1, p0, Lj/v$e;->Y:Lj/v;

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result p1

    invoke-virtual {p0, p1}, Lj/b1;->K(I)V

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lj/v$e;->Y:Lj/v;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance p2, Lj/v$e$b;

    invoke-direct {p2, p0}, Lj/v$e$b;-><init>(Lj/v$e;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    new-instance p1, Lj/v$e$c;

    invoke-direct {p1, p0, p2}, Lj/v$e$c;-><init>(Lj/v$e;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-virtual {p0, p1}, Lj/b1;->F(Landroid/widget/PopupWindow$OnDismissListener;)V

    :cond_2
    return-void
.end method

.method public o(Landroid/widget/ListAdapter;)V
    .locals 0

    invoke-super {p0, p1}, Lj/b1;->o(Landroid/widget/ListAdapter;)V

    iput-object p1, p0, Lj/v$e;->V:Landroid/widget/ListAdapter;

    return-void
.end method
