.class public final Lr4/bu1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/lt1;


# instance fields
.field public final a:J

.field public final b:Ljava/lang/String;

.field public final c:Lr4/qt1;

.field public final d:Lr4/eo2;


# direct methods
.method public constructor <init>(JLandroid/content/Context;Lr4/qt1;Lr4/bu0;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lr4/bu1;->a:J

    iput-object p6, p0, Lr4/bu1;->b:Ljava/lang/String;

    iput-object p4, p0, Lr4/bu1;->c:Lr4/qt1;

    invoke-virtual {p5}, Lr4/bu0;->w()Lr4/go2;

    move-result-object p1

    invoke-interface {p1, p3}, Lr4/go2;->a(Landroid/content/Context;)Lr4/go2;

    invoke-interface {p1, p6}, Lr4/go2;->u(Ljava/lang/String;)Lr4/go2;

    invoke-interface {p1}, Lr4/go2;->zza()Lr4/ho2;

    move-result-object p1

    invoke-interface {p1}, Lr4/ho2;->a()Lr4/eo2;

    move-result-object p1

    iput-object p1, p0, Lr4/bu1;->d:Lr4/eo2;

    return-void
.end method

.method public static synthetic d(Lr4/bu1;)J
    .locals 2

    iget-wide v0, p0, Lr4/bu1;->a:J

    return-wide v0
.end method

.method public static synthetic e(Lr4/bu1;)Lr4/qt1;
    .locals 0

    iget-object p0, p0, Lr4/bu1;->c:Lr4/qt1;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lr4/bu1;->d:Lr4/eo2;

    new-instance v1, Lr4/au1;

    invoke-direct {v1, p0}, Lr4/au1;-><init>(Lr4/bu1;)V

    invoke-virtual {v0, v1}, Lr4/eo2;->D5(Lr4/bi0;)V

    iget-object v0, p0, Lr4/bu1;->d:Lr4/eo2;

    const/4 v1, 0x0

    invoke-static {v1}, Lf4/b;->L0(Ljava/lang/Object;)Lf4/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lr4/eo2;->b0(Lf4/a;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lr4/cm0;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final c(Lr4/tt;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lr4/bu1;->d:Lr4/eo2;

    new-instance v1, Lr4/zt1;

    invoke-direct {v1, p0}, Lr4/zt1;-><init>(Lr4/bu1;)V

    invoke-virtual {v0, p1, v1}, Lr4/eo2;->L2(Lr4/tt;Lr4/fi0;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lr4/cm0;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
