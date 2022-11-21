.class public Ld0/p1$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld0/p1;->i(Ld0/s1;)Ld0/p1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld0/s1;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Ld0/p1;


# direct methods
.method public constructor <init>(Ld0/p1;Ld0/s1;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Ld0/p1$b;->c:Ld0/p1;

    iput-object p2, p0, Ld0/p1$b;->a:Ld0/s1;

    iput-object p3, p0, Ld0/p1$b;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object p1, p0, Ld0/p1$b;->a:Ld0/s1;

    iget-object v0, p0, Ld0/p1$b;->b:Landroid/view/View;

    invoke-interface {p1, v0}, Ld0/s1;->a(Landroid/view/View;)V

    return-void
.end method
