.class public final Lr4/l60;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/u50;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/u50<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lr4/k60;


# direct methods
.method public constructor <init>(Lr4/k60;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/l60;->a:Lr4/k60;

    return-void
.end method

.method public static b(Lr4/cs0;Lr4/k60;)V
    .locals 1

    new-instance v0, Lr4/l60;

    invoke-direct {v0, p1}, Lr4/l60;-><init>(Lr4/k60;)V

    const-string p1, "/reward"

    invoke-interface {p0, p1, v0}, Lr4/cs0;->g0(Ljava/lang/String;Lr4/u50;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string p1, "action"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, "grant"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    :try_start_0
    const-string v0, "amount"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "type"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lr4/rh0;

    invoke-direct {v1, p2, v0}, Lr4/rh0;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v1

    goto :goto_0

    :catch_0
    move-exception p2

    const-string v0, "Unable to parse reward amount."

    invoke-static {v0, p2}, Lr4/cm0;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    iget-object p2, p0, Lr4/l60;->a:Lr4/k60;

    invoke-interface {p2, p1}, Lr4/k60;->L(Lr4/rh0;)V

    return-void

    :cond_1
    const-string p2, "video_start"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p1, p0, Lr4/l60;->a:Lr4/k60;

    invoke-interface {p1}, Lr4/k60;->zza()V

    return-void

    :cond_2
    const-string p2, "video_complete"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lr4/l60;->a:Lr4/k60;

    invoke-interface {p1}, Lr4/k60;->b()V

    :cond_3
    return-void
.end method
