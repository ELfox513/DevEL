.class public Ld/f$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


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

    iput-object p1, p0, Ld/f$f;->a:Ld/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Ld/f$f;->a:Ld/f;

    iget-object v1, v0, Ld/f;->B:Landroid/widget/PopupWindow;

    iget-object v0, v0, Ld/f;->A:Landroidx/appcompat/widget/ActionBarContextView;

    const/16 v2, 0x37

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    iget-object v0, p0, Ld/f$f;->a:Ld/f;

    invoke-virtual {v0}, Ld/f;->V()V

    iget-object v0, p0, Ld/f$f;->a:Ld/f;

    invoke-virtual {v0}, Ld/f;->D0()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    iget-object v0, p0, Ld/f$f;->a:Ld/f;

    iget-object v0, v0, Ld/f;->A:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Ld/f$f;->a:Ld/f;

    iget-object v2, v0, Ld/f;->A:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-static {v2}, Ld0/s0;->b(Landroid/view/View;)Ld0/p1;

    move-result-object v2

    invoke-virtual {v2, v1}, Ld0/p1;->a(F)Ld0/p1;

    move-result-object v1

    iput-object v1, v0, Ld/f;->D:Ld0/p1;

    iget-object v0, p0, Ld/f$f;->a:Ld/f;

    iget-object v0, v0, Ld/f;->D:Ld0/p1;

    new-instance v1, Ld/f$f$a;

    invoke-direct {v1, p0}, Ld/f$f$a;-><init>(Ld/f$f;)V

    invoke-virtual {v0, v1}, Ld0/p1;->f(Ld0/q1;)Ld0/p1;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ld/f$f;->a:Ld/f;

    iget-object v0, v0, Ld/f;->A:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Ld/f$f;->a:Ld/f;

    iget-object v0, v0, Ld/f;->A:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    :goto_0
    return-void
.end method
