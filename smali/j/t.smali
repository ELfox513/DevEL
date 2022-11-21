.class public Lj/t;
.super Landroid/widget/SeekBar;
.source "SourceFile"


# instance fields
.field public final a:Lj/u;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Lc/a;->H:I

    invoke-direct {p0, p1, p2, v0}, Lj/t;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p0, p1}, Lj/o1;->a(Landroid/view/View;Landroid/content/Context;)V

    new-instance p1, Lj/u;

    invoke-direct {p1, p0}, Lj/u;-><init>(Landroid/widget/SeekBar;)V

    iput-object p1, p0, Lj/t;->a:Lj/u;

    invoke-virtual {p1, p2, p3}, Lj/u;->c(Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public drawableStateChanged()V
    .locals 1

    invoke-super {p0}, Landroid/widget/SeekBar;->drawableStateChanged()V

    iget-object v0, p0, Lj/t;->a:Lj/u;

    invoke-virtual {v0}, Lj/u;->h()V

    return-void
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    invoke-super {p0}, Landroid/widget/SeekBar;->jumpDrawablesToCurrentState()V

    iget-object v0, p0, Lj/t;->a:Lj/u;

    invoke-virtual {v0}, Lj/u;->i()V

    return-void
.end method

.method public declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lj/t;->a:Lj/u;

    invoke-virtual {v0, p1}, Lj/u;->g(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
