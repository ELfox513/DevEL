.class public final Lb5/zf;
.super Lb5/j;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 3

    const-string v0, "internal.platform"

    invoke-direct {p0, v0}, Lb5/j;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lb5/j;->b:Ljava/util/Map;

    new-instance v1, Lb5/yf;

    const-string v2, "getVersion"

    invoke-direct {v1, p0, v2}, Lb5/yf;-><init>(Lb5/zf;Ljava/lang/String;)V

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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
