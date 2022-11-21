.class public final Lr4/b60;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/u50;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/u50<",
        "Lr4/cs0;",
        ">;"
    }
.end annotation


# static fields
.field public static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lz2/b;

.field public final b:Lr4/zd0;

.field public final c:Lr4/ge0;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    const/4 v0, 0x7

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "resize"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "playVideo"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "storePicture"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "createCalendarEvent"

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const-string v2, "setOrientationProperties"

    const/4 v7, 0x4

    aput-object v2, v1, v7

    const-string v2, "closeResizedAd"

    const/4 v8, 0x5

    aput-object v2, v1, v8

    const-string v2, "unload"

    const/4 v9, 0x6

    aput-object v2, v1, v9

    new-array v2, v0, [Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v9

    invoke-static {v1, v2}, Lc4/g;->e([Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lr4/b60;->d:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lz2/b;Lr4/zd0;Lr4/ge0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/b60;->a:Lz2/b;

    iput-object p2, p0, Lr4/b60;->b:Lr4/zd0;

    iput-object p3, p0, Lr4/b60;->c:Lr4/ge0;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 6

    check-cast p1, Lr4/cs0;

    const-string v0, "a"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lr4/b60;->d:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x6

    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x7

    if-eq v0, v2, :cond_6

    if-eq v0, v4, :cond_5

    iget-object v5, p0, Lr4/b60;->a:Lz2/b;

    invoke-virtual {v5}, Lz2/b;->b()Z

    move-result v5

    if-eqz v5, :cond_4

    if-eq v0, v3, :cond_3

    const/4 v5, 0x3

    if-eq v0, v5, :cond_2

    const/4 v5, 0x4

    if-eq v0, v5, :cond_1

    if-eq v0, v2, :cond_6

    if-eq v0, v1, :cond_0

    if-eq v0, v4, :cond_5

    const-string p1, "Unknown MRAID command called."

    invoke-static {p1}, Lr4/cm0;->e(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p1, p0, Lr4/b60;->b:Lr4/zd0;

    invoke-virtual {p1, v3}, Lr4/zd0;->i(Z)V

    return-void

    :cond_1
    new-instance v0, Lr4/xd0;

    invoke-direct {v0, p1, p2}, Lr4/xd0;-><init>(Lr4/cs0;Ljava/util/Map;)V

    invoke-virtual {v0}, Lr4/xd0;->i()V

    return-void

    :cond_2
    new-instance v0, Lr4/ce0;

    invoke-direct {v0, p1, p2}, Lr4/ce0;-><init>(Lr4/cs0;Ljava/util/Map;)V

    invoke-virtual {v0}, Lr4/ce0;->i()V

    return-void

    :cond_3
    iget-object p1, p0, Lr4/b60;->b:Lr4/zd0;

    invoke-virtual {p1, p2}, Lr4/zd0;->h(Ljava/util/Map;)V

    return-void

    :cond_4
    iget-object p1, p0, Lr4/b60;->a:Lz2/b;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lz2/b;->c(Ljava/lang/String;)V

    return-void

    :cond_5
    iget-object p1, p0, Lr4/b60;->c:Lr4/ge0;

    invoke-interface {p1}, Lr4/ge0;->b()V

    return-void

    :cond_6
    const-string v0, "forceOrientation"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "allowOrientationChange"

    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    :cond_7
    if-nez p1, :cond_8

    const-string p1, "AdWebView is null"

    invoke-static {p1}, Lr4/cm0;->f(Ljava/lang/String;)V

    return-void

    :cond_8
    const-string p2, "portrait"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_9

    const/4 v1, 0x7

    goto :goto_0

    :cond_9
    const-string p2, "landscape"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_a

    goto :goto_0

    :cond_a
    if-eqz v3, :cond_b

    const/4 v1, -0x1

    goto :goto_0

    :cond_b
    invoke-static {}, Lz2/t;->f()Lb3/g;

    move-result-object p2

    invoke-virtual {p2}, Lb3/g;->h()I

    move-result v1

    :goto_0
    invoke-interface {p1, v1}, Lr4/cs0;->w(I)V

    return-void
.end method
