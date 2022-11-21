.class public final Lr4/x52;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/s12;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/s12<",
        "Lr4/zp2;",
        "Lr4/o32;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lr4/t12<",
            "Lr4/zp2;",
            "Lr4/o32;",
            ">;>;"
        }
    .end annotation
.end field

.field public final b:Lr4/gq1;


# direct methods
.method public constructor <init>(Lr4/gq1;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lr4/x52;->a:Ljava/util/Map;

    iput-object p1, p0, Lr4/x52;->b:Lr4/gq1;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lorg/json/JSONObject;)Lr4/t12;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ")",
            "Lr4/t12<",
            "Lr4/zp2;",
            "Lr4/o32;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lr4/x52;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr4/t12;

    if-nez v0, :cond_0

    iget-object v0, p0, Lr4/x52;->b:Lr4/gq1;

    invoke-virtual {v0, p1, p2}, Lr4/gq1;->b(Ljava/lang/String;Lorg/json/JSONObject;)Lr4/zp2;

    move-result-object p2

    new-instance v0, Lr4/t12;

    new-instance v1, Lr4/o32;

    invoke-direct {v1}, Lr4/o32;-><init>()V

    invoke-direct {v0, p2, v1, p1}, Lr4/t12;-><init>(Ljava/lang/Object;Lr4/u81;Ljava/lang/String;)V

    iget-object p2, p0, Lr4/x52;->a:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
