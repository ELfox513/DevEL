.class public final Lb5/v2;
.super Lb5/n2;
.source "SourceFile"


# instance fields
.field public final synthetic p:Landroid/app/Activity;

.field public final synthetic q:Lb5/b1;

.field public final synthetic r:Lb5/x2;


# direct methods
.method public constructor <init>(Lb5/x2;Landroid/app/Activity;Lb5/b1;)V
    .locals 0

    iput-object p1, p0, Lb5/v2;->r:Lb5/x2;

    iput-object p2, p0, Lb5/v2;->p:Landroid/app/Activity;

    iput-object p3, p0, Lb5/v2;->q:Lb5/b1;

    iget-object p1, p1, Lb5/x2;->a:Lb5/y2;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lb5/n2;-><init>(Lb5/y2;Z)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget-object v0, p0, Lb5/v2;->r:Lb5/x2;

    iget-object v0, v0, Lb5/x2;->a:Lb5/y2;

    invoke-static {v0}, Lb5/y2;->s(Lb5/y2;)Lb5/f1;

    move-result-object v0

    invoke-static {v0}, Lx3/q;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb5/f1;

    iget-object v1, p0, Lb5/v2;->p:Landroid/app/Activity;

    invoke-static {v1}, Lf4/b;->L0(Ljava/lang/Object;)Lf4/a;

    move-result-object v1

    iget-object v2, p0, Lb5/v2;->q:Lb5/b1;

    iget-wide v3, p0, Lb5/n2;->b:J

    invoke-interface {v0, v1, v2, v3, v4}, Lb5/f1;->onActivitySaveInstanceState(Lf4/a;Lb5/i1;J)V

    return-void
.end method
