.class public final Lr4/pa0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/i60;


# instance fields
.field public final a:Lr4/vm0;

.field public final synthetic b:Lr4/qa0;


# direct methods
.method public constructor <init>(Lr4/qa0;Lr4/vm0;)V
    .locals 0

    iput-object p1, p0, Lr4/pa0;->b:Lr4/qa0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lr4/pa0;->a:Lr4/vm0;

    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lr4/pa0;->a:Lr4/vm0;

    invoke-virtual {v0, p1}, Lr4/vm0;->e(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object v0, p0, Lr4/pa0;->a:Lr4/vm0;

    invoke-virtual {v0, p1}, Lr4/vm0;->f(Ljava/lang/Throwable;)Z

    :catch_1
    return-void
.end method

.method public final u(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lr4/pa0;->a:Lr4/vm0;

    new-instance v0, Lr4/s90;

    invoke-direct {v0}, Lr4/s90;-><init>()V

    invoke-virtual {p1, v0}, Lr4/vm0;->f(Ljava/lang/Throwable;)Z

    return-void

    :cond_0
    iget-object v0, p0, Lr4/pa0;->a:Lr4/vm0;

    new-instance v1, Lr4/s90;

    invoke-direct {v1, p1}, Lr4/s90;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lr4/vm0;->f(Ljava/lang/Throwable;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
