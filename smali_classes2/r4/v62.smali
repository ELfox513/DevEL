.class public final Lr4/v62;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/q12;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<AdT:",
        "Ljava/lang/Object;",
        "AdapterT:",
        "Ljava/lang/Object;",
        "ListenerT::Lr4/u81;",
        ">",
        "Ljava/lang/Object;",
        "Lr4/q12<",
        "TAdT;>;"
    }
.end annotation


# instance fields
.field public final a:Lr4/s12;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/s12<",
            "TAdapterT;T",
            "ListenerT;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lr4/y12;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/y12<",
            "TAdT;TAdapterT;T",
            "ListenerT;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lr4/mt2;

.field public final d:Lr4/i83;


# direct methods
.method public constructor <init>(Lr4/mt2;Lr4/i83;Lr4/s12;Lr4/y12;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/mt2;",
            "Lr4/i83;",
            "Lr4/s12<",
            "TAdapterT;T",
            "ListenerT;",
            ">;",
            "Lr4/y12<",
            "TAdT;TAdapterT;T",
            "ListenerT;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/v62;->c:Lr4/mt2;

    iput-object p2, p0, Lr4/v62;->d:Lr4/i83;

    iput-object p4, p0, Lr4/v62;->b:Lr4/y12;

    iput-object p3, p0, Lr4/v62;->a:Lr4/s12;

    return-void
.end method

.method public static final e(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1f

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Error from: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", code: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lr4/bp2;Lr4/no2;)Z
    .locals 0

    iget-object p1, p2, Lr4/no2;->t:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Lr4/bp2;Lr4/no2;)Lr4/h83;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/bp2;",
            "Lr4/no2;",
            ")",
            "Lr4/h83<",
            "TAdT;>;"
        }
    .end annotation

    const-class v0, Lcom/google/ads/mediation/admob/AdMobAdapter;

    iget-object v1, p2, Lr4/no2;->t:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :try_start_0
    iget-object v3, p0, Lr4/v62;->a:Lr4/s12;

    iget-object v4, p2, Lr4/no2;->v:Lorg/json/JSONObject;

    invoke-interface {v3, v2, v4}, Lr4/s12;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lr4/t12;

    move-result-object v1
    :try_end_0
    .catch Lr4/mp2; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_1

    new-instance p1, Lr4/v42;

    const-string p2, "Unable to instantiate mediation adapter class."

    invoke-direct {p1, p2}, Lr4/v42;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lr4/y73;->c(Ljava/lang/Throwable;)Lr4/h83;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance v2, Lr4/vm0;

    invoke-direct {v2}, Lr4/vm0;-><init>()V

    new-instance v3, Lr4/u62;

    invoke-direct {v3, p0, v1, v2}, Lr4/u62;-><init>(Lr4/v62;Lr4/t12;Lr4/vm0;)V

    iget-object v4, v1, Lr4/t12;->c:Lr4/u81;

    invoke-interface {v4, v3}, Lr4/u81;->p6(Lr4/t81;)V

    iget-boolean v3, p2, Lr4/no2;->I:Z

    if-eqz v3, :cond_3

    iget-object v3, p1, Lr4/bp2;->a:Lr4/yo2;

    iget-object v3, v3, Lr4/yo2;->a:Lr4/hp2;

    iget-object v3, v3, Lr4/hp2;->d:Lr4/tt;

    iget-object v3, v3, Lr4/tt;->x:Landroid/os/Bundle;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    if-nez v4, :cond_2

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_2
    const/4 v0, 0x1

    const-string v3, "render_test_ad_label"

    invoke-virtual {v4, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_3
    iget-object v0, p0, Lr4/v62;->c:Lr4/mt2;

    sget-object v3, Lr4/gt2;->z:Lr4/gt2;

    new-instance v4, Lr4/r62;

    invoke-direct {v4, p0, p1, p2, v1}, Lr4/r62;-><init>(Lr4/v62;Lr4/bp2;Lr4/no2;Lr4/t12;)V

    iget-object v5, p0, Lr4/v62;->d:Lr4/i83;

    invoke-static {v4, v5, v3, v0}, Lr4/xs2;->d(Lr4/qs2;Lr4/i83;Ljava/lang/Object;Lr4/et2;)Lr4/dt2;

    move-result-object v0

    sget-object v3, Lr4/gt2;->A:Lr4/gt2;

    invoke-virtual {v0, v3}, Lr4/dt2;->j(Ljava/lang/Object;)Lr4/dt2;

    move-result-object v0

    invoke-virtual {v0, v2}, Lr4/dt2;->e(Lr4/h83;)Lr4/dt2;

    move-result-object v0

    sget-object v2, Lr4/gt2;->B:Lr4/gt2;

    invoke-virtual {v0, v2}, Lr4/dt2;->j(Ljava/lang/Object;)Lr4/dt2;

    move-result-object v0

    new-instance v2, Lr4/t62;

    invoke-direct {v2, p0, p1, p2, v1}, Lr4/t62;-><init>(Lr4/v62;Lr4/bp2;Lr4/no2;Lr4/t12;)V

    invoke-virtual {v0, v2}, Lr4/dt2;->b(Lr4/ps2;)Lr4/dt2;

    move-result-object p1

    invoke-virtual {p1}, Lr4/dt2;->i()Lr4/rs2;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic c(Lr4/bp2;Lr4/no2;Lr4/t12;Ljava/lang/Void;)Ljava/lang/Object;
    .locals 0

    iget-object p4, p0, Lr4/v62;->b:Lr4/y12;

    invoke-interface {p4, p1, p2, p3}, Lr4/y12;->a(Lr4/bp2;Lr4/no2;Lr4/t12;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic d(Lr4/bp2;Lr4/no2;Lr4/t12;)V
    .locals 1

    iget-object v0, p0, Lr4/v62;->b:Lr4/y12;

    invoke-interface {v0, p1, p2, p3}, Lr4/y12;->b(Lr4/bp2;Lr4/no2;Lr4/t12;)V

    return-void
.end method
