.class public Lj/v$a;
.super Lj/x0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj/v;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILandroid/content/res/Resources$Theme;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic u:Lj/v$e;

.field public final synthetic v:Lj/v;


# direct methods
.method public constructor <init>(Lj/v;Landroid/view/View;Lj/v$e;)V
    .locals 0

    iput-object p1, p0, Lj/v$a;->v:Lj/v;

    iput-object p3, p0, Lj/v$a;->u:Lj/v$e;

    invoke-direct {p0, p2}, Lj/x0;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public b()Li/g;
    .locals 1

    iget-object v0, p0, Lj/v$a;->u:Lj/v$e;

    return-object v0
.end method

.method public c()Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SyntheticAccessor"
        }
    .end annotation

    iget-object v0, p0, Lj/v$a;->v:Lj/v;

    invoke-virtual {v0}, Lj/v;->getInternalPopup()Lj/v$g;

    move-result-object v0

    invoke-interface {v0}, Lj/v$g;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lj/v$a;->v:Lj/v;

    invoke-virtual {v0}, Lj/v;->b()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
