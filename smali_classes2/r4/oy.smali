.class public final Lr4/oy;
.super Lr4/mw;
.source "SourceFile"


# instance fields
.field public a:Lr4/n70;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lr4/mw;-><init>()V

    return-void
.end method


# virtual methods
.method public final B0(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final H0(Z)V
    .locals 0

    return-void
.end method

.method public final N5(Lr4/yw;)V
    .locals 0

    return-void
.end method

.method public final O5(Lf4/a;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final Q(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final S2(Lr4/sy;)V
    .locals 0

    return-void
.end method

.method public final Y0(Lr4/n70;)V
    .locals 0

    iput-object p1, p0, Lr4/oy;->a:Lr4/n70;

    return-void
.end method

.method public final synthetic a()V
    .locals 2

    iget-object v0, p0, Lr4/oy;->a:Lr4/n70;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lr4/n70;->c5(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not notify onComplete event."

    invoke-static {v1, v0}, Lr4/cm0;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 2

    const-string v0, "The initialization is not processed because MobileAdsSettingsManager is not created successfully."

    invoke-static {v0}, Lr4/cm0;->c(Ljava/lang/String;)V

    sget-object v0, Lr4/vl0;->b:Landroid/os/Handler;

    new-instance v1, Lr4/ny;

    invoke-direct {v1, p0}, Lr4/ny;-><init>(Lr4/oy;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final i()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public final j2(F)V
    .locals 0

    return-void
.end method

.method public final k()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public final m()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lr4/g70;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final p5(Ljava/lang/String;Lf4/a;)V
    .locals 0

    return-void
.end method

.method public final r()V
    .locals 0

    return-void
.end method

.method public final s1(Lr4/fb0;)V
    .locals 0

    return-void
.end method
