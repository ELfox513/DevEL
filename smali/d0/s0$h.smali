.class public Ld0/s0$h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld0/s0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation


# direct methods
.method public static a(Landroid/view/WindowInsets;Landroid/view/View;)V
    .locals 1

    sget v0, Lq/b;->R:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View$OnApplyWindowInsetsListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p0}, Landroid/view/View$OnApplyWindowInsetsListener;->onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    :cond_0
    return-void
.end method

.method public static b(Landroid/view/View;Ld0/t1;Landroid/graphics/Rect;)Ld0/t1;
    .locals 1

    invoke-virtual {p1}, Ld0/t1;->s()Landroid/view/WindowInsets;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0, v0, p2}, Ld0/x0;->a(Landroid/view/View;Landroid/view/WindowInsets;Landroid/graphics/Rect;)Landroid/view/WindowInsets;

    move-result-object p1

    invoke-static {p1, p0}, Ld0/t1;->u(Landroid/view/WindowInsets;Landroid/view/View;)Ld0/t1;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    return-object p1
.end method

.method public static c(Landroid/view/View;)Ld0/t1;
    .locals 0

    invoke-static {p0}, Ld0/t1$a;->a(Landroid/view/View;)Ld0/t1;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/view/View;Ld0/w;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_0

    sget v0, Lq/b;->L:I

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    if-nez p1, :cond_1

    sget p1, Lq/b;->R:I

    invoke-virtual {p0, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View$OnApplyWindowInsetsListener;

    invoke-static {p0, p1}, Ld0/y0;->a(Landroid/view/View;Landroid/view/View$OnApplyWindowInsetsListener;)V

    return-void

    :cond_1
    new-instance v0, Ld0/s0$h$a;

    invoke-direct {v0, p0, p1}, Ld0/s0$h$a;-><init>(Landroid/view/View;Ld0/w;)V

    invoke-static {p0, v0}, Ld0/y0;->a(Landroid/view/View;Landroid/view/View$OnApplyWindowInsetsListener;)V

    return-void
.end method
