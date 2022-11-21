.class public Ld0/t1$h;
.super Ld0/t1$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld0/t1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation


# instance fields
.field public n:Lv/b;


# direct methods
.method public constructor <init>(Ld0/t1;Landroid/view/WindowInsets;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ld0/t1$g;-><init>(Ld0/t1;Landroid/view/WindowInsets;)V

    const/4 p1, 0x0

    iput-object p1, p0, Ld0/t1$h;->n:Lv/b;

    return-void
.end method

.method public constructor <init>(Ld0/t1;Ld0/t1$h;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ld0/t1$g;-><init>(Ld0/t1;Ld0/t1$g;)V

    const/4 p1, 0x0

    iput-object p1, p0, Ld0/t1$h;->n:Lv/b;

    iget-object p1, p2, Ld0/t1$h;->n:Lv/b;

    iput-object p1, p0, Ld0/t1$h;->n:Lv/b;

    return-void
.end method


# virtual methods
.method public b()Ld0/t1;
    .locals 1

    iget-object v0, p0, Ld0/t1$g;->c:Landroid/view/WindowInsets;

    invoke-static {v0}, Ld0/y1;->a(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    invoke-static {v0}, Ld0/t1;->t(Landroid/view/WindowInsets;)Ld0/t1;

    move-result-object v0

    return-object v0
.end method

.method public c()Ld0/t1;
    .locals 1

    iget-object v0, p0, Ld0/t1$g;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-static {v0}, Ld0/t1;->t(Landroid/view/WindowInsets;)Ld0/t1;

    move-result-object v0

    return-object v0
.end method

.method public final i()Lv/b;
    .locals 4

    iget-object v0, p0, Ld0/t1$h;->n:Lv/b;

    if-nez v0, :cond_0

    iget-object v0, p0, Ld0/t1$g;->c:Landroid/view/WindowInsets;

    invoke-static {v0}, Ld0/u1;->a(Landroid/view/WindowInsets;)I

    move-result v0

    iget-object v1, p0, Ld0/t1$g;->c:Landroid/view/WindowInsets;

    invoke-static {v1}, Ld0/v1;->a(Landroid/view/WindowInsets;)I

    move-result v1

    iget-object v2, p0, Ld0/t1$g;->c:Landroid/view/WindowInsets;

    invoke-static {v2}, Ld0/w1;->a(Landroid/view/WindowInsets;)I

    move-result v2

    iget-object v3, p0, Ld0/t1$g;->c:Landroid/view/WindowInsets;

    invoke-static {v3}, Ld0/x1;->a(Landroid/view/WindowInsets;)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lv/b;->b(IIII)Lv/b;

    move-result-object v0

    iput-object v0, p0, Ld0/t1$h;->n:Lv/b;

    :cond_0
    iget-object v0, p0, Ld0/t1$h;->n:Lv/b;

    return-object v0
.end method

.method public n()Z
    .locals 1

    iget-object v0, p0, Ld0/t1$g;->c:Landroid/view/WindowInsets;

    invoke-static {v0}, Ld0/z1;->a(Landroid/view/WindowInsets;)Z

    move-result v0

    return v0
.end method

.method public s(Lv/b;)V
    .locals 0

    iput-object p1, p0, Ld0/t1$h;->n:Lv/b;

    return-void
.end method
