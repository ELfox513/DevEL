.class public final synthetic Ly4/q1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Ly4/r1;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lorg/json/JSONObject;


# direct methods
.method public synthetic constructor <init>(Ly4/r1;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly4/q1;->a:Ly4/r1;

    iput-object p2, p0, Ly4/q1;->b:Ljava/lang/String;

    iput-object p3, p0, Ly4/q1;->c:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Ly4/q1;->a:Ly4/r1;

    iget-object v1, p0, Ly4/q1;->b:Ljava/lang/String;

    iget-object v2, p0, Ly4/q1;->c:Lorg/json/JSONObject;

    invoke-interface {v0, v1, v2}, Ly4/r1;->a(Ljava/lang/String;Lorg/json/JSONObject;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
