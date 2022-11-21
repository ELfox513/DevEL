.class public final Lr4/o50;
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

    invoke-interface {p1}, Lr4/cs0;->C()Lr4/b20;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lr4/b20;->zza()V

    :cond_0
    return-void
.end method
