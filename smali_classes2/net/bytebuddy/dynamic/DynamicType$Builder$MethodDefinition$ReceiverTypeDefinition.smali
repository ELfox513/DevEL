.class public interface abstract Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ReceiverTypeDefinition"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition$AbstractBase;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition<",
        "TU;>;"
    }
.end annotation


# virtual methods
.method public abstract receiverType(Ljava/lang/reflect/AnnotatedElement;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/AnnotatedElement;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition<",
            "TU;>;"
        }
    .end annotation
.end method

.method public abstract receiverType(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition<",
            "TU;>;"
        }
    .end annotation
.end method
