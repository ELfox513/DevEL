.class public Ld0/s0$h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld0/s0$h;->d(Landroid/view/View;Ld0/w;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:Ld0/t1;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Ld0/w;


# direct methods
.method public constructor <init>(Landroid/view/View;Ld0/w;)V
    .locals 0

    iput-object p1, p0, Ld0/s0$h$a;->b:Landroid/view/View;

    iput-object p2, p0, Ld0/s0$h$a;->c:Ld0/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Ld0/s0$h$a;->a:Ld0/t1;

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 4

    invoke-static {p2, p1}, Ld0/t1;->u(Landroid/view/WindowInsets;Landroid/view/View;)Ld0/t1;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-ge v1, v2, :cond_0

    iget-object v3, p0, Ld0/s0$h$a;->b:Landroid/view/View;

    invoke-static {p2, v3}, Ld0/s0$h;->a(Landroid/view/WindowInsets;Landroid/view/View;)V

    iget-object p2, p0, Ld0/s0$h$a;->a:Ld0/t1;

    invoke-virtual {v0, p2}, Ld0/t1;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Ld0/s0$h$a;->c:Ld0/w;

    invoke-interface {p2, p1, v0}, Ld0/w;->a(Landroid/view/View;Ld0/t1;)Ld0/t1;

    move-result-object p1

    invoke-virtual {p1}, Ld0/t1;->s()Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1

    :cond_0
    iput-object v0, p0, Ld0/s0$h$a;->a:Ld0/t1;

    iget-object p2, p0, Ld0/s0$h$a;->c:Ld0/w;

    invoke-interface {p2, p1, v0}, Ld0/w;->a(Landroid/view/View;Ld0/t1;)Ld0/t1;

    move-result-object p2

    if-lt v1, v2, :cond_1

    invoke-virtual {p2}, Ld0/t1;->s()Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-static {p1}, Ld0/s0;->E(Landroid/view/View;)V

    invoke-virtual {p2}, Ld0/t1;->s()Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method
