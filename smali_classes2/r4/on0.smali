.class public final Lr4/on0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lr4/tn0;


# direct methods
.method public constructor <init>(Lr4/tn0;)V
    .locals 0

    iput-object p1, p0, Lr4/on0;->a:Lr4/tn0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lr4/on0;->a:Lr4/tn0;

    invoke-static {v0}, Lr4/tn0;->I(Lr4/tn0;)Lr4/un0;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr4/on0;->a:Lr4/tn0;

    invoke-static {v0}, Lr4/tn0;->I(Lr4/tn0;)Lr4/un0;

    move-result-object v0

    invoke-interface {v0}, Lr4/un0;->e()V

    iget-object v0, p0, Lr4/on0;->a:Lr4/tn0;

    invoke-static {v0}, Lr4/tn0;->I(Lr4/tn0;)Lr4/un0;

    move-result-object v0

    invoke-interface {v0}, Lr4/un0;->f()V

    :cond_0
    return-void
.end method
