.class public Ld0/t1$j;
.super Ld0/t1$i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld0/t1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "j"
.end annotation


# instance fields
.field public o:Lv/b;

.field public p:Lv/b;

.field public q:Lv/b;


# direct methods
.method public constructor <init>(Ld0/t1;Landroid/view/WindowInsets;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ld0/t1$i;-><init>(Ld0/t1;Landroid/view/WindowInsets;)V

    const/4 p1, 0x0

    iput-object p1, p0, Ld0/t1$j;->o:Lv/b;

    iput-object p1, p0, Ld0/t1$j;->p:Lv/b;

    iput-object p1, p0, Ld0/t1$j;->q:Lv/b;

    return-void
.end method

.method public constructor <init>(Ld0/t1;Ld0/t1$j;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ld0/t1$i;-><init>(Ld0/t1;Ld0/t1$i;)V

    const/4 p1, 0x0

    iput-object p1, p0, Ld0/t1$j;->o:Lv/b;

    iput-object p1, p0, Ld0/t1$j;->p:Lv/b;

    iput-object p1, p0, Ld0/t1$j;->q:Lv/b;

    return-void
.end method


# virtual methods
.method public h()Lv/b;
    .locals 1

    iget-object v0, p0, Ld0/t1$j;->p:Lv/b;

    if-nez v0, :cond_0

    iget-object v0, p0, Ld0/t1$g;->c:Landroid/view/WindowInsets;

    invoke-static {v0}, Ld0/e2;->a(Landroid/view/WindowInsets;)Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0}, Lv/b;->d(Landroid/graphics/Insets;)Lv/b;

    move-result-object v0

    iput-object v0, p0, Ld0/t1$j;->p:Lv/b;

    :cond_0
    iget-object v0, p0, Ld0/t1$j;->p:Lv/b;

    return-object v0
.end method

.method public j()Lv/b;
    .locals 1

    iget-object v0, p0, Ld0/t1$j;->o:Lv/b;

    if-nez v0, :cond_0

    iget-object v0, p0, Ld0/t1$g;->c:Landroid/view/WindowInsets;

    invoke-static {v0}, Ld0/c2;->a(Landroid/view/WindowInsets;)Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0}, Lv/b;->d(Landroid/graphics/Insets;)Lv/b;

    move-result-object v0

    iput-object v0, p0, Ld0/t1$j;->o:Lv/b;

    :cond_0
    iget-object v0, p0, Ld0/t1$j;->o:Lv/b;

    return-object v0
.end method

.method public l()Lv/b;
    .locals 1

    iget-object v0, p0, Ld0/t1$j;->q:Lv/b;

    if-nez v0, :cond_0

    iget-object v0, p0, Ld0/t1$g;->c:Landroid/view/WindowInsets;

    invoke-static {v0}, Ld0/d2;->a(Landroid/view/WindowInsets;)Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0}, Lv/b;->d(Landroid/graphics/Insets;)Lv/b;

    move-result-object v0

    iput-object v0, p0, Ld0/t1$j;->q:Lv/b;

    :cond_0
    iget-object v0, p0, Ld0/t1$j;->q:Lv/b;

    return-object v0
.end method

.method public m(IIII)Ld0/t1;
    .locals 1

    iget-object v0, p0, Ld0/t1$g;->c:Landroid/view/WindowInsets;

    invoke-static {v0, p1, p2, p3, p4}, Ld0/f2;->a(Landroid/view/WindowInsets;IIII)Landroid/view/WindowInsets;

    move-result-object p1

    invoke-static {p1}, Ld0/t1;->t(Landroid/view/WindowInsets;)Ld0/t1;

    move-result-object p1

    return-object p1
.end method

.method public s(Lv/b;)V
    .locals 0

    return-void
.end method
