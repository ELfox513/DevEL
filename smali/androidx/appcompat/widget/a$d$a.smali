.class public Landroidx/appcompat/widget/a$d$a;
.super Lj/x0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/a$d;-><init>(Landroidx/appcompat/widget/a;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic u:Landroidx/appcompat/widget/a;

.field public final synthetic v:Landroidx/appcompat/widget/a$d;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/a$d;Landroid/view/View;Landroidx/appcompat/widget/a;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/a$d$a;->v:Landroidx/appcompat/widget/a$d;

    iput-object p3, p0, Landroidx/appcompat/widget/a$d$a;->u:Landroidx/appcompat/widget/a;

    invoke-direct {p0, p2}, Lj/x0;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public b()Li/g;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/a$d$a;->v:Landroidx/appcompat/widget/a$d;

    iget-object v0, v0, Landroidx/appcompat/widget/a$d;->d:Landroidx/appcompat/widget/a;

    iget-object v0, v0, Landroidx/appcompat/widget/a;->J:Landroidx/appcompat/widget/a$e;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/h;->c()Li/d;

    move-result-object v0

    return-object v0
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/a$d$a;->v:Landroidx/appcompat/widget/a$d;

    iget-object v0, v0, Landroidx/appcompat/widget/a$d;->d:Landroidx/appcompat/widget/a;

    invoke-virtual {v0}, Landroidx/appcompat/widget/a;->K()Z

    const/4 v0, 0x1

    return v0
.end method

.method public d()Z
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/widget/a$d$a;->v:Landroidx/appcompat/widget/a$d;

    iget-object v0, v0, Landroidx/appcompat/widget/a$d;->d:Landroidx/appcompat/widget/a;

    iget-object v1, v0, Landroidx/appcompat/widget/a;->L:Landroidx/appcompat/widget/a$c;

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Landroidx/appcompat/widget/a;->B()Z

    const/4 v0, 0x1

    return v0
.end method
