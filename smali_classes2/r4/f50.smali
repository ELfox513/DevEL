.class public final synthetic Lr4/f50;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/u50;


# static fields
.field public static final a:Lr4/u50;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lr4/f50;

    invoke-direct {v0}, Lr4/f50;-><init>()V

    sput-object v0, Lr4/f50;->a:Lr4/u50;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 2

    check-cast p1, Lr4/gt0;

    sget-object v0, Lr4/t50;->a:Lr4/u50;

    const-string v0, "u"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-nez p2, :cond_0

    const-string p1, "URL missing from httpTrack GMSG."

    invoke-static {p1}, Lr4/cm0;->f(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Lb3/g1;

    invoke-interface {p1}, Lr4/gt0;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast p1, Lr4/ot0;

    invoke-interface {p1}, Lr4/ot0;->n()Lr4/im0;

    move-result-object p1

    iget-object p1, p1, Lr4/im0;->a:Ljava/lang/String;

    invoke-direct {v0, v1, p1, p2}, Lb3/g1;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lb3/d0;->c()Lr4/h83;

    return-void
.end method
