.class public final Lb3/v1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)V
    .locals 1

    invoke-static {p0}, Lr4/bm0;->k(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lr4/bm0;->i()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lb3/e1;

    invoke-direct {v0, p0}, Lb3/e1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lb3/d0;->c()Lr4/h83;

    move-result-object p0

    const-string v0, "Updating ad debug logging enablement."

    invoke-static {v0}, Lr4/cm0;->e(Ljava/lang/String;)V

    const-string v0, "AdDebugLogUpdater.updateEnablement"

    invoke-static {p0, v0}, Lr4/tm0;->a(Lr4/h83;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
