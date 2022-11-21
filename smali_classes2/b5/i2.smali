.class public final Lb5/i2;
.super Lb5/n2;
.source "SourceFile"


# instance fields
.field public final synthetic p:Ljava/lang/String;

.field public final synthetic q:Lb5/b1;

.field public final synthetic r:Lb5/y2;


# direct methods
.method public constructor <init>(Lb5/y2;Ljava/lang/String;Lb5/b1;)V
    .locals 0

    iput-object p1, p0, Lb5/i2;->r:Lb5/y2;

    iput-object p2, p0, Lb5/i2;->p:Ljava/lang/String;

    iput-object p3, p0, Lb5/i2;->q:Lb5/b1;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lb5/n2;-><init>(Lb5/y2;Z)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lb5/i2;->r:Lb5/y2;

    invoke-static {v0}, Lb5/y2;->s(Lb5/y2;)Lb5/f1;

    move-result-object v0

    invoke-static {v0}, Lx3/q;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb5/f1;

    iget-object v1, p0, Lb5/i2;->p:Ljava/lang/String;

    iget-object v2, p0, Lb5/i2;->q:Lb5/b1;

    invoke-interface {v0, v1, v2}, Lb5/f1;->getMaxUserProperties(Ljava/lang/String;Lb5/i1;)V

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lb5/i2;->q:Lb5/b1;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lb5/b1;->C0(Landroid/os/Bundle;)V

    return-void
.end method
