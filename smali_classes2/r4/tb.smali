.class public final Lr4/tb;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lr4/vb;


# direct methods
.method public synthetic constructor <init>(Lr4/vb;Lr4/sb;)V
    .locals 0

    iput-object p1, p0, Lr4/tb;->a:Lr4/vb;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    const-string p2, "connectivity"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/ConnectivityManager;

    const/4 v0, 0x2

    const/16 v1, 0x9

    const/4 v2, 0x6

    const/4 v3, 0x4

    const/16 v4, 0x1d

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x5

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    const/4 v0, 0x0

    goto :goto_2

    :cond_1
    :try_start_0
    invoke-virtual {p2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v8

    if-nez v8, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getType()I

    move-result v8

    if-eqz v8, :cond_5

    if-eq v8, v5, :cond_7

    if-eq v8, v3, :cond_5

    if-eq v8, v7, :cond_5

    if-eq v8, v2, :cond_4

    if-eq v8, v1, :cond_3

    const/16 v0, 0x8

    goto :goto_2

    :cond_3
    const/4 v0, 0x7

    goto :goto_2

    :cond_4
    :pswitch_0
    const/4 v0, 0x5

    goto :goto_2

    :cond_5
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result p2

    packed-switch p2, :pswitch_data_0

    :pswitch_1
    const/4 v0, 0x6

    goto :goto_2

    :pswitch_2
    sget p2, Lr4/lc;->a:I

    if-lt p2, v4, :cond_0

    const/16 v0, 0x9

    goto :goto_2

    :pswitch_3
    const/4 v0, 0x4

    goto :goto_2

    :pswitch_4
    const/4 v0, 0x3

    goto :goto_2

    :cond_6
    :goto_1
    const/4 v0, 0x1

    goto :goto_2

    :catch_0
    nop

    goto :goto_0

    :cond_7
    :goto_2
    :pswitch_5
    sget p2, Lr4/lc;->a:I

    if-lt p2, v4, :cond_9

    invoke-static {}, Lr4/pb;->a()Z

    if-ne v0, v7, :cond_9

    :try_start_1
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_2
    new-instance v0, Lr4/ub;

    iget-object v1, p0, Lr4/tb;->a:Lr4/vb;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lr4/ub;-><init>(Lr4/vb;Lr4/sb;)V

    const/16 v1, 0x1f

    if-ge p2, v1, :cond_8

    invoke-virtual {p1, v0, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_3

    :cond_8
    const/high16 p2, 0x100000

    invoke-virtual {p1, v0, p2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :goto_3
    invoke-virtual {p1, v0, v6}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :cond_9
    move v7, v0

    :catch_1
    iget-object p1, p0, Lr4/tb;->a:Lr4/vb;

    invoke-static {p1, v7}, Lr4/vb;->d(Lr4/vb;I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
