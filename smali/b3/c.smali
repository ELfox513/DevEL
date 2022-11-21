.class public Lb3/c;
.super Lb3/u2;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1a
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lb3/u2;-><init>()V

    return-void
.end method


# virtual methods
.method public final p(Landroid/content/Context;Landroid/telephony/TelephonyManager;)I
    .locals 1

    invoke-static {}, Lz2/t;->d()Lb3/k2;

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p1, v0}, Lb3/k2;->e(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-static {p2}, Lb3/b;->a(Landroid/telephony/TelephonyManager;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    return p1

    :cond_0
    return v0
.end method
