.class public final Lr4/mw2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lorg/json/JSONObject;

.field public final b:Lr4/vw2;


# direct methods
.method public constructor <init>(Lr4/vw2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/mw2;->b:Lr4/vw2;

    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;Ljava/util/HashSet;J)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    iget-object v0, p0, Lr4/mw2;->b:Lr4/vw2;

    new-instance v8, Lr4/zw2;

    const/4 v7, 0x0

    move-object v1, v8

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v7}, Lr4/zw2;-><init>(Lr4/mw2;Ljava/util/HashSet;Lorg/json/JSONObject;J[B)V

    invoke-virtual {v0, v8}, Lr4/vw2;->a(Lr4/uw2;)V

    return-void
.end method

.method public final b(Lorg/json/JSONObject;Ljava/util/HashSet;J)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    iget-object v0, p0, Lr4/mw2;->b:Lr4/vw2;

    new-instance v8, Lr4/xw2;

    const/4 v7, 0x0

    move-object v1, v8

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v7}, Lr4/xw2;-><init>(Lr4/mw2;Ljava/util/HashSet;Lorg/json/JSONObject;J[B)V

    invoke-virtual {v0, v8}, Lr4/vw2;->a(Lr4/uw2;)V

    return-void
.end method

.method public final c()V
    .locals 3

    iget-object v0, p0, Lr4/mw2;->b:Lr4/vw2;

    new-instance v1, Lr4/ww2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lr4/ww2;-><init>(Lr4/mw2;[B)V

    invoke-virtual {v0, v1}, Lr4/vw2;->a(Lr4/uw2;)V

    return-void
.end method

.method public final d()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lr4/mw2;->a:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final e(Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lr4/mw2;->a:Lorg/json/JSONObject;

    return-void
.end method
