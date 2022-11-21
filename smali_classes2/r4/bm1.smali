.class public final synthetic Lr4/bm1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/p03;


# instance fields
.field public final a:Lr4/hm1;

.field public final b:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lr4/hm1;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/bm1;->a:Lr4/hm1;

    iput-object p2, p0, Lr4/bm1;->b:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lr4/bm1;->a:Lr4/hm1;

    iget-object v1, p0, Lr4/bm1;->b:Lorg/json/JSONObject;

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, v1, p1}, Lr4/hm1;->g(Lorg/json/JSONObject;Ljava/util/List;)Lr4/w10;

    move-result-object p1

    return-object p1
.end method
