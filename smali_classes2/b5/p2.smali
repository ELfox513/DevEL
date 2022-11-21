.class public final Lb5/p2;
.super Lb5/n2;
.source "SourceFile"


# instance fields
.field public final synthetic p:Landroid/os/Bundle;

.field public final synthetic q:Landroid/app/Activity;

.field public final synthetic r:Lb5/x2;


# direct methods
.method public constructor <init>(Lb5/x2;Landroid/os/Bundle;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lb5/p2;->r:Lb5/x2;

    iput-object p2, p0, Lb5/p2;->p:Landroid/os/Bundle;

    iput-object p3, p0, Lb5/p2;->q:Landroid/app/Activity;

    iget-object p1, p1, Lb5/x2;->a:Lb5/y2;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lb5/n2;-><init>(Lb5/y2;Z)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget-object v0, p0, Lb5/p2;->p:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lb5/p2;->p:Landroid/os/Bundle;

    const-string v2, "com.google.app_measurement.screen_service"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lb5/p2;->p:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v3, v1, Landroid/os/Bundle;

    if-eqz v3, :cond_1

    check-cast v1, Landroid/os/Bundle;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    iget-object v1, p0, Lb5/p2;->r:Lb5/x2;

    iget-object v1, v1, Lb5/x2;->a:Lb5/y2;

    invoke-static {v1}, Lb5/y2;->s(Lb5/y2;)Lb5/f1;

    move-result-object v1

    invoke-static {v1}, Lx3/q;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb5/f1;

    iget-object v2, p0, Lb5/p2;->q:Landroid/app/Activity;

    invoke-static {v2}, Lf4/b;->L0(Ljava/lang/Object;)Lf4/a;

    move-result-object v2

    iget-wide v3, p0, Lb5/n2;->b:J

    invoke-interface {v1, v2, v0, v3, v4}, Lb5/f1;->onActivityCreated(Lf4/a;Landroid/os/Bundle;J)V

    return-void
.end method
