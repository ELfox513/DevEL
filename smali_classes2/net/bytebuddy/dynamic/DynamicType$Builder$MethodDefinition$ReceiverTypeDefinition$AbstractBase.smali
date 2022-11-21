.class public abstract Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition$AbstractBase;
.super Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$AbstractBase;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractBase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$AbstractBase<",
        "TV;>;",
        "Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition<",
        "TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$AbstractBase;-><init>()V

    return-void
.end method


# virtual methods
.method public receiverType(Ljava/lang/reflect/AnnotatedElement;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/AnnotatedElement;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition<",
            "TV;>;"
        }
    .end annotation

    invoke-static {p1}, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->describeAnnotated(Ljava/lang/reflect/AnnotatedElement;)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p1

    invoke-interface {p0, p1}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition;->receiverType(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition;

    move-result-object p1

    return-object p1
.end method
