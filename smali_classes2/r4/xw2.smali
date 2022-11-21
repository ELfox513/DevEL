.class public final Lr4/xw2;
.super Lr4/tw2;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lr4/mw2;Ljava/util/HashSet;Lorg/json/JSONObject;J[B)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/mw2;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/json/JSONObject;",
            "J)V"
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Lr4/tw2;-><init>(Lr4/mw2;Ljava/util/HashSet;Lorg/json/JSONObject;J[B)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lr4/xw2;->c(Ljava/lang/String;)V

    invoke-super {p0, p1}, Lr4/uw2;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lr4/nv2;->a()Lr4/nv2;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lr4/nv2;->e()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr4/cv2;

    iget-object v2, p0, Lr4/tw2;->c:Ljava/util/HashSet;

    invoke-virtual {v1}, Lr4/cv2;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lr4/cv2;->g()Lr4/cw2;

    move-result-object v1

    iget-wide v2, p0, Lr4/tw2;->e:J

    invoke-virtual {v1, p1, v2, v3}, Lr4/cw2;->g(Ljava/lang/String;J)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p1, p0, Lr4/tw2;->d:Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lr4/xw2;->c(Ljava/lang/String;)V

    invoke-super {p0, p1}, Lr4/uw2;->a(Ljava/lang/String;)V

    return-void
.end method
