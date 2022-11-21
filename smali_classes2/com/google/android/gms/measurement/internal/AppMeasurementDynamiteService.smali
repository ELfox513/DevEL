.class public Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;
.super Lb5/e1;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/gms/common/util/DynamiteApi;
.end annotation


# instance fields
.field public a:Lg5/b5;

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lg5/d6;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lb5/e1;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lg5/b5;

    new-instance v0, Lp/a;

    invoke-direct {v0}, Lp/a;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lg5/b5;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempting to perform action before initialize."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public beginAdUnitExposure(Ljava/lang/String;J)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->t()Lg5/d2;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lg5/d2;->g(Ljava/lang/String;J)V

    return-void
.end method

.method public clearConditionalUserProperty(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->D()Lg5/i7;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lg5/i7;->h0(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public clearMeasurementEnabled(J)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a()V

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lg5/b5;

    invoke-virtual {p1}, Lg5/b5;->D()Lg5/i7;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lg5/i7;->E(Ljava/lang/Boolean;)V

    return-void
.end method

.method public endAdUnitExposure(Ljava/lang/String;J)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->t()Lg5/d2;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lg5/d2;->h(Ljava/lang/String;J)V

    return-void
.end method

.method public generateEventId(Lb5/i1;)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->K()Lg5/ia;

    move-result-object v0

    invoke-virtual {v0}, Lg5/ia;->r0()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a()V

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lg5/b5;

    invoke-virtual {v2}, Lg5/b5;->K()Lg5/ia;

    move-result-object v2

    invoke-virtual {v2, p1, v0, v1}, Lg5/ia;->C(Lb5/i1;J)V

    return-void
.end method

.method public getAppInstanceId(Lb5/i1;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->P()Lg5/y4;

    move-result-object v0

    new-instance v1, Lg5/h6;

    invoke-direct {v1, p0, p1}, Lg5/h6;-><init>(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Lb5/i1;)V

    invoke-virtual {v0, v1}, Lg5/y4;->u(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getCachedAppInstanceId(Lb5/i1;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->D()Lg5/i7;

    move-result-object v0

    invoke-virtual {v0}, Lg5/i7;->X()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->o0(Lb5/i1;Ljava/lang/String;)V

    return-void
.end method

.method public getConditionalUserProperties(Ljava/lang/String;Ljava/lang/String;Lb5/i1;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->P()Lg5/y4;

    move-result-object v0

    new-instance v1, Lg5/ja;

    invoke-direct {v1, p0, p3, p1, p2}, Lg5/ja;-><init>(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Lb5/i1;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lg5/y4;->u(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getCurrentScreenClass(Lb5/i1;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->D()Lg5/i7;

    move-result-object v0

    invoke-virtual {v0}, Lg5/i7;->Y()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->o0(Lb5/i1;Ljava/lang/String;)V

    return-void
.end method

.method public getCurrentScreenName(Lb5/i1;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->D()Lg5/i7;

    move-result-object v0

    invoke-virtual {v0}, Lg5/i7;->Z()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->o0(Lb5/i1;Ljava/lang/String;)V

    return-void
.end method

.method public getGmpAppId(Lb5/i1;)V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->D()Lg5/i7;

    move-result-object v0

    iget-object v1, v0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v1}, Lg5/b5;->L()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->L()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v1, v0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v1}, Lg5/b5;->O()Landroid/content/Context;

    move-result-object v1

    iget-object v2, v0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v2}, Lg5/b5;->R()Ljava/lang/String;

    move-result-object v2

    const-string v3, "google_app_id"

    invoke-static {v1, v3, v2}, Lg5/o7;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v0, v0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->F()Lg5/q3;

    move-result-object v0

    invoke-virtual {v0}, Lg5/q3;->m()Lg5/o3;

    move-result-object v0

    const-string v2, "getGoogleAppId failed with exception"

    invoke-virtual {v0, v2, v1}, Lg5/o3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->o0(Lb5/i1;Ljava/lang/String;)V

    return-void
.end method

.method public getMaxUserProperties(Ljava/lang/String;Lb5/i1;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->D()Lg5/i7;

    move-result-object v0

    invoke-virtual {v0, p1}, Lg5/i7;->S(Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a()V

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lg5/b5;

    invoke-virtual {p1}, Lg5/b5;->K()Lg5/ia;

    move-result-object p1

    const/16 v0, 0x19

    invoke-virtual {p1, p2, v0}, Lg5/ia;->B(Lb5/i1;I)V

    return-void
.end method

.method public getTestFlag(Lb5/i1;I)V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a()V

    if-eqz p2, :cond_4

    const/4 v0, 0x1

    if-eq p2, v0, :cond_3

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lg5/b5;

    invoke-virtual {p2}, Lg5/b5;->K()Lg5/ia;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->D()Lg5/i7;

    move-result-object v0

    invoke-virtual {v0}, Lg5/i7;->T()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p2, p1, v0}, Lg5/ia;->x(Lb5/i1;Z)V

    return-void

    :cond_1
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lg5/b5;

    invoke-virtual {p2}, Lg5/b5;->K()Lg5/ia;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->D()Lg5/i7;

    move-result-object v0

    invoke-virtual {v0}, Lg5/i7;->V()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2, p1, v0}, Lg5/ia;->B(Lb5/i1;I)V

    return-void

    :cond_2
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lg5/b5;

    invoke-virtual {p2}, Lg5/b5;->K()Lg5/ia;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->D()Lg5/i7;

    move-result-object v0

    invoke-virtual {v0}, Lg5/i7;->U()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "r"

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    :try_start_0
    invoke-interface {p1, v2}, Lb5/i1;->C0(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object p2, p2, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {p2}, Lg5/b5;->F()Lg5/q3;

    move-result-object p2

    invoke-virtual {p2}, Lg5/q3;->r()Lg5/o3;

    move-result-object p2

    const-string v0, "Error returning double value to wrapper"

    invoke-virtual {p2, v0, p1}, Lg5/o3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_3
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lg5/b5;

    invoke-virtual {p2}, Lg5/b5;->K()Lg5/ia;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->D()Lg5/i7;

    move-result-object v0

    invoke-virtual {v0}, Lg5/i7;->W()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, p1, v0, v1}, Lg5/ia;->C(Lb5/i1;J)V

    return-void

    :cond_4
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lg5/b5;

    invoke-virtual {p2}, Lg5/b5;->K()Lg5/ia;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->D()Lg5/i7;

    move-result-object v0

    invoke-virtual {v0}, Lg5/i7;->a0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lg5/ia;->D(Lb5/i1;Ljava/lang/String;)V

    return-void
.end method

.method public getUserProperties(Ljava/lang/String;Ljava/lang/String;ZLb5/i1;)V
    .locals 8

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->P()Lg5/y4;

    move-result-object v0

    new-instance v7, Lg5/h8;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lg5/h8;-><init>(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Lb5/i1;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0, v7}, Lg5/y4;->u(Ljava/lang/Runnable;)V

    return-void
.end method

.method public initForTests(Ljava/util/Map;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a()V

    return-void
.end method

.method public initialize(Lf4/a;Lb5/o1;J)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lg5/b5;

    if-nez v0, :cond_0

    invoke-static {p1}, Lf4/b;->t0(Lf4/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lx3/q;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lg5/b5;->C(Landroid/content/Context;Lb5/o1;Ljava/lang/Long;)Lg5/b5;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lg5/b5;

    return-void

    :cond_0
    invoke-virtual {v0}, Lg5/b5;->F()Lg5/q3;

    move-result-object p1

    invoke-virtual {p1}, Lg5/q3;->r()Lg5/o3;

    move-result-object p1

    const-string p2, "Attempting to initialize multiple times"

    invoke-virtual {p1, p2}, Lg5/o3;->a(Ljava/lang/String;)V

    return-void
.end method

.method public isDataCollectionEnabled(Lb5/i1;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->P()Lg5/y4;

    move-result-object v0

    new-instance v1, Lg5/ma;

    invoke-direct {v1, p0, p1}, Lg5/ma;-><init>(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Lb5/i1;)V

    invoke-virtual {v0, v1}, Lg5/y4;->u(Ljava/lang/Runnable;)V

    return-void
.end method

.method public logEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZJ)V
    .locals 10

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a()V

    move-object v0, p0

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lg5/b5;

    invoke-virtual {v1}, Lg5/b5;->D()Lg5/i7;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    move-wide/from16 v8, p6

    invoke-virtual/range {v2 .. v9}, Lg5/i7;->n(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZJ)V

    return-void
.end method

.method public logEventAndBundle(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lb5/i1;J)V
    .locals 7

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a()V

    invoke-static {p2}, Lx3/q;->f(Ljava/lang/String;)Ljava/lang/String;

    if-eqz p3, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :goto_0
    const-string v4, "app"

    const-string v1, "_o"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lg5/u;

    new-instance v3, Lg5/s;

    invoke-direct {v3, p3}, Lg5/s;-><init>(Landroid/os/Bundle;)V

    move-object v1, v0

    move-object v2, p2

    move-wide v5, p5

    invoke-direct/range {v1 .. v6}, Lg5/u;-><init>(Ljava/lang/String;Lg5/s;Ljava/lang/String;J)V

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lg5/b5;

    invoke-virtual {p2}, Lg5/b5;->P()Lg5/y4;

    move-result-object p2

    new-instance p3, Lg5/h7;

    invoke-direct {p3, p0, p4, v0, p1}, Lg5/h7;-><init>(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Lb5/i1;Lg5/u;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lg5/y4;->u(Ljava/lang/Runnable;)V

    return-void
.end method

.method public logHealthData(ILjava/lang/String;Lf4/a;Lf4/a;Lf4/a;)V
    .locals 9

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a()V

    const/4 v0, 0x0

    if-nez p3, :cond_0

    move-object v6, v0

    goto :goto_0

    :cond_0
    invoke-static {p3}, Lf4/b;->t0(Lf4/a;)Ljava/lang/Object;

    move-result-object p3

    move-object v6, p3

    :goto_0
    if-nez p4, :cond_1

    move-object v7, v0

    goto :goto_1

    :cond_1
    invoke-static {p4}, Lf4/b;->t0(Lf4/a;)Ljava/lang/Object;

    move-result-object p3

    move-object v7, p3

    :goto_1
    if-nez p5, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {p5}, Lf4/b;->t0(Lf4/a;)Ljava/lang/Object;

    move-result-object v0

    :goto_2
    move-object v8, v0

    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lg5/b5;

    invoke-virtual {p3}, Lg5/b5;->F()Lg5/q3;

    move-result-object v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    move v2, p1

    move-object v5, p2

    invoke-virtual/range {v1 .. v8}, Lg5/q3;->A(IZZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final o0(Lb5/i1;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->K()Lg5/ia;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lg5/ia;->D(Lb5/i1;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityCreated(Lf4/a;Landroid/os/Bundle;J)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a()V

    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lg5/b5;

    invoke-virtual {p3}, Lg5/b5;->D()Lg5/i7;

    move-result-object p3

    iget-object p3, p3, Lg5/i7;->c:Lg5/g7;

    if-eqz p3, :cond_0

    iget-object p4, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lg5/b5;

    invoke-virtual {p4}, Lg5/b5;->D()Lg5/i7;

    move-result-object p4

    invoke-virtual {p4}, Lg5/i7;->j()V

    invoke-static {p1}, Lf4/b;->t0(Lf4/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-interface {p3, p1, p2}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onActivityDestroyed(Lf4/a;J)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a()V

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lg5/b5;

    invoke-virtual {p2}, Lg5/b5;->D()Lg5/i7;

    move-result-object p2

    iget-object p2, p2, Lg5/i7;->c:Lg5/g7;

    if-eqz p2, :cond_0

    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lg5/b5;

    invoke-virtual {p3}, Lg5/b5;->D()Lg5/i7;

    move-result-object p3

    invoke-virtual {p3}, Lg5/i7;->j()V

    invoke-static {p1}, Lf4/b;->t0(Lf4/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-interface {p2, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityDestroyed(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public onActivityPaused(Lf4/a;J)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a()V

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lg5/b5;

    invoke-virtual {p2}, Lg5/b5;->D()Lg5/i7;

    move-result-object p2

    iget-object p2, p2, Lg5/i7;->c:Lg5/g7;

    if-eqz p2, :cond_0

    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lg5/b5;

    invoke-virtual {p3}, Lg5/b5;->D()Lg5/i7;

    move-result-object p3

    invoke-virtual {p3}, Lg5/i7;->j()V

    invoke-static {p1}, Lf4/b;->t0(Lf4/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-interface {p2, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPaused(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public onActivityResumed(Lf4/a;J)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a()V

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lg5/b5;

    invoke-virtual {p2}, Lg5/b5;->D()Lg5/i7;

    move-result-object p2

    iget-object p2, p2, Lg5/i7;->c:Lg5/g7;

    if-eqz p2, :cond_0

    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lg5/b5;

    invoke-virtual {p3}, Lg5/b5;->D()Lg5/i7;

    move-result-object p3

    invoke-virtual {p3}, Lg5/i7;->j()V

    invoke-static {p1}, Lf4/b;->t0(Lf4/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-interface {p2, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityResumed(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public onActivitySaveInstanceState(Lf4/a;Lb5/i1;J)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a()V

    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lg5/b5;

    invoke-virtual {p3}, Lg5/b5;->D()Lg5/i7;

    move-result-object p3

    iget-object p3, p3, Lg5/i7;->c:Lg5/g7;

    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->D()Lg5/i7;

    move-result-object v0

    invoke-virtual {v0}, Lg5/i7;->j()V

    invoke-static {p1}, Lf4/b;->t0(Lf4/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-interface {p3, p1, p4}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    :cond_0
    :try_start_0
    invoke-interface {p2, p4}, Lb5/i1;->C0(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lg5/b5;

    invoke-virtual {p2}, Lg5/b5;->F()Lg5/q3;

    move-result-object p2

    invoke-virtual {p2}, Lg5/q3;->r()Lg5/o3;

    move-result-object p2

    const-string p3, "Error returning bundle value to wrapper"

    invoke-virtual {p2, p3, p1}, Lg5/o3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onActivityStarted(Lf4/a;J)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a()V

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lg5/b5;

    invoke-virtual {p2}, Lg5/b5;->D()Lg5/i7;

    move-result-object p2

    iget-object p2, p2, Lg5/i7;->c:Lg5/g7;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lg5/b5;

    invoke-virtual {p2}, Lg5/b5;->D()Lg5/i7;

    move-result-object p2

    invoke-virtual {p2}, Lg5/i7;->j()V

    invoke-static {p1}, Lf4/b;->t0(Lf4/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    :cond_0
    return-void
.end method

.method public onActivityStopped(Lf4/a;J)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a()V

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lg5/b5;

    invoke-virtual {p2}, Lg5/b5;->D()Lg5/i7;

    move-result-object p2

    iget-object p2, p2, Lg5/i7;->c:Lg5/g7;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lg5/b5;

    invoke-virtual {p2}, Lg5/b5;->D()Lg5/i7;

    move-result-object p2

    invoke-virtual {p2}, Lg5/i7;->j()V

    invoke-static {p1}, Lf4/b;->t0(Lf4/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    :cond_0
    return-void
.end method

.method public performAction(Landroid/os/Bundle;Lb5/i1;J)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a()V

    const/4 p1, 0x0

    invoke-interface {p2, p1}, Lb5/i1;->C0(Landroid/os/Bundle;)V

    return-void
.end method

.method public registerOnMeasurementEventListener(Lb5/l1;)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->b:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->b:Ljava/util/Map;

    invoke-interface {p1}, Lb5/l1;->e()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg5/d6;

    if-nez v1, :cond_0

    new-instance v1, Lg5/oa;

    invoke-direct {v1, p0, p1}, Lg5/oa;-><init>(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Lb5/l1;)V

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->b:Ljava/util/Map;

    invoke-interface {p1}, Lb5/l1;->e()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lg5/b5;

    invoke-virtual {p1}, Lg5/b5;->D()Lg5/i7;

    move-result-object p1

    invoke-virtual {p1, v1}, Lg5/i7;->s(Lg5/d6;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public resetAnalyticsData(J)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->D()Lg5/i7;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lg5/i7;->t(J)V

    return-void
.end method

.method public setConditionalUserProperty(Landroid/os/Bundle;J)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a()V

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lg5/b5;

    invoke-virtual {p1}, Lg5/b5;->F()Lg5/q3;

    move-result-object p1

    invoke-virtual {p1}, Lg5/q3;->m()Lg5/o3;

    move-result-object p1

    const-string p2, "Conditional user property must not be null"

    invoke-virtual {p1, p2}, Lg5/o3;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->D()Lg5/i7;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lg5/i7;->z(Landroid/os/Bundle;J)V

    return-void
.end method

.method public setConsent(Landroid/os/Bundle;J)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->D()Lg5/i7;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lg5/i7;->C(Landroid/os/Bundle;J)V

    return-void
.end method

.method public setConsentThirdParty(Landroid/os/Bundle;J)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->D()Lg5/i7;

    move-result-object v0

    const/16 v1, -0x14

    invoke-virtual {v0, p1, v1, p2, p3}, Lg5/i7;->A(Landroid/os/Bundle;IJ)V

    return-void
.end method

.method public setCurrentScreen(Lf4/a;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a()V

    iget-object p4, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lg5/b5;

    invoke-virtual {p4}, Lg5/b5;->H()Lg5/w7;

    move-result-object p4

    invoke-static {p1}, Lf4/b;->t0(Lf4/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p4, p1, p2, p3}, Lg5/w7;->z(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDataCollectionEnabled(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->D()Lg5/i7;

    move-result-object v0

    invoke-virtual {v0}, Lg5/f4;->d()V

    iget-object v1, v0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v1}, Lg5/b5;->P()Lg5/y4;

    move-result-object v1

    new-instance v2, Lg5/k6;

    invoke-direct {v2, v0, p1}, Lg5/k6;-><init>(Lg5/i7;Z)V

    invoke-virtual {v1, v2}, Lg5/y4;->u(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setDefaultEventParameters(Landroid/os/Bundle;)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->D()Lg5/i7;

    move-result-object v0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object p1, v1

    :goto_0
    iget-object v1, v0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v1}, Lg5/b5;->P()Lg5/y4;

    move-result-object v1

    new-instance v2, Lg5/i6;

    invoke-direct {v2, v0, p1}, Lg5/i6;-><init>(Lg5/i7;Landroid/os/Bundle;)V

    invoke-virtual {v1, v2}, Lg5/y4;->u(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setEventInterceptor(Lb5/l1;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a()V

    new-instance v0, Lg5/na;

    invoke-direct {v0, p0, p1}, Lg5/na;-><init>(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Lb5/l1;)V

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lg5/b5;

    invoke-virtual {p1}, Lg5/b5;->P()Lg5/y4;

    move-result-object p1

    invoke-virtual {p1}, Lg5/y4;->x()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lg5/b5;

    invoke-virtual {p1}, Lg5/b5;->D()Lg5/i7;

    move-result-object p1

    invoke-virtual {p1, v0}, Lg5/i7;->D(Lg5/c6;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lg5/b5;

    invoke-virtual {p1}, Lg5/b5;->P()Lg5/y4;

    move-result-object p1

    new-instance v1, Lg5/i9;

    invoke-direct {v1, p0, v0}, Lg5/i9;-><init>(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Lg5/na;)V

    invoke-virtual {p1, v1}, Lg5/y4;->u(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setInstanceIdProvider(Lb5/n1;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a()V

    return-void
.end method

.method public setMeasurementEnabled(ZJ)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a()V

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lg5/b5;

    invoke-virtual {p2}, Lg5/b5;->D()Lg5/i7;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p2, p1}, Lg5/i7;->E(Ljava/lang/Boolean;)V

    return-void
.end method

.method public setMinimumSessionDuration(J)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a()V

    return-void
.end method

.method public setSessionTimeoutDuration(J)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->D()Lg5/i7;

    move-result-object v0

    iget-object v1, v0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v1}, Lg5/b5;->P()Lg5/y4;

    move-result-object v1

    new-instance v2, Lg5/m6;

    invoke-direct {v2, v0, p1, p2}, Lg5/m6;-><init>(Lg5/i7;J)V

    invoke-virtual {v1, v2}, Lg5/y4;->u(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setUserId(Ljava/lang/String;J)V
    .locals 8

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lg5/b5;

    invoke-virtual {p1}, Lg5/b5;->F()Lg5/q3;

    move-result-object p1

    invoke-virtual {p1}, Lg5/q3;->r()Lg5/o3;

    move-result-object p1

    const-string p2, "User ID must be non-empty"

    invoke-virtual {p1, p2}, Lg5/o3;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->D()Lg5/i7;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v5, 0x1

    const-string v3, "_id"

    move-object v4, p1

    move-wide v6, p2

    invoke-virtual/range {v1 .. v7}, Lg5/i7;->J(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZJ)V

    return-void
.end method

.method public setUserProperty(Ljava/lang/String;Ljava/lang/String;Lf4/a;ZJ)V
    .locals 7

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a()V

    invoke-static {p3}, Lf4/b;->t0(Lf4/a;)Ljava/lang/Object;

    move-result-object v3

    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lg5/b5;

    invoke-virtual {p3}, Lg5/b5;->D()Lg5/i7;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Lg5/i7;->J(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZJ)V

    return-void
.end method

.method public unregisterOnMeasurementEventListener(Lb5/l1;)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->b:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->b:Ljava/util/Map;

    invoke-interface {p1}, Lb5/l1;->e()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg5/d6;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    new-instance v1, Lg5/oa;

    invoke-direct {v1, p0, p1}, Lg5/oa;-><init>(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Lb5/l1;)V

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lg5/b5;

    invoke-virtual {p1}, Lg5/b5;->D()Lg5/i7;

    move-result-object p1

    invoke-virtual {p1, v1}, Lg5/i7;->L(Lg5/d6;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
