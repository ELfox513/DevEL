.class public final Lr4/wu;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lr4/st;

.field public final b:Lr4/qt;

.field public final c:Lr4/fy;

.field public final d:Lr4/l40;

.field public final e:Lr4/li0;

.field public final f:Lr4/te0;

.field public final g:Lr4/m40;

.field public h:Lr4/xf0;


# direct methods
.method public constructor <init>(Lr4/st;Lr4/qt;Lr4/fy;Lr4/l40;Lr4/li0;Lr4/te0;Lr4/m40;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/wu;->a:Lr4/st;

    iput-object p2, p0, Lr4/wu;->b:Lr4/qt;

    iput-object p3, p0, Lr4/wu;->c:Lr4/fy;

    iput-object p4, p0, Lr4/wu;->d:Lr4/l40;

    iput-object p5, p0, Lr4/wu;->e:Lr4/li0;

    iput-object p6, p0, Lr4/wu;->f:Lr4/te0;

    iput-object p7, p0, Lr4/wu;->g:Lr4/m40;

    return-void
.end method

.method public static synthetic a(Lr4/wu;)Lr4/st;
    .locals 0

    iget-object p0, p0, Lr4/wu;->a:Lr4/st;

    return-object p0
.end method

.method public static synthetic b(Lr4/wu;)Lr4/qt;
    .locals 0

    iget-object p0, p0, Lr4/wu;->b:Lr4/qt;

    return-object p0
.end method

.method public static synthetic c(Lr4/wu;)Lr4/fy;
    .locals 0

    iget-object p0, p0, Lr4/wu;->c:Lr4/fy;

    return-object p0
.end method

.method public static synthetic d(Lr4/wu;)Lr4/te0;
    .locals 0

    iget-object p0, p0, Lr4/wu;->f:Lr4/te0;

    return-object p0
.end method

.method public static synthetic e(Lr4/wu;Lr4/xf0;)Lr4/xf0;
    .locals 0

    iput-object p1, p0, Lr4/wu;->h:Lr4/xf0;

    return-object p1
.end method

.method public static synthetic f(Lr4/wu;)Lr4/xf0;
    .locals 0

    iget-object p0, p0, Lr4/wu;->h:Lr4/xf0;

    return-object p0
.end method

.method public static synthetic g(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v0, "action"

    const-string v1, "no_ads_fallback"

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "flow"

    invoke-virtual {v4, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lr4/yu;->a()Lr4/vl0;

    move-result-object v0

    invoke-static {}, Lr4/yu;->d()Lr4/im0;

    move-result-object p1

    iget-object v2, p1, Lr4/im0;->a:Ljava/lang/String;

    const-string v3, "gmob-apps"

    const/4 v5, 0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lr4/vl0;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V

    return-void
.end method


# virtual methods
.method public final h(Landroid/content/Context;Lr4/yt;Ljava/lang/String;Lr4/fb0;)Lr4/vv;
    .locals 7

    new-instance v6, Lr4/qu;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lr4/qu;-><init>(Lr4/wu;Landroid/content/Context;Lr4/yt;Ljava/lang/String;Lr4/fb0;)V

    const/4 p2, 0x0

    invoke-virtual {v6, p1, p2}, Lr4/xu;->d(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr4/vv;

    return-object p1
.end method

.method public final i(Landroid/content/Context;Ljava/lang/String;Lr4/fb0;)Lr4/rv;
    .locals 1

    new-instance v0, Lr4/su;

    invoke-direct {v0, p0, p1, p2, p3}, Lr4/su;-><init>(Lr4/wu;Landroid/content/Context;Ljava/lang/String;Lr4/fb0;)V

    const/4 p2, 0x0

    invoke-virtual {v0, p1, p2}, Lr4/xu;->d(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr4/rv;

    return-object p1
.end method

.method public final j(Landroid/content/Context;Ljava/lang/String;Lr4/fb0;)Lr4/yh0;
    .locals 1

    new-instance v0, Lr4/vu;

    invoke-direct {v0, p0, p1, p2, p3}, Lr4/vu;-><init>(Lr4/wu;Landroid/content/Context;Ljava/lang/String;Lr4/fb0;)V

    const/4 p2, 0x0

    invoke-virtual {v0, p1, p2}, Lr4/xu;->d(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr4/yh0;

    return-object p1
.end method

.method public final k(Landroid/app/Activity;)Lr4/we0;
    .locals 5

    new-instance v0, Lr4/iu;

    invoke-direct {v0, p0, p1}, Lr4/iu;-><init>(Lr4/wu;Landroid/app/Activity;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.google.android.gms.ads.internal.overlay.useClientJar"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    const-string v1, "useClientJar flag not found in activity intent extras."

    invoke-static {v1}, Lr4/cm0;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    :goto_0
    invoke-virtual {v0, p1, v4}, Lr4/xu;->d(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr4/we0;

    return-object p1
.end method

.method public final l(Landroid/content/Context;Lr4/fb0;)Lr4/vk0;
    .locals 1

    new-instance v0, Lr4/ku;

    invoke-direct {v0, p0, p1, p2}, Lr4/ku;-><init>(Lr4/wu;Landroid/content/Context;Lr4/fb0;)V

    const/4 p2, 0x0

    invoke-virtual {v0, p1, p2}, Lr4/xu;->d(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr4/vk0;

    return-object p1
.end method

.method public final m(Landroid/content/Context;Lr4/fb0;)Lr4/ke0;
    .locals 1

    new-instance v0, Lr4/mu;

    invoke-direct {v0, p0, p1, p2}, Lr4/mu;-><init>(Lr4/wu;Landroid/content/Context;Lr4/fb0;)V

    const/4 p2, 0x0

    invoke-virtual {v0, p1, p2}, Lr4/xu;->d(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr4/ke0;

    return-object p1
.end method
