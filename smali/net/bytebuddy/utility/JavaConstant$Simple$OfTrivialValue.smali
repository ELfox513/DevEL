.class public Lnet/bytebuddy/utility/JavaConstant$Simple$OfTrivialValue;
.super Lnet/bytebuddy/utility/JavaConstant$Simple;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/utility/JavaConstant$Simple;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OfTrivialValue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Lnet/bytebuddy/utility/JavaConstant$Simple<",
        "TS;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lnet/bytebuddy/description/type/TypeDescription;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/utility/JavaConstant$Simple;-><init>(Ljava/lang/Object;Lnet/bytebuddy/description/type/TypeDescription;)V

    return-void
.end method


# virtual methods
.method public accept(Lnet/bytebuddy/utility/JavaConstant$Visitor;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/bytebuddy/utility/JavaConstant$Visitor<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-interface {p1, p0}, Lnet/bytebuddy/utility/JavaConstant$Visitor;->onValue(Lnet/bytebuddy/utility/JavaConstant$Simple;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toDescription()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/utility/JavaConstant$Simple;->value:Ljava/lang/Object;

    return-object v0
.end method
