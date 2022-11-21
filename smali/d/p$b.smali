.class public Ld/p$b;
.super Ld0/r1;
.source "SourceFile"


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

    iput-object p1, p0, Ld/p$b;->a:Ld/p;

    invoke-direct {p0}, Ld0/r1;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Ld/p$b;->a:Ld/p;

    const/4 v0, 0x0

    iput-object v0, p1, Ld/p;->y:Lh/h;

    iget-object p1, p1, Ld/p;->e:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method
