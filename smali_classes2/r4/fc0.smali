.class public final Lr4/fc0;
.super Lr4/nb0;
.source "SourceFile"


# instance fields
.field public final a:Ld3/k;


# direct methods
.method public constructor <init>(Ld3/k;)V
    .locals 0

    invoke-direct {p0}, Lr4/nb0;-><init>()V

    iput-object p1, p0, Lr4/fc0;->a:Ld3/k;

    return-void
.end method


# virtual methods
.method public final c()Lf4/a;
    .locals 1

    iget-object v0, p0, Lr4/fc0;->a:Ld3/k;

    invoke-interface {v0}, Ld3/g;->b()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lf4/b;->L0(Ljava/lang/Object;)Lf4/a;

    move-result-object v0

    return-object v0
.end method

.method public final d()Z
    .locals 1

    iget-object v0, p0, Lr4/fc0;->a:Ld3/k;

    invoke-interface {v0}, Ld3/k;->a()Z

    move-result v0

    return v0
.end method
