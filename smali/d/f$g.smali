.class public Ld/f$g;
.super Ld0/r1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/f;->G0(Lh/b$a;)Lh/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld/f;


# direct methods
.method public constructor <init>(Ld/f;)V
    .locals 0

    iput-object p1, p0, Ld/f$g;->a:Ld/f;

    invoke-direct {p0}, Ld0/r1;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Ld/f$g;->a:Ld/f;

    iget-object p1, p1, Ld/f;->A:Landroidx/appcompat/widget/ActionBarContextView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Ld/f$g;->a:Ld/f;

    iget-object p1, p1, Ld/f;->D:Ld0/p1;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ld0/p1;->f(Ld0/q1;)Ld0/p1;

    iget-object p1, p0, Ld/f$g;->a:Ld/f;

    iput-object v0, p1, Ld/f;->D:Ld0/p1;

    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Ld/f$g;->a:Ld/f;

    iget-object p1, p1, Ld/f;->A:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    iget-object p1, p0, Ld/f$g;->a:Ld/f;

    iget-object p1, p1, Ld/f;->A:Landroidx/appcompat/widget/ActionBarContextView;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    iget-object p1, p0, Ld/f$g;->a:Ld/f;

    iget-object p1, p1, Ld/f;->A:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/View;

    if-eqz p1, :cond_0

    iget-object p1, p0, Ld/f$g;->a:Ld/f;

    iget-object p1, p1, Ld/f;->A:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Ld0/s0;->E(Landroid/view/View;)V

    :cond_0
    return-void
.end method
