.class public final Lb3/u1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/view/View;

.field public b:Landroid/app/Activity;

.field public c:Z

.field public d:Z

.field public e:Z

.field public final f:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb3/u1;->b:Landroid/app/Activity;

    iput-object p2, p0, Lb3/u1;->a:Landroid/view/View;

    iput-object p3, p0, Lb3/u1;->f:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-void
.end method

.method public static h(Landroid/app/Activity;)Landroid/view/ViewTreeObserver;
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lb3/u1;->b:Landroid/app/Activity;

    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb3/u1;->e:Z

    iget-boolean v0, p0, Lb3/u1;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb3/u1;->f()V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb3/u1;->e:Z

    invoke-virtual {p0}, Lb3/u1;->g()V

    return-void
.end method

.method public final d()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb3/u1;->d:Z

    iget-boolean v0, p0, Lb3/u1;->e:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb3/u1;->f()V

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb3/u1;->d:Z

    invoke-virtual {p0}, Lb3/u1;->g()V

    return-void
.end method

.method public final f()V
    .locals 2

    iget-boolean v0, p0, Lb3/u1;->c:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lb3/u1;->b:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lb3/u1;->f:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-static {v0}, Lb3/u1;->h(Landroid/app/Activity;)Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    invoke-static {}, Lz2/t;->A()Lr4/dn0;

    iget-object v0, p0, Lb3/u1;->a:Landroid/view/View;

    iget-object v1, p0, Lb3/u1;->f:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-static {v0, v1}, Lr4/dn0;->a(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb3/u1;->c:Z

    :cond_1
    return-void
.end method

.method public final g()V
    .locals 2

    iget-object v0, p0, Lb3/u1;->b:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lb3/u1;->c:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lb3/u1;->f:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-static {v0}, Lb3/u1;->h(Landroid/app/Activity;)Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lz2/t;->f()Lb3/g;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lb3/u1;->c:Z

    :cond_2
    return-void
.end method
