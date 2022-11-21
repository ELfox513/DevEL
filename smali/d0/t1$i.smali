.class public Ld0/t1$i;
.super Ld0/t1$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld0/t1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "i"
.end annotation


# direct methods
.method public constructor <init>(Ld0/t1;Landroid/view/WindowInsets;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ld0/t1$h;-><init>(Ld0/t1;Landroid/view/WindowInsets;)V

    return-void
.end method

.method public constructor <init>(Ld0/t1;Ld0/t1$i;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ld0/t1$h;-><init>(Ld0/t1;Ld0/t1$h;)V

    return-void
.end method


# virtual methods
.method public a()Ld0/t1;
    .locals 1

    iget-object v0, p0, Ld0/t1$g;->c:Landroid/view/WindowInsets;

    invoke-static {v0}, Ld0/b2;->a(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    invoke-static {v0}, Ld0/t1;->t(Landroid/view/WindowInsets;)Ld0/t1;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ld0/t1$i;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Ld0/t1$i;

    iget-object v1, p0, Ld0/t1$g;->c:Landroid/view/WindowInsets;

    iget-object v3, p1, Ld0/t1$g;->c:Landroid/view/WindowInsets;

    invoke-static {v1, v3}, Lc0/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Ld0/t1$g;->g:Lv/b;

    iget-object p1, p1, Ld0/t1$g;->g:Lv/b;

    invoke-static {v1, p1}, Lc0/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()Ld0/c;
    .locals 1

    iget-object v0, p0, Ld0/t1$g;->c:Landroid/view/WindowInsets;

    invoke-static {v0}, Ld0/a2;->a(Landroid/view/WindowInsets;)Landroid/view/DisplayCutout;

    move-result-object v0

    invoke-static {v0}, Ld0/c;->e(Ljava/lang/Object;)Ld0/c;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Ld0/t1$g;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->hashCode()I

    move-result v0

    return v0
.end method
