.class public final Lr4/qa0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/e73;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lr4/e73<",
        "TI;TO;>;"
    }
.end annotation


# instance fields
.field public final a:Lr4/v90;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/v90<",
            "TO;>;"
        }
    .end annotation
.end field

.field public final b:Lr4/w90;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/w90<",
            "TI;>;"
        }
    .end annotation
.end field

.field public final c:Ljava/lang/String;

.field public final d:Lr4/h83;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/h83<",
            "Lr4/q90;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lr4/h83;Ljava/lang/String;Lr4/w90;Lr4/v90;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/h83<",
            "Lr4/q90;",
            ">;",
            "Ljava/lang/String;",
            "Lr4/w90<",
            "TI;>;",
            "Lr4/v90<",
            "TO;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/qa0;->d:Lr4/h83;

    const-string p1, "google.afma.activeView.handleUpdate"

    iput-object p1, p0, Lr4/qa0;->c:Ljava/lang/String;

    iput-object p3, p0, Lr4/qa0;->b:Lr4/w90;

    iput-object p4, p0, Lr4/qa0;->a:Lr4/v90;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lr4/h83;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)",
            "Lr4/h83<",
            "TO;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lr4/qa0;->b(Ljava/lang/Object;)Lr4/h83;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/Object;)Lr4/h83;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)",
            "Lr4/h83<",
            "TO;>;"
        }
    .end annotation

    iget-object v0, p0, Lr4/qa0;->d:Lr4/h83;

    new-instance v1, Lr4/oa0;

    invoke-direct {v1, p0, p1}, Lr4/oa0;-><init>(Lr4/qa0;Ljava/lang/Object;)V

    sget-object p1, Lr4/qm0;->f:Lr4/i83;

    invoke-static {v0, v1, p1}, Lr4/y73;->i(Lr4/h83;Lr4/e73;Ljava/util/concurrent/Executor;)Lr4/h83;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic c(Ljava/lang/Object;Lr4/q90;)Lr4/h83;
    .locals 4

    new-instance v0, Lr4/vm0;

    invoke-direct {v0}, Lr4/vm0;-><init>()V

    invoke-static {}, Lz2/t;->d()Lb3/k2;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lr4/t50;->o:Lr4/j60;

    new-instance v3, Lr4/pa0;

    invoke-direct {v3, p0, v0}, Lr4/pa0;-><init>(Lr4/qa0;Lr4/vm0;)V

    invoke-virtual {v2, v1, v3}, Lr4/j60;->b(Ljava/lang/String;Lr4/i60;)V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "id"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    check-cast p1, Lorg/json/JSONObject;

    const-string v1, "args"

    invoke-virtual {v2, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p0, Lr4/qa0;->c:Ljava/lang/String;

    invoke-interface {p2, p1, v2}, Lr4/s80;->K0(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-object v0
.end method
