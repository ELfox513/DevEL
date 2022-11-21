.class public final synthetic Lr4/o80;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc4/p;


# instance fields
.field public final a:Lr4/u50;


# direct methods
.method public constructor <init>(Lr4/u50;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/o80;->a:Lr4/u50;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lr4/o80;->a:Lr4/u50;

    check-cast p1, Lr4/u50;

    instance-of v1, p1, Lr4/q80;

    if-eqz v1, :cond_0

    check-cast p1, Lr4/q80;

    invoke-static {p1}, Lr4/q80;->b(Lr4/q80;)Lr4/u50;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
