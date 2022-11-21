.class public final Lr4/jo2;
.super Lr4/cx2;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lr4/zv;

.field public final synthetic b:Lr4/ko2;


# direct methods
.method public constructor <init>(Lr4/ko2;Lr4/zv;)V
    .locals 0

    iput-object p1, p0, Lr4/jo2;->b:Lr4/ko2;

    iput-object p2, p0, Lr4/jo2;->a:Lr4/zv;

    invoke-direct {p0}, Lr4/cx2;-><init>()V

    return-void
.end method


# virtual methods
.method public final v()V
    .locals 2

    iget-object v0, p0, Lr4/jo2;->b:Lr4/ko2;

    invoke-static {v0}, Lr4/ko2;->g7(Lr4/ko2;)Lr4/uo1;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lr4/jo2;->a:Lr4/zv;

    invoke-interface {v0}, Lr4/zv;->c()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lr4/cm0;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
