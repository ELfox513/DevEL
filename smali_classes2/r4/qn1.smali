.class public final Lr4/qn1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/u50;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/u50<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lr4/q30;

.field public final b:Lr4/fo1;

.field public final c:Lr4/or3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/or3<",
            "Lr4/mn1;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lr4/pj1;Lr4/ej1;Lr4/fo1;Lr4/or3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/pj1;",
            "Lr4/ej1;",
            "Lr4/fo1;",
            "Lr4/or3<",
            "Lr4/mn1;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Lr4/ej1;->q()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lr4/pj1;->g(Ljava/lang/String;)Lr4/q30;

    move-result-object p1

    iput-object p1, p0, Lr4/qn1;->a:Lr4/q30;

    iput-object p3, p0, Lr4/qn1;->b:Lr4/fo1;

    iput-object p4, p0, Lr4/qn1;->c:Lr4/or3;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string p1, "asset"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :try_start_0
    iget-object p2, p0, Lr4/qn1;->a:Lr4/q30;

    iget-object v0, p0, Lr4/qn1;->c:Lr4/or3;

    invoke-interface {v0}, Lr4/or3;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr4/g30;

    invoke-interface {p2, v0, p1}, Lr4/q30;->F6(Lr4/g30;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x28

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Failed to call onCustomClick for asset "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lr4/cm0;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lr4/qn1;->a:Lr4/q30;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lr4/qn1;->b:Lr4/fo1;

    const-string v1, "/nativeAdCustomClick"

    invoke-virtual {v0, v1, p0}, Lr4/fo1;->e(Ljava/lang/String;Lr4/u50;)V

    return-void
.end method
