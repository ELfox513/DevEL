.class public final La3/s;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final a:Landroid/widget/ImageButton;

.field public final b:La3/b0;


# direct methods
.method public constructor <init>(Landroid/content/Context;La3/r;La3/b0;)V
    .locals 4

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, La3/s;->b:La3/b0;

    invoke-virtual {p0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p3, Landroid/widget/ImageButton;

    invoke-direct {p3, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, La3/s;->a:Landroid/widget/ImageButton;

    const v0, 0x1080017

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {p3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lr4/yu;->a()Lr4/vl0;

    iget v1, p2, La3/r;->a:I

    invoke-static {p1, v1}, Lr4/vl0;->q(Landroid/content/Context;I)I

    move-result v1

    invoke-static {}, Lr4/yu;->a()Lr4/vl0;

    invoke-static {p1, v0}, Lr4/vl0;->q(Landroid/content/Context;I)I

    move-result v0

    invoke-static {}, Lr4/yu;->a()Lr4/vl0;

    iget v2, p2, La3/r;->b:I

    invoke-static {p1, v2}, Lr4/vl0;->q(Landroid/content/Context;I)I

    move-result v2

    invoke-static {}, Lr4/yu;->a()Lr4/vl0;

    iget v3, p2, La3/r;->c:I

    invoke-static {p1, v3}, Lr4/vl0;->q(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {p3, v1, v0, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    const-string v0, "Interstitial close button"

    invoke-virtual {p3, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {}, Lr4/yu;->a()Lr4/vl0;

    iget v1, p2, La3/r;->d:I

    iget v2, p2, La3/r;->a:I

    iget v3, p2, La3/r;->b:I

    add-int/2addr v1, v2

    add-int/2addr v1, v3

    invoke-static {p1, v1}, Lr4/vl0;->q(Landroid/content/Context;I)I

    move-result v1

    invoke-static {}, Lr4/yu;->a()Lr4/vl0;

    iget v2, p2, La3/r;->d:I

    iget p2, p2, La3/r;->c:I

    add-int/2addr v2, p2

    invoke-static {p1, v2}, Lr4/vl0;->q(Landroid/content/Context;I)I

    move-result p1

    const/16 p2, 0x11

    invoke-direct {v0, v1, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, p3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, La3/s;->a:Landroid/widget/ImageButton;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    iget-object p1, p0, La3/s;->a:Landroid/widget/ImageButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, La3/s;->b:La3/b0;

    if-eqz p1, :cond_0

    invoke-interface {p1}, La3/b0;->e()V

    :cond_0
    return-void
.end method
