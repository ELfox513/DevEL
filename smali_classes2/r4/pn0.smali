.class public final Lr4/pn0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lr4/tn0;


# direct methods
.method public constructor <init>(Lr4/tn0;)V
    .locals 0

    iput-object p1, p0, Lr4/pn0;->a:Lr4/tn0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lr4/pn0;->a:Lr4/tn0;

    invoke-static {v0}, Lr4/tn0;->I(Lr4/tn0;)Lr4/un0;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lr4/pn0;->a:Lr4/tn0;

    invoke-static {v0}, Lr4/tn0;->J(Lr4/tn0;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lr4/pn0;->a:Lr4/tn0;

    invoke-static {v0}, Lr4/tn0;->I(Lr4/tn0;)Lr4/un0;

    move-result-object v0

    invoke-interface {v0}, Lr4/un0;->i()V

    iget-object v0, p0, Lr4/pn0;->a:Lr4/tn0;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lr4/tn0;->K(Lr4/tn0;Z)Z

    :cond_0
    iget-object v0, p0, Lr4/pn0;->a:Lr4/tn0;

    invoke-static {v0}, Lr4/tn0;->I(Lr4/tn0;)Lr4/un0;

    move-result-object v0

    invoke-interface {v0}, Lr4/un0;->b()V

    :cond_1
    return-void
.end method
