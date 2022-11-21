.class public final Lr4/ha0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/i60;


# instance fields
.field public final a:Lr4/j90;

.field public final b:Lr4/vm0;

.field public final synthetic c:Lr4/ia0;


# direct methods
.method public constructor <init>(Lr4/ia0;Lr4/j90;Lr4/vm0;)V
    .locals 0

    iput-object p1, p0, Lr4/ha0;->c:Lr4/ia0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lr4/ha0;->a:Lr4/j90;

    iput-object p3, p0, Lr4/ha0;->b:Lr4/vm0;

    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lr4/ha0;->b:Lr4/vm0;

    iget-object v1, p0, Lr4/ha0;->c:Lr4/ia0;

    invoke-static {v1}, Lr4/ia0;->c(Lr4/ia0;)Lr4/v90;

    move-result-object v1

    invoke-interface {v1, p1}, Lr4/v90;->a(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lr4/vm0;->e(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lr4/ha0;->a:Lr4/j90;

    :goto_0
    invoke-virtual {p1}, Lr4/j90;->g()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    iget-object v0, p0, Lr4/ha0;->b:Lr4/vm0;

    invoke-virtual {v0, p1}, Lr4/vm0;->f(Ljava/lang/Throwable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p1, p0, Lr4/ha0;->a:Lr4/j90;

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lr4/ha0;->a:Lr4/j90;

    invoke-virtual {v0}, Lr4/j90;->g()V

    throw p1

    :catch_1
    iget-object p1, p0, Lr4/ha0;->a:Lr4/j90;

    goto :goto_0
.end method

.method public final u(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lr4/ha0;->b:Lr4/vm0;

    new-instance v0, Lr4/s90;

    invoke-direct {v0}, Lr4/s90;-><init>()V

    invoke-virtual {p1, v0}, Lr4/vm0;->f(Ljava/lang/Throwable;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lr4/ha0;->b:Lr4/vm0;

    new-instance v1, Lr4/s90;

    invoke-direct {v1, p1}, Lr4/s90;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lr4/vm0;->f(Ljava/lang/Throwable;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object p1, p0, Lr4/ha0;->a:Lr4/j90;

    :goto_1
    invoke-virtual {p1}, Lr4/j90;->g()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lr4/ha0;->a:Lr4/j90;

    invoke-virtual {v0}, Lr4/j90;->g()V

    throw p1

    :catch_0
    iget-object p1, p0, Lr4/ha0;->a:Lr4/j90;

    goto :goto_1
.end method
