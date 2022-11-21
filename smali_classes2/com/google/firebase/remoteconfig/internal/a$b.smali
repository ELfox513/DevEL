.class public Lcom/google/firebase/remoteconfig/internal/a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/remoteconfig/internal/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Lorg/json/JSONObject;

.field public b:Ljava/util/Date;

.field public c:Lorg/json/JSONArray;

.field public d:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/remoteconfig/internal/a$b;->a:Lorg/json/JSONObject;

    invoke-static {}, Lcom/google/firebase/remoteconfig/internal/a;->a()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/remoteconfig/internal/a$b;->b:Ljava/util/Date;

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/remoteconfig/internal/a$b;->c:Lorg/json/JSONArray;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/remoteconfig/internal/a$b;->d:Lorg/json/JSONObject;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/firebase/remoteconfig/internal/a$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/remoteconfig/internal/a$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/firebase/remoteconfig/internal/a;
    .locals 7

    new-instance v6, Lcom/google/firebase/remoteconfig/internal/a;

    iget-object v1, p0, Lcom/google/firebase/remoteconfig/internal/a$b;->a:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/google/firebase/remoteconfig/internal/a$b;->b:Ljava/util/Date;

    iget-object v3, p0, Lcom/google/firebase/remoteconfig/internal/a$b;->c:Lorg/json/JSONArray;

    iget-object v4, p0, Lcom/google/firebase/remoteconfig/internal/a$b;->d:Lorg/json/JSONObject;

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/remoteconfig/internal/a;-><init>(Lorg/json/JSONObject;Ljava/util/Date;Lorg/json/JSONArray;Lorg/json/JSONObject;Lcom/google/firebase/remoteconfig/internal/a$a;)V

    return-object v6
.end method

.method public b(Lorg/json/JSONObject;)Lcom/google/firebase/remoteconfig/internal/a$b;
    .locals 1

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/firebase/remoteconfig/internal/a$b;->a:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p0
.end method

.method public c(Lorg/json/JSONArray;)Lcom/google/firebase/remoteconfig/internal/a$b;
    .locals 1

    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/firebase/remoteconfig/internal/a$b;->c:Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p0
.end method

.method public d(Ljava/util/Date;)Lcom/google/firebase/remoteconfig/internal/a$b;
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/remoteconfig/internal/a$b;->b:Ljava/util/Date;

    return-object p0
.end method

.method public e(Lorg/json/JSONObject;)Lcom/google/firebase/remoteconfig/internal/a$b;
    .locals 1

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/firebase/remoteconfig/internal/a$b;->d:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p0
.end method
