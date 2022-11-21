.class public final Lr4/l50;
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


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 0

    check-cast p1, Lr4/cs0;

    invoke-interface {p1}, Lr4/cs0;->F()Lr4/bo;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Lr4/cs0;->F()Lr4/bo;

    move-result-object p2

    invoke-interface {p2}, Lr4/bo;->zza()V

    :cond_0
    invoke-interface {p1}, Lr4/cs0;->Z()La3/n;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, La3/n;->a()V

    return-void

    :cond_1
    invoke-interface {p1}, Lr4/cs0;->x()La3/n;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, La3/n;->a()V

    return-void

    :cond_2
    const-string p1, "A GMSG tried to close something that wasn\'t an overlay."

    invoke-static {p1}, Lr4/cm0;->f(Ljava/lang/String;)V

    return-void
.end method
