.class public final Lr4/wx0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lr4/zx0;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lr4/yx0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lr4/zx0;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lr4/yx0;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/wx0;->a:Ljava/util/Map;

    iput-object p2, p0, Lr4/wx0;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(Lr4/bp2;)V
    .locals 6

    iget-object p1, p1, Lr4/bp2;->b:Lr4/ap2;

    iget-object p1, p1, Lr4/ap2;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr4/zo2;

    iget-object v1, p0, Lr4/wx0;->a:Ljava/util/Map;

    iget-object v2, v0, Lr4/zo2;->a:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lr4/wx0;->a:Ljava/util/Map;

    iget-object v2, v0, Lr4/zo2;->a:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr4/zx0;

    iget-object v0, v0, Lr4/zo2;->b:Lorg/json/JSONObject;

    invoke-interface {v1, v0}, Lr4/zx0;->a(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lr4/wx0;->b:Ljava/util/Map;

    iget-object v2, v0, Lr4/zo2;->a:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lr4/wx0;->b:Ljava/util/Map;

    iget-object v2, v0, Lr4/zo2;->a:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr4/yx0;

    iget-object v0, v0, Lr4/zo2;->b:Lorg/json/JSONObject;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    invoke-interface {v1, v2}, Lr4/yx0;->a(Ljava/util/Map;)V

    goto :goto_0

    :cond_4
    return-void
.end method
