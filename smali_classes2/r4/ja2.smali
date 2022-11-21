.class public final Lr4/ja2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/dg2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/dg2<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lr4/hp2;

.field public final b:J


# direct methods
.method public constructor <init>(Lr4/hp2;J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "the targeting must not be null"

    invoke-static {p1, v0}, Lx3/q;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lr4/ja2;->a:Lr4/hp2;

    iput-wide p2, p0, Lr4/ja2;->b:J

    return-void
.end method


# virtual methods
.method public final bridge synthetic d(Ljava/lang/Object;)V
    .locals 13

    check-cast p1, Landroid/os/Bundle;

    iget-object v0, p0, Lr4/ja2;->a:Lr4/hp2;

    iget-object v0, v0, Lr4/hp2;->d:Lr4/tt;

    iget v1, v0, Lr4/tt;->H:I

    const-string v2, "http_timeout_millis"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lr4/ja2;->a:Lr4/hp2;

    iget-object v1, v1, Lr4/hp2;->f:Ljava/lang/String;

    const-string v2, "slotname"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lr4/ja2;->a:Lr4/hp2;

    iget-object v1, v1, Lr4/hp2;->o:Lr4/xo2;

    iget v1, v1, Lr4/xo2;->a:I

    add-int/lit8 v2, v1, -0x1

    if-eqz v1, :cond_c

    const/4 v1, 0x2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    if-eq v2, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "is_rewarded_interstitial"

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    const-string v2, "is_new_rewarded"

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :goto_0
    iget-wide v4, p0, Lr4/ja2;->b:J

    const-string v2, "start_signals_timestamp"

    invoke-virtual {p1, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    new-instance v2, Ljava/text/SimpleDateFormat;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "yyyyMMdd"

    invoke-direct {v2, v5, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v4, Ljava/util/Date;

    iget-wide v5, v0, Lr4/tt;->b:J

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    iget-wide v4, v0, Lr4/tt;->b:J

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    cmp-long v9, v4, v6

    if-eqz v9, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    const-string v5, "cust_age"

    invoke-static {p1, v5, v2, v4}, Lr4/up2;->b(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v2, v0, Lr4/tt;->d:Landroid/os/Bundle;

    const-string v4, "extras"

    invoke-static {p1, v4, v2}, Lr4/up2;->f(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;)V

    iget v2, v0, Lr4/tt;->k:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v4, v0, Lr4/tt;->k:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3

    const/4 v4, 0x1

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_2
    const-string v6, "cust_gender"

    invoke-static {p1, v6, v2, v4}, Lr4/up2;->c(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Integer;Z)V

    iget-object v2, v0, Lr4/tt;->p:Ljava/util/List;

    const-string v4, "kw"

    invoke-static {p1, v4, v2}, Lr4/up2;->g(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/List;)V

    iget v2, v0, Lr4/tt;->r:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v4, v0, Lr4/tt;->r:I

    if-eq v4, v5, :cond_4

    const/4 v4, 0x1

    goto :goto_3

    :cond_4
    const/4 v4, 0x0

    :goto_3
    const-string v6, "tag_for_child_directed_treatment"

    invoke-static {p1, v6, v2, v4}, Lr4/up2;->c(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Integer;Z)V

    iget-boolean v2, v0, Lr4/tt;->q:Z

    if-eqz v2, :cond_5

    const-string v2, "test_request"

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_5
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v4, v0, Lr4/tt;->a:I

    if-lt v4, v1, :cond_6

    iget-boolean v4, v0, Lr4/tt;->s:Z

    if-eqz v4, :cond_6

    const/4 v4, 0x1

    goto :goto_4

    :cond_6
    const/4 v4, 0x0

    :goto_4
    const-string v6, "d_imp_hdr"

    invoke-static {p1, v6, v2, v4}, Lr4/up2;->c(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Integer;Z)V

    iget-object v2, v0, Lr4/tt;->t:Ljava/lang/String;

    iget v4, v0, Lr4/tt;->a:I

    if-lt v4, v1, :cond_7

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    const/4 v1, 0x1

    goto :goto_5

    :cond_7
    const/4 v1, 0x0

    :goto_5
    const-string v4, "ppid"

    invoke-static {p1, v4, v2, v1}, Lr4/up2;->b(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v1, v0, Lr4/tt;->v:Landroid/location/Location;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    const/high16 v4, 0x447a0000    # 1000.0f

    mul-float v2, v2, v4

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    const-wide/16 v9, 0x3e8

    mul-long v6, v6, v9

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    const-wide v9, 0x416312d000000000L    # 1.0E7

    mul-double v6, v6, v9

    double-to-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v11

    mul-double v11, v11, v9

    double-to-long v9, v11

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const-string v9, "radius"

    invoke-virtual {v7, v9, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    const-string v2, "lat"

    invoke-virtual {v7, v2, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-string v6, "long"

    invoke-virtual {v7, v6, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-string v4, "time"

    invoke-virtual {v7, v4, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "uule"

    invoke-virtual {p1, v1, v7}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_8
    iget-object v1, v0, Lr4/tt;->w:Ljava/lang/String;

    const-string v2, "url"

    invoke-static {p1, v2, v1}, Lr4/up2;->e(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lr4/tt;->G:Ljava/util/List;

    const-string v2, "neighboring_content_urls"

    invoke-static {p1, v2, v1}, Lr4/up2;->g(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/List;)V

    iget-object v1, v0, Lr4/tt;->y:Landroid/os/Bundle;

    const-string v2, "custom_targeting"

    invoke-static {p1, v2, v1}, Lr4/up2;->f(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v1, v0, Lr4/tt;->z:Ljava/util/List;

    const-string v2, "category_exclusions"

    invoke-static {p1, v2, v1}, Lr4/up2;->g(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/List;)V

    iget-object v1, v0, Lr4/tt;->A:Ljava/lang/String;

    const-string v2, "request_agent"

    invoke-static {p1, v2, v1}, Lr4/up2;->e(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lr4/tt;->B:Ljava/lang/String;

    const-string v2, "request_pkg"

    invoke-static {p1, v2, v1}, Lr4/up2;->e(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, v0, Lr4/tt;->C:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget v2, v0, Lr4/tt;->a:I

    const/4 v4, 0x7

    if-lt v2, v4, :cond_9

    const/4 v2, 0x1

    goto :goto_6

    :cond_9
    const/4 v2, 0x0

    :goto_6
    const-string v4, "is_designed_for_families"

    invoke-static {p1, v4, v1, v2}, Lr4/up2;->d(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Boolean;Z)V

    iget v1, v0, Lr4/tt;->a:I

    const/16 v2, 0x8

    if-lt v1, v2, :cond_b

    iget v1, v0, Lr4/tt;->E:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, v0, Lr4/tt;->E:I

    if-eq v2, v5, :cond_a

    goto :goto_7

    :cond_a
    const/4 v3, 0x0

    :goto_7
    const-string v2, "tag_for_under_age_of_consent"

    invoke-static {p1, v2, v1, v3}, Lr4/up2;->c(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Integer;Z)V

    iget-object v0, v0, Lr4/tt;->F:Ljava/lang/String;

    const-string v1, "max_ad_content_rating"

    invoke-static {p1, v1, v0}, Lr4/up2;->e(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    return-void

    :cond_c
    const/4 p1, 0x0

    throw p1
.end method
