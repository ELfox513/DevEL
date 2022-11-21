.class public Ld/p$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld0/s1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld/p;


# direct methods
.method public constructor <init>(Ld/p;)V
    .locals 0

    iput-object p1, p0, Ld/p$c;->a:Ld/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Ld/p$c;->a:Ld/p;

    iget-object p1, p1, Ld/p;->e:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
