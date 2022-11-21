.class public final Lr4/sy0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/e81;


# instance fields
.field public final a:Lr4/zp2;


# direct methods
.method public constructor <init>(Lr4/zp2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/sy0;->a:Lr4/zp2;

    return-void
.end method


# virtual methods
.method public final e0(Landroid/content/Context;)V
    .locals 1

    :try_start_0
    iget-object p1, p0, Lr4/sy0;->a:Lr4/zp2;

    invoke-virtual {p1}, Lr4/zp2;->l()V
    :try_end_0
    .catch Lr4/mp2; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Cannot invoke onPause for the mediation adapter."

    invoke-static {v0, p1}, Lr4/cm0;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final o(Landroid/content/Context;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lr4/sy0;->a:Lr4/zp2;

    invoke-virtual {v0}, Lr4/zp2;->m()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lr4/sy0;->a:Lr4/zp2;

    invoke-virtual {v0, p1}, Lr4/zp2;->s(Landroid/content/Context;)V
    :try_end_0
    .catch Lr4/mp2; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    const-string v0, "Cannot invoke onResume for the mediation adapter."

    invoke-static {v0, p1}, Lr4/cm0;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final v(Landroid/content/Context;)V
    .locals 1

    :try_start_0
    iget-object p1, p0, Lr4/sy0;->a:Lr4/zp2;

    invoke-virtual {p1}, Lr4/zp2;->i()V
    :try_end_0
    .catch Lr4/mp2; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Cannot invoke onDestroy for the mediation adapter."

    invoke-static {v0, p1}, Lr4/cm0;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
