.class public final Lr4/st;
.super Lf4/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lf4/c<",
        "Lr4/wv;",
        ">;"
    }
.end annotation


# instance fields
.field public c:Lr4/xf0;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.ads.AdManagerCreatorImpl"

    invoke-direct {p0, v0}, Lf4/c;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "com.google.android.gms.ads.internal.client.IAdManagerCreator"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lr4/wv;

    if-eqz v1, :cond_1

    move-object p1, v0

    check-cast p1, Lr4/wv;

    goto :goto_0

    :cond_1
    new-instance v0, Lr4/wv;

    invoke-direct {v0, p1}, Lr4/wv;-><init>(Landroid/os/IBinder;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public final c(Landroid/content/Context;Lr4/yt;Ljava/lang/String;Lr4/fb0;I)Lr4/vv;
    .locals 10

    invoke-static {p1}, Lr4/rz;->a(Landroid/content/Context;)V

    sget-object v0, Lr4/rz;->W6:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "com.google.android.gms.ads.internal.client.IAdManager"

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    :try_start_0
    invoke-static {p1}, Lf4/b;->L0(Ljava/lang/Object;)Lf4/a;

    move-result-object v4

    const-string v0, "com.google.android.gms.ads.ChimeraAdManagerCreatorImpl"

    sget-object v3, Lr4/rt;->a:Lr4/em0;

    invoke-static {p1, v0, v3}, Lr4/gm0;->a(Landroid/content/Context;Ljava/lang/String;Lr4/em0;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lr4/wv;

    const v8, 0xcbe6bb0

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move v9, p5

    invoke-virtual/range {v3 .. v9}, Lr4/wv;->b2(Lf4/a;Lr4/yt;Ljava/lang/String;Lr4/fb0;II)Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {p2, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p3

    instance-of p4, p3, Lr4/vv;

    if-eqz p4, :cond_1

    check-cast p3, Lr4/vv;

    :goto_0
    move-object v2, p3

    goto :goto_2

    :cond_1
    new-instance p3, Lr4/tv;

    invoke-direct {p3, p2}, Lr4/tv;-><init>(Landroid/os/IBinder;)V
    :try_end_0
    .catch Lr4/fm0; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    goto :goto_1

    :catch_1
    move-exception p2

    goto :goto_1

    :catch_2
    move-exception p2

    :goto_1
    invoke-static {p1}, Lr4/vf0;->c(Landroid/content/Context;)Lr4/xf0;

    move-result-object p1

    iput-object p1, p0, Lr4/st;->c:Lr4/xf0;

    const-string p3, "AdManagerCreator.newAdManagerByDynamiteLoader"

    invoke-interface {p1, p2, p3}, Lr4/xf0;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-string p1, "#007 Could not call remote method."

    invoke-static {p1, p2}, Lr4/cm0;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-object v2

    :cond_2
    :try_start_1
    invoke-static {p1}, Lf4/b;->L0(Ljava/lang/Object;)Lf4/a;

    move-result-object v4

    invoke-virtual {p0, p1}, Lf4/c;->b(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lr4/wv;

    const v8, 0xcbe6bb0

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move v9, p5

    invoke-virtual/range {v3 .. v9}, Lr4/wv;->b2(Lf4/a;Lr4/yt;Ljava/lang/String;Lr4/fb0;II)Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_4

    :cond_3
    invoke-interface {p1, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of p3, p2, Lr4/vv;

    if-eqz p3, :cond_4

    check-cast p2, Lr4/vv;

    :goto_3
    move-object v2, p2

    goto :goto_4

    :cond_4
    new-instance p2, Lr4/tv;

    invoke-direct {p2, p1}, Lr4/tv;-><init>(Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lf4/c$a; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_3

    :goto_4
    return-object v2

    :catch_3
    move-exception p1

    goto :goto_5

    :catch_4
    move-exception p1

    :goto_5
    const-string p2, "Could not create remote AdManager."

    invoke-static {p2, p1}, Lr4/cm0;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2
.end method
