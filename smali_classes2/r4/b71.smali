.class public final Lr4/b71;
.super Lr4/gx;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lr4/cu;",
            ">;"
        }
    .end annotation
.end field

.field public final k:J

.field public final p:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lr4/no2;Ljava/lang/String;Lr4/v12;Lr4/so2;)V
    .locals 2

    invoke-direct {p0}, Lr4/gx;-><init>()V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    iget-object v1, p1, Lr4/no2;->X:Ljava/lang/String;

    :goto_0
    iput-object v1, p0, Lr4/b71;->b:Ljava/lang/String;

    const-string v1, "com.google.android.gms.ads.mediation.customevent.CustomEventAdapter"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "com.google.ads.mediation.customevent.CustomEventAdapter"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    :try_start_0
    iget-object p1, p1, Lr4/no2;->v:Lorg/json/JSONObject;

    const-string v1, "class_name"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    :cond_2
    :goto_1
    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    move-object p2, v0

    :goto_2
    iput-object p2, p0, Lr4/b71;->a:Ljava/lang/String;

    invoke-virtual {p3}, Lr4/v12;->e()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lr4/b71;->d:Ljava/util/List;

    invoke-static {}, Lz2/t;->k()Lc4/f;

    move-result-object p1

    invoke-interface {p1}, Lc4/f;->a()J

    move-result-wide p1

    const-wide/16 v0, 0x3e8

    div-long/2addr p1, v0

    iput-wide p1, p0, Lr4/b71;->k:J

    sget-object p1, Lr4/rz;->G6:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object p2

    invoke-virtual {p2, p1}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_5

    if-eqz p4, :cond_5

    iget-object p1, p4, Lr4/so2;->h:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_3

    :cond_4
    iget-object p1, p4, Lr4/so2;->h:Ljava/lang/String;

    goto :goto_4

    :cond_5
    :goto_3
    const-string p1, ""

    :goto_4
    iput-object p1, p0, Lr4/b71;->p:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lr4/b71;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lr4/b71;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final f7()J
    .locals 2

    iget-wide v0, p0, Lr4/b71;->k:J

    return-wide v0
.end method

.method public final g()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lr4/cu;",
            ">;"
        }
    .end annotation

    sget-object v0, Lr4/rz;->X5:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lr4/b71;->d:Ljava/util/List;

    return-object v0
.end method

.method public final g7()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lr4/b71;->p:Ljava/lang/String;

    return-object v0
.end method
