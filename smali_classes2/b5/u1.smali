.class public final Lb5/u1;
.super Lb5/n2;
.source "SourceFile"


# instance fields
.field public final synthetic p:Landroid/os/Bundle;

.field public final synthetic q:Lb5/y2;


# direct methods
.method public constructor <init>(Lb5/y2;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lb5/u1;->q:Lb5/y2;

    iput-object p2, p0, Lb5/u1;->p:Landroid/os/Bundle;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lb5/n2;-><init>(Lb5/y2;Z)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lb5/u1;->q:Lb5/y2;

    invoke-static {v0}, Lb5/y2;->s(Lb5/y2;)Lb5/f1;

    move-result-object v0

    invoke-static {v0}, Lx3/q;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb5/f1;

    iget-object v1, p0, Lb5/u1;->p:Landroid/os/Bundle;

    iget-wide v2, p0, Lb5/n2;->a:J

    invoke-interface {v0, v1, v2, v3}, Lb5/f1;->setConsent(Landroid/os/Bundle;J)V

    return-void
.end method
