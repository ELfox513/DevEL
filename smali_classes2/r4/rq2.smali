.class public final Lr4/rq2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/ut2;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lr4/e5;)I
    .locals 0

    iget-object p1, p1, Lr4/e5;->o:Lr4/fz3;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
