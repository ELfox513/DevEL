.class public Ld/f$i$a;
.super Ld0/r1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/f$i;->d(Lh/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld/f$i;


# direct methods
.method public constructor <init>(Ld/f$i;)V
    .locals 0

    iput-object p1, p0, Ld/f$i$a;->a:Ld/f$i;

    invoke-direct {p0}, Ld0/r1;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Ld/f$i$a;->a:Ld/f$i;

    iget-object p1, p1, Ld/f$i;->b:Ld/f;

    iget-object p1, p1, Ld/f;->A:Landroidx/appcompat/widget/ActionBarContextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    iget-object p1, p0, Ld/f$i$a;->a:Ld/f$i;

    iget-object p1, p1, Ld/f$i;->b:Ld/f;

    iget-object v0, p1, Ld/f;->B:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    :cond_0
    iget-object p1, p1, Ld/f;->A:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/View;

    if-eqz p1, :cond_1

    iget-object p1, p0, Ld/f$i$a;->a:Ld/f$i;

    iget-object p1, p1, Ld/f$i;->b:Ld/f;

    iget-object p1, p1, Ld/f;->A:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Ld0/s0;->E(Landroid/view/View;)V

    :cond_1
    :goto_0
    iget-object p1, p0, Ld/f$i$a;->a:Ld/f$i;

    iget-object p1, p1, Ld/f$i;->b:Ld/f;

    iget-object p1, p1, Ld/f;->A:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object p1, p0, Ld/f$i$a;->a:Ld/f$i;

    iget-object p1, p1, Ld/f$i;->b:Ld/f;

    iget-object p1, p1, Ld/f;->D:Ld0/p1;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ld0/p1;->f(Ld0/q1;)Ld0/p1;

    iget-object p1, p0, Ld/f$i$a;->a:Ld/f$i;

    iget-object p1, p1, Ld/f$i;->b:Ld/f;

    iput-object v0, p1, Ld/f;->D:Ld0/p1;

    iget-object p1, p1, Ld/f;->G:Landroid/view/ViewGroup;

    invoke-static {p1}, Ld0/s0;->E(Landroid/view/View;)V

    return-void
.end method
