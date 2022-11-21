.class public final Lr4/ia0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/t90;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lr4/t90<",
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

.field public final c:Lr4/p90;

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lr4/p90;Ljava/lang/String;Lr4/w90;Lr4/v90;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/p90;",
            "Ljava/lang/String;",
            "Lr4/w90<",
            "TI;>;",
            "Lr4/v90<",
            "TO;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/ia0;->c:Lr4/p90;

    iput-object p2, p0, Lr4/ia0;->d:Ljava/lang/String;

    iput-object p3, p0, Lr4/ia0;->b:Lr4/w90;

    iput-object p4, p0, Lr4/ia0;->a:Lr4/v90;

    return-void
.end method

.method public static synthetic c(Lr4/ia0;)Lr4/v90;
    .locals 0

    iget-object p0, p0, Lr4/ia0;->a:Lr4/v90;

    return-object p0
.end method

.method public static synthetic d(Lr4/ia0;Lr4/j90;Lr4/q90;Ljava/lang/Object;Lr4/vm0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/j90;",
            "Lr4/q90;",
            "TI;",
            "Lr4/vm0<",
            "TO;>;)V"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lz2/t;->d()Lb3/k2;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lr4/t50;->o:Lr4/j60;

    new-instance v2, Lr4/ha0;

    invoke-direct {v2, p0, p1, p4}, Lr4/ha0;-><init>(Lr4/ia0;Lr4/j90;Lr4/vm0;)V

    invoke-virtual {v1, v0, v2}, Lr4/j60;->b(Ljava/lang/String;Lr4/i60;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "id"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "args"

    iget-object v2, p0, Lr4/ia0;->b:Lr4/w90;

    invoke-interface {v2, p3}, Lr4/w90;->b(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p3

    invoke-virtual {v1, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p0, p0, Lr4/ia0;->d:Ljava/lang/String;

    invoke-interface {p2, p0, v1}, Lr4/s80;->K0(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    :try_start_1
    invoke-virtual {p4, p0}, Lr4/vm0;->f(Ljava/lang/Throwable;)Z

    const-string p2, "Unable to invokeJavascript"

    invoke-static {p2, p0}, Lr4/cm0;->d(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p1}, Lr4/j90;->g()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Lr4/j90;->g()V

    throw p0
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

    invoke-virtual {p0, p1}, Lr4/ia0;->b(Ljava/lang/Object;)Lr4/h83;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/Object;)Lr4/h83;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)",
            "Lr4/h83<",
            "TO;>;"
        }
    .end annotation

    new-instance v0, Lr4/vm0;

    invoke-direct {v0}, Lr4/vm0;-><init>()V

    iget-object v1, p0, Lr4/ia0;->c:Lr4/p90;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lr4/p90;->g(Lr4/u;)Lr4/j90;

    move-result-object v1

    new-instance v2, Lr4/fa0;

    invoke-direct {v2, p0, v1, p1, v0}, Lr4/fa0;-><init>(Lr4/ia0;Lr4/j90;Ljava/lang/Object;Lr4/vm0;)V

    new-instance p1, Lr4/ga0;

    invoke-direct {p1, p0, v0, v1}, Lr4/ga0;-><init>(Lr4/ia0;Lr4/vm0;Lr4/j90;)V

    invoke-virtual {v1, v2, p1}, Lr4/cn0;->b(Lr4/zm0;Lr4/xm0;)V

    return-object v0
.end method
