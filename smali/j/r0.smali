.class public Lj/r0;
.super Landroid/widget/ToggleButton;
.source "SourceFile"


# instance fields
.field public final a:Lj/j0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101004b

    invoke-direct {p0, p1, p2, v0}, Lj/r0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p0, p1}, Lj/o1;->a(Landroid/view/View;Landroid/content/Context;)V

    new-instance p1, Lj/j0;

    invoke-direct {p1, p0}, Lj/j0;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Lj/r0;->a:Lj/j0;

    invoke-virtual {p1, p2, p3}, Lj/j0;->m(Landroid/util/AttributeSet;I)V

    return-void
.end method
