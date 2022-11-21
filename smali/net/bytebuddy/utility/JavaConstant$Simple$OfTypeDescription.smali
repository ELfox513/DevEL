.class public Lnet/bytebuddy/utility/JavaConstant$Simple$OfTypeDescription;
.super Lnet/bytebuddy/utility/JavaConstant$Simple;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/utility/JavaConstant$Simple;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OfTypeDescription"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/bytebuddy/utility/JavaConstant$Simple<",
        "Lnet/bytebuddy/description/type/TypeDescription;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lnet/bytebuddy/description/type/TypeDescription;)V
    .locals 1

    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription;->CLASS:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-direct {p0, p1, v0}, Lnet/bytebuddy/utility/JavaConstant$Simple;-><init>(Ljava/lang/Object;Lnet/bytebuddy/description/type/TypeDescription;)V

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

    invoke-interface {p1, p0}, Lnet/bytebuddy/utility/JavaConstant$Visitor;->onType(Lnet/bytebuddy/utility/JavaConstant$Simple;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toDescription()Ljava/lang/Object;
    .locals 2

    sget-object v0, Lnet/bytebuddy/utility/JavaConstant$Simple;->CLASS_DESC:Lnet/bytebuddy/utility/JavaConstant$Simple$Dispatcher$OfClassDesc;

    iget-object v1, p0, Lnet/bytebuddy/utility/JavaConstant$Simple;->value:Ljava/lang/Object;

    check-cast v1, Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v1}, Lnet/bytebuddy/description/NamedElement$WithDescriptor;->getDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/utility/JavaConstant$Simple$Dispatcher$OfClassDesc;->ofDescriptor(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
