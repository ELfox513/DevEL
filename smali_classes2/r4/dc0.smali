.class public final Lr4/dc0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld3/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld3/d<",
        "Ld3/q;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lr4/lb0;

.field public final synthetic b:Lr4/ec0;


# direct methods
.method public constructor <init>(Lr4/ec0;Lr4/lb0;)V
    .locals 0

    iput-object p1, p0, Lr4/dc0;->b:Lr4/ec0;

    iput-object p2, p0, Lr4/dc0;->a:Lr4/lb0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lt2/a;)V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lr4/dc0;->b:Lr4/ec0;

    invoke-static {v0}, Lr4/ec0;->j7(Lr4/ec0;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lt2/a;->a()I

    move-result v1

    invoke-virtual {p1}, Lt2/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lt2/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x55

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "failed to load mediation ad: ErrorCode = "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ". ErrorMessage = "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". ErrorDomain = "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lr4/cm0;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lr4/dc0;->a:Lr4/lb0;

    invoke-virtual {p1}, Lt2/a;->d()Lr4/lt;

    move-result-object v1

    invoke-interface {v0, v1}, Lr4/lb0;->u5(Lr4/lt;)V

    iget-object v0, p0, Lr4/dc0;->a:Lr4/lb0;

    invoke-virtual {p1}, Lt2/a;->a()I

    move-result v1

    invoke-virtual {p1}, Lt2/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lr4/lb0;->Z6(ILjava/lang/String;)V

    iget-object v0, p0, Lr4/dc0;->a:Lr4/lb0;

    invoke-virtual {p1}, Lt2/a;->a()I

    move-result p1

    invoke-interface {v0, p1}, Lr4/lb0;->W(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, ""

    invoke-static {v0, p1}, Lr4/cm0;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
