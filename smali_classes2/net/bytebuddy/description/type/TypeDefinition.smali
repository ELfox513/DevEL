.class public interface abstract Lnet/bytebuddy/description/type/TypeDefinition;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/description/NamedElement;
.implements Lnet/bytebuddy/description/ModifierReviewable$ForTypeDefinition;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/description/type/TypeDefinition$SuperClassIterator;,
        Lnet/bytebuddy/description/type/TypeDefinition$Sort;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/bytebuddy/description/NamedElement;",
        "Lnet/bytebuddy/description/ModifierReviewable$ForTypeDefinition;",
        "Ljava/lang/Iterable<",
        "Lnet/bytebuddy/description/type/TypeDefinition;",
        ">;"
    }
.end annotation


# static fields
.field public static final RAW_TYPES_PROPERTY:Ljava/lang/String; = "net.bytebuddy.raw"


# virtual methods
.method public abstract asErasure()Lnet/bytebuddy/description/type/TypeDescription;
.end method

.method public abstract asGenericType()Lnet/bytebuddy/description/type/TypeDescription$Generic;
.end method

.method public abstract getComponentType()Lnet/bytebuddy/description/type/TypeDefinition;
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation
.end method

.method public abstract getDeclaredFields()Lnet/bytebuddy/description/field/FieldList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/bytebuddy/description/field/FieldList<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract getDeclaredMethods()Lnet/bytebuddy/description/method/MethodList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/bytebuddy/description/method/MethodList<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract getInterfaces()Lnet/bytebuddy/description/type/TypeList$Generic;
.end method

.method public abstract getRecordComponents()Lnet/bytebuddy/description/type/RecordComponentList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/bytebuddy/description/type/RecordComponentList<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract getSort()Lnet/bytebuddy/description/type/TypeDefinition$Sort;
.end method

.method public abstract getStackSize()Lnet/bytebuddy/implementation/bytecode/StackSize;
.end method

.method public abstract getSuperClass()Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation
.end method

.method public abstract getTypeName()Ljava/lang/String;
.end method

.method public abstract isArray()Z
.end method

.method public abstract isPrimitive()Z
.end method

.method public abstract isRecord()Z
.end method

.method public abstract represents(Ljava/lang/reflect/Type;)Z
.end method
