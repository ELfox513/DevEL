.class public Ld0/p1$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld0/p1;->g(Landroid/view/View;Ld0/q1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld0/q1;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Ld0/p1;


# direct methods
.method public constructor <init>(Ld0/p1;Ld0/q1;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Ld0/p1$a;->c:Ld0/p1;

    iput-object p2, p0, Ld0/p1$a;->a:Ld0/q1;

    iput-object p3, p0, Ld0/p1$a;->b:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Ld0/p1$a;->a:Ld0/q1;

    iget-object v0, p0, Ld0/p1$a;->b:Landroid/view/View;

    invoke-interface {p1, v0}, Ld0/q1;->a(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Ld0/p1$a;->a:Ld0/q1;

    iget-object v0, p0, Ld0/p1$a;->b:Landroid/view/View;

    invoke-interface {p1, v0}, Ld0/q1;->b(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Ld0/p1$a;->a:Ld0/q1;

    iget-object v0, p0, Ld0/p1$a;->b:Landroid/view/View;

    invoke-interface {p1, v0}, Ld0/q1;->c(Landroid/view/View;)V

    return-void
.end method
