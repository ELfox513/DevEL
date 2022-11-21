.class public Ld0/s0$i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld0/s0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "i"
.end annotation


# direct methods
.method public static a(Landroid/view/View;)Ld0/t1;
    .locals 1

    invoke-static {p0}, Ld0/z0;->a(Landroid/view/View;)Landroid/view/WindowInsets;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {v0}, Ld0/t1;->t(Landroid/view/WindowInsets;)Ld0/t1;

    move-result-object v0

    invoke-virtual {v0, v0}, Ld0/t1;->q(Ld0/t1;)V

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0}, Ld0/t1;->d(Landroid/view/View;)V

    return-object v0
.end method
