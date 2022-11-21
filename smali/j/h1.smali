.class public Lj/h1;
.super Lj/b1;
.source "SourceFile"

# interfaces
.implements Lj/c1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj/h1$a;
    }
.end annotation


# static fields
.field public static V:Ljava/lang/reflect/Method;


# instance fields
.field public U:Lj/c1;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-gt v0, v1, :cond_0

    const-class v0, Landroid/widget/PopupWindow;

    const-string v1, "setTouchModal"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lj/h1;->V:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "MenuPopupWindow"

    const-string v1, "Could not find method setTouchModal() on PopupWindow. Oh well."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lj/b1;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public M(Ljava/lang/Object;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lj/b1;->Q:Landroid/widget/PopupWindow;

    check-cast p1, Landroid/transition/Transition;

    invoke-static {v0, p1}, Lj/f1;->a(Landroid/widget/PopupWindow;Landroid/transition/Transition;)V

    :cond_0
    return-void
.end method

.method public N(Ljava/lang/Object;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lj/b1;->Q:Landroid/widget/PopupWindow;

    check-cast p1, Landroid/transition/Transition;

    invoke-static {v0, p1}, Lj/e1;->a(Landroid/widget/PopupWindow;Landroid/transition/Transition;)V

    :cond_0
    return-void
.end method

.method public O(Lj/c1;)V
    .locals 0

    iput-object p1, p0, Lj/h1;->U:Lj/c1;

    return-void
.end method

.method public P(Z)V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-gt v0, v1, :cond_0

    sget-object v0, Lj/h1;->V:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v1, p0, Lj/b1;->Q:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "MenuPopupWindow"

    const-string v0, "Could not invoke setTouchModal() on PopupWindow. Oh well."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lj/b1;->Q:Landroid/widget/PopupWindow;

    invoke-static {v0, p1}, Lj/d1;->a(Landroid/widget/PopupWindow;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public c(Landroidx/appcompat/view/menu/e;Landroid/view/MenuItem;)V
    .locals 1

    iget-object v0, p0, Lj/h1;->U:Lj/c1;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lj/c1;->c(Landroidx/appcompat/view/menu/e;Landroid/view/MenuItem;)V

    :cond_0
    return-void
.end method

.method public f(Landroidx/appcompat/view/menu/e;Landroid/view/MenuItem;)V
    .locals 1

    iget-object v0, p0, Lj/h1;->U:Lj/c1;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lj/c1;->f(Landroidx/appcompat/view/menu/e;Landroid/view/MenuItem;)V

    :cond_0
    return-void
.end method

.method public r(Landroid/content/Context;Z)Lj/w0;
    .locals 1

    new-instance v0, Lj/h1$a;

    invoke-direct {v0, p1, p2}, Lj/h1$a;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v0, p0}, Lj/h1$a;->setHoverListener(Lj/c1;)V

    return-object v0
.end method
