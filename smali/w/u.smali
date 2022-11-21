.class public Lw/u;
.super Lw/s;
.source "SourceFile"


# static fields
.field public static s:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0, p1}, Lw/s;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lw/u;->g()V

    return-void
.end method

.method public constructor <init>(Lw/v;Landroid/content/res/Resources;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lw/s;-><init>(Lw/v;Landroid/content/res/Resources;)V

    invoke-virtual {p0}, Lw/u;->g()V

    return-void
.end method


# virtual methods
.method public c()Z
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lw/s;->q:Landroid/graphics/drawable/Drawable;

    instance-of v2, v0, Landroid/graphics/drawable/GradientDrawable;

    if-nez v2, :cond_0

    instance-of v2, v0, Landroid/graphics/drawable/DrawableContainer;

    if-nez v2, :cond_0

    instance-of v2, v0, Landroid/graphics/drawable/InsetDrawable;

    if-nez v2, :cond_0

    instance-of v0, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public final g()V
    .locals 3

    sget-object v0, Lw/u;->s:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    :try_start_0
    const-class v0, Landroid/graphics/drawable/Drawable;

    const-string v1, "isProjected"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lw/u;->s:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "WrappedDrawableApi21"

    const-string v2, "Failed to retrieve Drawable#isProjected() method"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public getDirtyBounds()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lw/s;->q:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lw/t;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 1

    iget-object v0, p0, Lw/s;->q:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Lf/h;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/Outline;)V

    return-void
.end method

.method public isProjected()Z
    .locals 4

    iget-object v0, p0, Lw/s;->q:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v2, Lw/u;->s:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_0

    :try_start_0
    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v2, "WrappedDrawableApi21"

    const-string v3, "Error calling Drawable#isProjected() method"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return v1
.end method

.method public setHotspot(FF)V
    .locals 1

    iget-object v0, p0, Lw/s;->q:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1, p2}, Lw/d;->a(Landroid/graphics/drawable/Drawable;FF)V

    return-void
.end method

.method public setHotspotBounds(IIII)V
    .locals 1

    iget-object v0, p0, Lw/s;->q:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1, p2, p3, p4}, Lf/g;->a(Landroid/graphics/drawable/Drawable;IIII)V

    return-void
.end method

.method public setState([I)Z
    .locals 0

    invoke-super {p0, p1}, Lw/s;->setState([I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setTint(I)V
    .locals 1

    invoke-virtual {p0}, Lw/u;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lw/s;->setTint(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lw/s;->q:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Lw/b;->a(Landroid/graphics/drawable/Drawable;I)V

    :goto_0
    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    invoke-virtual {p0}, Lw/u;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lw/s;->setTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lw/s;->q:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Lw/i;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :goto_0
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    invoke-virtual {p0}, Lw/u;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lw/s;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lw/s;->q:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Lw/a;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :goto_0
    return-void
.end method
