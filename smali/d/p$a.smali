.class public Ld/p$a;
.super Ld0/r1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld/p;


# direct methods
.method public constructor <init>(Ld/p;)V
    .locals 0

    iput-object p1, p0, Ld/p$a;->a:Ld/p;

    invoke-direct {p0}, Ld0/r1;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Ld/p$a;->a:Ld/p;

    iget-boolean v0, p1, Ld/p;->t:Z

    if-eqz v0, :cond_0

    iget-object p1, p1, Ld/p;->h:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    iget-object p1, p0, Ld/p$a;->a:Ld/p;

    iget-object p1, p1, Ld/p;->e:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    iget-object p1, p0, Ld/p$a;->a:Ld/p;

    iget-object p1, p1, Ld/p;->e:Landroidx/appcompat/widget/ActionBarContainer;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setVisibility(I)V

    iget-object p1, p0, Ld/p$a;->a:Ld/p;

    iget-object p1, p1, Ld/p;->e:Landroidx/appcompat/widget/ActionBarContainer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setTransitioning(Z)V

    iget-object p1, p0, Ld/p$a;->a:Ld/p;

    const/4 v0, 0x0

    iput-object v0, p1, Ld/p;->y:Lh/h;

    invoke-virtual {p1}, Ld/p;->w()V

    iget-object p1, p0, Ld/p$a;->a:Ld/p;

    iget-object p1, p1, Ld/p;->d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz p1, :cond_1

    invoke-static {p1}, Ld0/s0;->E(Landroid/view/View;)V

    :cond_1
    return-void
.end method
