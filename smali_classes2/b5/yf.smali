.class public final Lb5/yf;
.super Lb5/j;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lb5/zf;Ljava/lang/String;)V
    .locals 0

    const-string p1, "getVersion"

    invoke-direct {p0, p1}, Lb5/j;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Lb5/v4;Ljava/util/List;)Lb5/q;
    .locals 2
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

    new-instance p1, Lb5/i;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-direct {p1, p2}, Lb5/i;-><init>(Ljava/lang/Double;)V

    return-object p1
.end method
