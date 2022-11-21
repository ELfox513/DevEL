.class public Ld/f$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "i"
.end annotation


# instance fields
.field public a:Lh/b$a;

.field public final synthetic b:Ld/f;


# direct methods
.method public constructor <init>(Ld/f;Lh/b$a;)V
    .locals 0

    iput-object p1, p0, Ld/f$i;->b:Ld/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ld/f$i;->a:Lh/b$a;

    return-void
.end method


# virtual methods
.method public a(Lh/b;Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Ld/f$i;->a:Lh/b$a;

    invoke-interface {v0, p1, p2}, Lh/b$a;->a(Lh/b;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public b(Lh/b;Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Ld/f$i;->b:Ld/f;

    iget-object v0, v0, Ld/f;->G:Landroid/view/ViewGroup;

    invoke-static {v0}, Ld0/s0;->E(Landroid/view/View;)V

    iget-object v0, p0, Ld/f$i;->a:Lh/b$a;

    invoke-interface {v0, p1, p2}, Lh/b$a;->b(Lh/b;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public c(Lh/b;Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Ld/f$i;->a:Lh/b$a;

    invoke-interface {v0, p1, p2}, Lh/b$a;->c(Lh/b;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public d(Lh/b;)V
    .locals 2

    iget-object v0, p0, Ld/f$i;->a:Lh/b$a;

    invoke-interface {v0, p1}, Lh/b$a;->d(Lh/b;)V

    iget-object p1, p0, Ld/f$i;->b:Ld/f;

    iget-object v0, p1, Ld/f;->B:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object p1, p1, Ld/f;->q:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Ld/f$i;->b:Ld/f;

    iget-object v0, v0, Ld/f;->C:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object p1, p0, Ld/f$i;->b:Ld/f;

    iget-object v0, p1, Ld/f;->A:Landroidx/appcompat/widget/ActionBarContextView;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ld/f;->V()V

    iget-object p1, p0, Ld/f$i;->b:Ld/f;

    iget-object v0, p1, Ld/f;->A:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-static {v0}, Ld0/s0;->b(Landroid/view/View;)Ld0/p1;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ld0/p1;->a(F)Ld0/p1;

    move-result-object v0

    iput-object v0, p1, Ld/f;->D:Ld0/p1;

    iget-object p1, p0, Ld/f$i;->b:Ld/f;

    iget-object p1, p1, Ld/f;->D:Ld0/p1;

    new-instance v0, Ld/f$i$a;

    invoke-direct {v0, p0}, Ld/f$i$a;-><init>(Ld/f$i;)V

    invoke-virtual {p1, v0}, Ld0/p1;->f(Ld0/q1;)Ld0/p1;

    :cond_1
    iget-object p1, p0, Ld/f$i;->b:Ld/f;

    iget-object v0, p1, Ld/f;->s:Ld/c;

    if-eqz v0, :cond_2

    iget-object p1, p1, Ld/f;->z:Lh/b;

    invoke-interface {v0, p1}, Ld/c;->d(Lh/b;)V

    :cond_2
    iget-object p1, p0, Ld/f$i;->b:Ld/f;

    const/4 v0, 0x0

    iput-object v0, p1, Ld/f;->z:Lh/b;

    iget-object p1, p1, Ld/f;->G:Landroid/view/ViewGroup;

    invoke-static {p1}, Ld0/s0;->E(Landroid/view/View;)V

    return-void
.end method
