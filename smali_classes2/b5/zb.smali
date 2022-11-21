.class public final Lb5/zb;
.super Lb5/j;
.source "SourceFile"


# instance fields
.field public final d:Lb5/ad;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lb5/ad;)V
    .locals 2

    const-string p1, "internal.remoteConfig"

    invoke-direct {p0, p1}, Lb5/j;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lb5/zb;->d:Lb5/ad;

    iget-object p1, p0, Lb5/j;->b:Ljava/util/Map;

    new-instance v0, Lb5/ya;

    const-string v1, "getValue"

    invoke-direct {v0, p0, v1, p2}, Lb5/ya;-><init>(Lb5/zb;Ljava/lang/String;Lb5/ad;)V

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lb5/v4;Ljava/util/List;)Lb5/q;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb5/v4;",
            "Ljava/util/List<",
            "Lb5/q;",
            ">;)",
            "Lb5/q;"
        }
    .end annotation

    sget-object p1, Lb5/q;->c:Lb5/q;

    return-object p1
.end method
