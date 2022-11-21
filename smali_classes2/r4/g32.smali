.class public final Lr4/g32;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/q12;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/q12<",
        "Lr4/xf1;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lr4/vg1;

.field public final c:Ljava/util/concurrent/Executor;

.field public final d:Lr4/mo2;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lr4/vg1;Lr4/mo2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/g32;->a:Landroid/content/Context;

    iput-object p3, p0, Lr4/g32;->b:Lr4/vg1;

    iput-object p2, p0, Lr4/g32;->c:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Lr4/g32;->d:Lr4/mo2;

    return-void
.end method

.method public static d(Lr4/no2;)Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object p0, p0, Lr4/no2;->v:Lorg/json/JSONObject;

    const-string v0, "tab_url"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final a(Lr4/bp2;Lr4/no2;)Z
    .locals 0

    iget-object p1, p0, Lr4/g32;->a:Landroid/content/Context;

    instance-of p1, p1, Landroid/app/Activity;

    if-eqz p1, :cond_0

    invoke-static {}, Lc4/o;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lr4/g32;->a:Landroid/content/Context;

    invoke-static {p1}, Lr4/q00;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p2}, Lr4/g32;->d(Lr4/no2;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Lr4/bp2;Lr4/no2;)Lr4/h83;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/bp2;",
            "Lr4/no2;",
            ")",
            "Lr4/h83<",
            "Lr4/xf1;",
            ">;"
        }
    .end annotation

    invoke-static {p2}, Lr4/g32;->d(Lr4/no2;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-static {v1}, Lr4/y73;->a(Ljava/lang/Object;)Lr4/h83;

    move-result-object v1

    new-instance v2, Lr4/e32;

    invoke-direct {v2, p0, v0, p1, p2}, Lr4/e32;-><init>(Lr4/g32;Landroid/net/Uri;Lr4/bp2;Lr4/no2;)V

    iget-object p1, p0, Lr4/g32;->c:Ljava/util/concurrent/Executor;

    invoke-static {v1, v2, p1}, Lr4/y73;->i(Lr4/h83;Lr4/e73;Ljava/util/concurrent/Executor;)Lr4/h83;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic c(Landroid/net/Uri;Lr4/bp2;Lr4/no2;Ljava/lang/Object;)Lr4/h83;
    .locals 11

    :try_start_0
    new-instance p4, Lo/c$a;

    invoke-direct {p4}, Lo/c$a;-><init>()V

    invoke-virtual {p4}, Lo/c$a;->a()Lo/c;

    move-result-object p4

    iget-object v0, p4, Lo/c;->a:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    new-instance v2, La3/e;

    iget-object p1, p4, Lo/c;->a:Landroid/content/Intent;

    const/4 p4, 0x0

    invoke-direct {v2, p1, p4}, La3/e;-><init>(Landroid/content/Intent;La3/v;)V

    new-instance p1, Lr4/vm0;

    invoke-direct {p1}, Lr4/vm0;-><init>()V

    iget-object v0, p0, Lr4/g32;->b:Lr4/vg1;

    new-instance v1, Lr4/x31;

    invoke-direct {v1, p2, p3, p4}, Lr4/x31;-><init>(Lr4/bp2;Lr4/no2;Ljava/lang/String;)V

    new-instance p2, Lr4/bg1;

    new-instance p3, Lr4/f32;

    invoke-direct {p3, p1}, Lr4/f32;-><init>(Lr4/vm0;)V

    invoke-direct {p2, p3, p4}, Lr4/bg1;-><init>(Lr4/dh1;Lr4/cs0;)V

    invoke-virtual {v0, v1, p2}, Lr4/vg1;->c(Lr4/x31;Lr4/bg1;)Lr4/yf1;

    move-result-object p2

    new-instance p3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    invoke-virtual {p2}, Lr4/yf1;->i()Lr4/r91;

    move-result-object v4

    new-instance p4, Lr4/im0;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, p4

    invoke-direct/range {v5 .. v10}, Lr4/im0;-><init>(IIZZZ)V

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(La3/e;Lr4/gt;La3/q;La3/x;Lr4/im0;Lr4/cs0;Lr4/cf1;)V

    invoke-virtual {p1, p3}, Lr4/vm0;->e(Ljava/lang/Object;)Z

    iget-object p1, p0, Lr4/g32;->d:Lr4/mo2;

    invoke-virtual {p1}, Lr4/mo2;->d()V

    invoke-virtual {p2}, Lr4/yf1;->h()Lr4/xf1;

    move-result-object p1

    invoke-static {p1}, Lr4/y73;->a(Ljava/lang/Object;)Lr4/h83;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    const-string p2, "Error in CustomTabsAdRenderer"

    invoke-static {p2, p1}, Lr4/cm0;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method
